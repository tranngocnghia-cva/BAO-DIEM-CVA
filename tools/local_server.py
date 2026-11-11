#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Máy chủ phát triển cục bộ (Local Server) cho Website Báo Điểm & Xem Bài Làm
Chạy độc lập trên máy Thầy Nghĩa: python tools/local_server.py
Mặc định truy cập tại: http://localhost:8787
"""

import os
import re
import json
import sqlite3
import mimetypes
from pathlib import Path
from http.server import HTTPServer, SimpleHTTPRequestHandler
from urllib.parse import urlparse, unquote

BASE_DIR = Path(__file__).resolve().parent.parent
LOCAL_DB_PATH = BASE_DIR / "data" / "database.sqlite"
PORT = 8787

def normalize_dob(dob_str):
    """Chuẩn hóa ngày sinh từ mọi định dạng thông dụng về DD/MM/YYYY"""
    if not dob_str:
        return ""
    dob_str = str(dob_str).strip()
    
    # Dạng YYYY-MM-DD
    m_iso = re.match(r"^(\d{4})[-/](\d{1,2})[-/](\d{1,2})$", dob_str)
    if m_iso:
        y, m, d = m_iso.groups()
        return f"{int(d):02d}/{int(m):02d}/{y}"
    
    # Dạng D/M/YYYY hoặc DD/MM/YYYY
    m_vn = re.match(r"^(\d{1,2})[-/.](\d{1,2})[-/.](\d{4})$", dob_str)
    if m_vn:
        d, m, y = m_vn.groups()
        return f"{int(d):02d}/{int(m):02d}/{y}"
        
    # Dạng ddmmyyyy (8 số liền nhau)
    m_raw = re.match(r"^(\d{2})(\d{2})(\d{4})$", dob_str)
    if m_raw:
        d, m, y = m_raw.groups()
        return f"{d}/{m}/{y}"
        
    return dob_str

def query_student_scores(student_id, dob):
    """Truy vấn thông tin học sinh và toàn bộ điểm số các môn"""
    if not LOCAL_DB_PATH.exists():
        return {"error": "Chưa có cơ sở dữ liệu. Hãy chạy 'python tools/sync_and_upload.py' trước!"}
        
    student_id = student_id.strip().upper()
    norm_dob = normalize_dob(dob)
    
    conn = sqlite3.connect(LOCAL_DB_PATH)
    conn.row_factory = sqlite3.Row
    cur = conn.cursor()
    
    # 1. Tìm học sinh
    cur.execute("""
        SELECT student_id, full_name, class_name, gender, dob, campus
        FROM students
        WHERE UPPER(student_id) = ? AND dob = ?
    """, (student_id, norm_dob))
    student_row = cur.fetchone()
    
    if not student_row:
        # Kiểm tra xem mã học sinh có đúng không để gợi ý
        cur.execute("SELECT student_id FROM students WHERE UPPER(student_id) = ?", (student_id,))
        if cur.fetchone():
            conn.close()
            return {"error": "Mã số học sinh đúng nhưng Ngày sinh không khớp. Vui lòng kiểm tra lại ngày sinh (ngày/tháng/năm)!"}
        conn.close()
        return {"error": "Không tìm thấy học sinh với Mã số này. Vui lòng kiểm tra lại!"}
        
    student_data = dict(student_row)
    
    # 2. Lấy điểm tất cả các môn thi
    cur.execute("""
        SELECT sub.id, sub.exam_id, sub.subject_id, sub.exam_code,
               sub.total_score, sub.part1_score, sub.part2_score, sub.part3_score,
               sub.correct_count, sub.total_questions, sub.pdf_key, sub.status, sub.review_reason,
               e.title as exam_title, e.code as exam_code_name,
               subj.code as subject_code, subj.name as subject_name
        FROM submissions sub
        JOIN exams e ON sub.exam_id = e.id
        JOIN subjects subj ON sub.subject_id = subj.id
        WHERE UPPER(sub.student_id) = ?
        ORDER BY subj.sort_order, e.id
    """, (student_id,))
    
    sub_rows = cur.fetchall()
    conn.close()
    
    scores = []
    for r in sub_rows:
        item = dict(r)
        # Tạo URL xem file PDF nếu có file
        if item.get("pdf_key"):
            item["pdf_url"] = f"/api/pdf/{item['pdf_key']}"
        else:
            item["pdf_url"] = None
        scores.append(item)
        
    return {
        "success": True,
        "student": student_data,
        "scores": scores
    }

class BaoDiemRequestHandler(SimpleHTTPRequestHandler):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, directory=str(BASE_DIR), **kwargs)

    def do_POST(self):
        parsed = urlparse(self.path)
        if parsed.path == "/api/lookup":
            content_length = int(self.headers.get("Content-Length", 0))
            body = self.rfile.read(content_length).decode("utf-8")
            try:
                data = json.loads(body)
                student_id = data.get("studentId", "")
                dob = data.get("dob", "")
                res = query_student_scores(student_id, dob)
            except Exception as e:
                res = {"error": f"Lỗi xử lý yêu cầu: {str(e)}"}
                
            self.send_response(200 if "success" in res else 400)
            self.send_header("Content-Type", "application/json; charset=utf-8")
            self.send_header("Access-Control-Allow-Origin", "*")
            self.end_headers()
            self.wfile.write(json.dumps(res, ensure_ascii=False).encode("utf-8"))
            return
            
        self.send_error(404, "Endpoint not found")

    def do_GET(self):
        parsed = urlparse(self.path)
        path = unquote(parsed.path)
        
        # API xem/tải PDF: /api/pdf/<path>
        if path.startswith("/api/pdf/"):
            rel_pdf_path = path[len("/api/pdf/"):].lstrip("/")
            file_path = (BASE_DIR / rel_pdf_path).resolve()
            
            # Bảo mật chống Directory Traversal
            try:
                file_path.relative_to(BASE_DIR)
            except ValueError:
                self.send_error(403, "Forbidden")
                return
                
            if not file_path.exists() or not file_path.is_file():
                self.send_error(404, "File Not Found")
                return
                
            file_size = file_path.stat().st_size
            self.send_response(200)
            self.send_header("Content-Type", "application/pdf")
            self.send_header("Content-Length", str(file_size))
            self.send_header("Content-Disposition", f"inline; filename=\"{file_path.name}\"")
            self.send_header("Cache-Control", "public, max-age=86400")
            self.send_header("Access-Control-Allow-Origin", "*")
            self.end_headers()
            
            with open(file_path, "rb") as f:
                # Ghi theo từng chunk 64KB
                while chunk := f.read(65536):
                    self.wfile.write(chunk)
            return

        # Nếu truy cập trang chủ / thì trả về index.html
        if path == "/":
            self.path = "/index.html"
            
        return super().do_GET()

def run_server():
    server_address = ("", PORT)
    httpd = HTTPServer(server_address, BaoDiemRequestHandler)
    print("\n" + "="*60)
    print("   HỆ THỐNG TRA CỨU ĐIỂM & BÀI THI - THẦY NGHĨA")
    print(f"   Máy chủ cục bộ đang chạy tại: http://localhost:{PORT}")
    print("   Nhấn Ctrl+C để dừng máy chủ.")
    print("="*60 + "\n")
    try:
        httpd.serve_forever()
    except KeyboardInterrupt:
        print("\n[*] Đã dừng máy chủ cục bộ.")

if __name__ == "__main__":
    run_server()
