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
import hashlib
import mimetypes
from pathlib import Path
from http.server import HTTPServer, SimpleHTTPRequestHandler
from urllib.parse import urlparse, unquote

BASE_DIR = Path(__file__).resolve().parent.parent
LOCAL_DB_PATH = BASE_DIR / "data" / "database.sqlite"
PORT = 8787

def hash_password(pwd):
    """Băm mật khẩu dạng SHA-256 tương thích với Cloudflare Web Crypto API"""
    if not pwd:
        return ""
    return hashlib.sha256(pwd.encode("utf-8")).hexdigest()

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

def verify_student_password(student, password):
    """
    Xác thực mật khẩu học sinh (Tuyệt đối không dùng mật khẩu chung):
    1. So sánh với password_hash (SHA-256 hoặc plaintext)
    2. So sánh với Ngày sinh ddmmyyyy (vd: 27022009) hoặc dd/mm/yyyy (vd: 27/02/2009)
    3. So sánh với account_id hoặc student_id
    """
    if not password:
        return False
    pwd = str(password).strip()
    
    # 1. So khớp với password_hash
    stored_hash = student.get("password_hash")
    if stored_hash:
        if stored_hash == pwd or stored_hash == hash_password(pwd):
            return True
            
    # 2. So khớp với ngày sinh (8 chữ số liền nhau hoặc DD/MM/YYYY)
    raw_dob = student.get("dob") or ""
    dob_digits = re.sub(r"\D", "", raw_dob)
    if dob_digits and pwd == dob_digits:
        return True
    if raw_dob and pwd == raw_dob:
        return True
        
    # 3. So khớp với account_id hoặc student_id
    acc_id = str(student.get("account_id") or "").strip()
    sid = str(student.get("student_id") or "").strip()
    if acc_id and pwd.lower() == acc_id.lower():
        return True
    if sid and pwd.upper() == sid.upper():
        return True
        
    return False

def query_student_scores(data):
    """
    Truy vấn thông tin học sinh và điểm số các môn:
    - Identifier: MSHS (5 số trong email trường, ví dụ: 26001), Email trường, hoặc SBD thi cũ
    - DOB / Secret: Ngày tháng năm sinh (dd/mm/yyyy hoặc ddmmyyyy)
    """
    if not LOCAL_DB_PATH.exists():
        return {"error": "Chưa có cơ sở dữ liệu. Hãy chạy 'python tools/sync_and_upload.py' trước!"}
        
    conn = sqlite3.connect(LOCAL_DB_PATH)
    conn.row_factory = sqlite3.Row
    cur = conn.cursor()
    
    # Lấy thông tin định danh (identifier/mshs) và ngày sinh (dob/secret)
    raw_identifier = str(data.get("identifier") or data.get("mshs") or data.get("studentId") or data.get("email") or "").strip()
    raw_secret = str(data.get("dob") or data.get("secret") or data.get("password") or "").strip()
    
    if not raw_identifier or not raw_secret:
        conn.close()
        return {"error": "Vui lòng nhập đầy đủ Mã số học sinh và Ngày tháng năm sinh."}
        
    acc_id = raw_identifier.split("@")[0]
    
    # 1. Tìm bản ghi học sinh dựa trên 5 số MSHS, email trường hoặc mã thi cũ
    cur.execute("""
        SELECT id, mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash
        FROM students
        WHERE mshs = ? OR account_id = ? OR UPPER(student_id) = ? 
           OR LOWER(email) = ? OR LOWER(email) = ?
    """, (raw_identifier, acc_id, raw_identifier.upper(), raw_identifier.lower(), f"{acc_id.lower()}@ttgdtxcva.edu.vn"))
    student_row = cur.fetchone()
    
    if not student_row:
        conn.close()
        return {"error": "Không tìm thấy học sinh với thông tin này. Gợi ý: Nhập đúng 5 số mã học sinh (5 số trong email trường của em, ví dụ: 26001)!"}
        
    student_data = dict(student_row)
    
    # 2. Kiểm tra ngày sinh học sinh (hỗ trợ dd/mm/yyyy, ddmmyyyy, yyyy-mm-dd)
    is_valid = False
    
    # a. So khớp Ngày sinh (chuẩn hóa định dạng dd/mm/yyyy)
    norm_secret = normalize_dob(raw_secret)
    if norm_secret and norm_secret == student_data.get("dob"):
        is_valid = True
        
    # b. So khớp Ngày sinh chỉ lấy các chữ số (ddmmyyyy)
    if not is_valid:
        dob_digits = re.sub(r"\D", "", student_data.get("dob") or "")
        secret_digits = re.sub(r"\D", "", raw_secret)
        if dob_digits and secret_digits == dob_digits:
            is_valid = True
            
    # c. So khớp qua hàm xác thực mật khẩu cá nhân (nếu học sinh nhập mật khẩu riêng)
    if not is_valid:
        is_valid = verify_student_password(student_data, raw_secret)
        
    if not is_valid:
        conn.close()
        return {"error": "Ngày tháng năm sinh không khớp với dữ liệu học sinh. Vui lòng kiểm tra lại ngày sinh (ngày/tháng/năm)!"}
        
    exam_sub_id = student_data["student_id"]
    student_data["display_mshs"] = student_data.get("mshs") or student_data["student_id"]
    student_data["exam_sbd"] = student_data["student_id"]
    # Bảo mật: không gửi password_hash về client
    student_data.pop("password_hash", None)
    
    # Lấy điểm tất cả các môn thi
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
    """, (exam_sub_id,))
    
    sub_rows = cur.fetchall()
    conn.close()
    
    scores = []
    for r in sub_rows:
        item = dict(r)
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
                res = query_student_scores(data)
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
