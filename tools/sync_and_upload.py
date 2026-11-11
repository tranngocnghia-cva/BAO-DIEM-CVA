#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Công cụ trích xuất dữ liệu điểm, chuẩn hóa và chuẩn bị cho Cloudflare D1 & R2
Tác giả: Antigravity - Thầy Nghĩa
"""

import os
import re
import sys
import json
import sqlite3
import argparse
from pathlib import Path

# Thư mục gốc dự án
BASE_DIR = Path(__file__).resolve().parent.parent
DEFAULT_SOURCE_DB = Path(r"D:\Thầy Nghĩa\app cham diem\data\cham_phieu.sqlite")
LOCAL_DB_PATH = BASE_DIR / "data" / "database.sqlite"
SEED_SQL_PATH = BASE_DIR / "d1_seed.sql"
MANIFEST_PATH = BASE_DIR / "pdf_manifest.json"

def normalize_dob(dob_str):
    """Chuẩn hóa ngày sinh về định dạng DD/MM/YYYY"""
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
        
    return dob_str

def index_local_pdfs():
    """Quét và lập chỉ mục toàn bộ file PDF trong AN-DONG và CHO-LON"""
    pdf_map = {}
    total_size = 0
    
    for campus in ["AN-DONG", "CHO-LON"]:
        campus_dir = BASE_DIR / campus
        if not campus_dir.exists():
            continue
            
        for file_path in campus_dir.rglob("*.pdf"):
            rel_path = file_path.relative_to(BASE_DIR).as_posix()
            sbd = file_path.name.split("_")[0].strip()
            size = file_path.stat().st_size
            total_size += size
            
            # Lưu theo SBD (Nếu 1 học sinh có nhiều file, lưu danh sách hoặc file chính)
            pdf_map[sbd] = {
                "sbd": sbd,
                "campus": campus,
                "relative_path": rel_path,
                "file_name": file_path.name,
                "size_bytes": size
            }
            
    print(f"[*] Đã quét được {len(pdf_map)} file PDF ({total_size / (1024*1024):.2f} MB)")
    return pdf_map

def extract_and_build(source_db_path=DEFAULT_SOURCE_DB):
    """Trích xuất dữ liệu từ cham_phieu.sqlite và sinh file seed SQL + local DB"""
    if not os.path.exists(source_db_path):
        print(f"[!] Không tìm thấy database nguồn: {source_db_path}")
        return False
        
    print(f"[*] Đọc dữ liệu từ: {source_db_path}")
    src_conn = sqlite3.connect(source_db_path)
    src_conn.row_factory = sqlite3.Row
    src_cur = src_conn.cursor()
    
    # Lập chỉ mục PDF
    pdf_map = index_local_pdfs()
    
    # Tạo thư mục data nếu chưa có
    LOCAL_DB_PATH.parent.mkdir(parents=True, exist_ok=True)
    if LOCAL_DB_PATH.exists():
        LOCAL_DB_PATH.unlink()
        
    dest_conn = sqlite3.connect(LOCAL_DB_PATH)
    dest_cur = dest_conn.cursor()
    
    # Đọc schema.sql
    schema_path = BASE_DIR / "schema.sql"
    with open(schema_path, "r", encoding="utf-8") as f:
        schema_sql = f.read()
    dest_cur.executescript(schema_sql)
    
    sql_lines = [
        "-- ====================================================================",
        "-- DỮ LIỆU BAN ĐẦU CHO CLOUDFLARE D1 (SEED DATA)",
        "-- Được tự động tạo từ tools/sync_and_upload.py",
        "-- ====================================================================",
        "",
        "PRAGMA foreign_keys = OFF;",
        "BEGIN TRANSACTION;",
        ""
    ]
    
    # 1. Academic Year
    sql_lines.append("-- 1. Năm học")
    sql_lines.append("INSERT OR REPLACE INTO academic_years (id, code, name, is_active) VALUES (1, '2026-2027', 'Năm học 2026 - 2027', 1);")
    dest_cur.execute("INSERT OR REPLACE INTO academic_years (id, code, name, is_active) VALUES (1, '2026-2027', 'Năm học 2026 - 2027', 1)")
    
    # 2. Subjects (Toán và các môn học mở rộng cho tương lai)
    sql_lines.append("\n-- 2. Danh mục Môn học (Hỗ trợ đa môn)")
    subjects_seed = [
        (1, 'TOAN', 'Toán học', 1),
        (2, 'VAT_LY', 'Vật lí', 2),
        (3, 'HOA_HOC', 'Hóa học', 3),
        (4, 'SINH_HOC', 'Sinh học', 4),
        (5, 'TIN_HOC', 'Tin học', 5),
        (6, 'NGU_VAN', 'Ngữ văn', 6),
        (7, 'TIENG_ANH', 'Tiếng Anh', 7),
        (8, 'LICH_SU', 'Lịch sử', 8),
        (9, 'DIA_LY', 'Địa lí', 9),
        (10, 'GDCD', 'Giáo dục kinh tế & pháp luật', 10)
    ]
    for s_id, s_code, s_name, s_order in subjects_seed:
        sql = f"INSERT OR REPLACE INTO subjects (id, code, name, sort_order) VALUES ({s_id}, '{s_code}', '{s_name}', {s_order});"
        sql_lines.append(sql)
        dest_cur.execute("INSERT OR REPLACE INTO subjects (id, code, name, sort_order) VALUES (?, ?, ?, ?)", (s_id, s_code, s_name, s_order))
        
    # 3. Exams
    sql_lines.append("\n-- 3. Kỳ thi")
    exams_data = src_cur.execute("SELECT id, academic_year_id, code, name, exam_type FROM exams").fetchall()
    if not exams_data:
        exams_data = [
            (1, 1, 'GK1', 'Kiểm tra Giữa kỳ 1 - Cơ sở An Đông', 'GIUA_KY_1'),
            (2, 1, 'GK1_CHOLON', 'Kiểm tra Giữa kỳ 1 - Phân hiệu Chợ Lớn', 'GIUA_KY_1')
        ]
    for ex in exams_data:
        ex_id = ex[0]
        ex_title = ex[3].replace("'", "''")
        ex_code = ex[2]
        sql = f"INSERT OR REPLACE INTO exams (id, academic_year_id, code, title, term) VALUES ({ex_id}, 1, '{ex_code}', '{ex_title}', 'GIUA_KY_1');"
        sql_lines.append(sql)
        dest_cur.execute("INSERT OR REPLACE INTO exams (id, academic_year_id, code, title, term) VALUES (?, 1, ?, ?, 'GIUA_KY_1')", (ex_id, ex_code, ex[3]))

    # 4. Students
    sql_lines.append("\n-- 4. Học sinh")
    students = src_cur.execute("SELECT student_id, full_name, class_name, gender, dob FROM students").fetchall()
    print(f"[*] Đang đồng bộ {len(students)} học sinh...")
    
    for stu in students:
        sbd = stu['student_id'].strip()
        name = stu['full_name'].strip().replace("'", "''")
        cls = stu['class_name'].strip()
        gender = stu['gender'] or ''
        raw_dob = stu['dob']
        norm_dob = normalize_dob(raw_dob)
        
        # Xác định cơ sở dựa trên SBD hoặc lớp hoặc file PDF
        if sbd in pdf_map:
            campus = pdf_map[sbd]['campus']
        elif sbd.startswith('A') or cls in ['10A', '11A', '12C']:
            campus = 'CHO-LON'
        else:
            campus = 'AN-DONG'
            
        sql = f"INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('{sbd}', '{name}', '{cls}', '{gender}', '{norm_dob}', '{campus}');"
        sql_lines.append(sql)
        dest_cur.execute("INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES (?, ?, ?, ?, ?, ?)",
                         (sbd, stu['full_name'].strip(), cls, gender, norm_dob, campus))

    # 5. Submissions (Điểm thi)
    sql_lines.append("\n-- 5. Điểm thi & Bài làm chi tiết")
    submissions = src_cur.execute("""
        SELECT exam_id, subject_id, student_id, exam_code, total_score,
               part1_score, part2_score, part3_score, correct_count, total_questions,
               confidence, status, review_reason
        FROM submissions
    """).fetchall()
    print(f"[*] Đang đồng bộ {len(submissions)} kết quả thi...")
    
    sub_count = 0
    for sub in submissions:
        sbd = sub['student_id'].strip()
        exam_id = sub['exam_id']
        subject_id = sub['subject_id'] or 1
        exam_code = sub['exam_code'] or ''
        status = sub['status'] or 'VALID'
        review_reason = (sub['review_reason'] or '').replace("'", "''")
        
        total_score = sub['total_score'] if sub['total_score'] is not None else -1
        p1 = sub['part1_score'] if sub['part1_score'] is not None else 0
        p2 = sub['part2_score'] if sub['part2_score'] is not None else 0
        p3 = sub['part3_score'] if sub['part3_score'] is not None else 0
        correct_count = sub['correct_count'] if sub['correct_count'] is not None else 0
        total_questions = sub['total_questions'] if sub['total_questions'] is not None else 0
        confidence = sub['confidence'] if sub['confidence'] is not None else 1.0
        
        # Lấy PDF key
        pdf_key = ''
        if sbd in pdf_map:
            pdf_key = pdf_map[sbd]['relative_path']
        
        sql = f"""INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES ({exam_id}, {subject_id}, '{sbd}', '{exam_code}', {total_score}, {p1}, {p2}, {p3}, {correct_count}, {total_questions}, {confidence}, '{pdf_key}', '{status}', '{review_reason}');"""
        sql_lines.append(sql)
        dest_cur.execute("""
            INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
        """, (exam_id, subject_id, sbd, exam_code, total_score, p1, p2, p3, correct_count, total_questions, confidence, pdf_key, status, sub['review_reason'] or ''))
        sub_count += 1
        
    sql_lines.append("\nCOMMIT;")
    
    # Ghi file seed SQL
    with open(SEED_SQL_PATH, "w", encoding="utf-8") as f:
        f.write("\n".join(sql_lines))
        
    # Commit local database
    dest_conn.commit()
    dest_conn.close()
    src_conn.close()
    
    # Ghi manifest file PDF
    manifest_data = {
        "generated_at": str(os.path.getmtime(SEED_SQL_PATH)),
        "total_pdfs": len(pdf_map),
        "files": pdf_map
    }
    with open(MANIFEST_PATH, "w", encoding="utf-8") as f:
        json.dump(manifest_data, f, ensure_ascii=False, indent=2)
        
    print(f"\n[THÀNH CÔNG] Dữ liệu đã được tạo xong:")
    print(f" -> File SQL nạp vào Cloudflare D1: {SEED_SQL_PATH} ({os.path.getsize(SEED_SQL_PATH) / 1024:.1f} KB)")
    print(f" -> SQLite Database cục bộ: {LOCAL_DB_PATH} ({os.path.getsize(LOCAL_DB_PATH) / 1024:.1f} KB)")
    print(f" -> Danh mục File PDF: {MANIFEST_PATH}")
    print(f" -> Tổng số học sinh: {len(students)}")
    print(f" -> Tổng số bài chấm: {sub_count}")
    return True

def upload_r2(bucket_name, account_id=None, access_key=None, secret_key=None):
    """Tải toàn bộ file PDF lên Cloudflare R2 bucket thông qua boto3 S3 API"""
    try:
        import boto3
        from botocore.config import Config
    except ImportError:
        print("[!] Cần cài đặt boto3 để upload lên R2: pip install boto3")
        return False

    account_id = account_id or os.environ.get("CF_ACCOUNT_ID")
    access_key = access_key or os.environ.get("R2_ACCESS_KEY_ID")
    secret_key = secret_key or os.environ.get("R2_SECRET_ACCESS_KEY")
    
    if not (account_id and access_key and secret_key and bucket_name):
        print("[!] Thiếu thông tin xác thực Cloudflare R2:")
        print("    Cần: CF_ACCOUNT_ID, R2_ACCESS_KEY_ID, R2_SECRET_ACCESS_KEY, BUCKET_NAME")
        print("    (Có thể đặt trong biến môi trường hoặc truyền qua tham số)")
        return False
        
    endpoint_url = f"https://{account_id}.r2.cloudflarestorage.com"
    s3 = boto3.client(
        "s3",
        endpoint_url=endpoint_url,
        aws_access_key_id=access_key,
        aws_secret_access_key=secret_key,
        config=Config(signature_version="s3v4")
    )
    
    pdf_map = index_local_pdfs()
    total = len(pdf_map)
    print(f"[*] Bắt đầu tải {total} file PDF lên R2 bucket '{bucket_name}'...")
    
    success = 0
    for idx, (sbd, item) in enumerate(pdf_map.items(), 1):
        rel_path = item["relative_path"]
        abs_path = BASE_DIR / rel_path
        
        try:
            s3.upload_file(
                Filename=str(abs_path),
                Bucket=bucket_name,
                Key=rel_path,
                ExtraArgs={"ContentType": "application/pdf"}
            )
            success += 1
            if idx % 100 == 0 or idx == total:
                print(f"    [{idx}/{total}] Đã tải: {rel_path}")
        except Exception as e:
            print(f"    [X] Lỗi tải {rel_path}: {e}")
            
    print(f"\n[THÀNH CÔNG] Đã tải {success}/{total} file PDF lên Cloudflare R2!")
    return True

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Quản lý và đồng bộ dữ liệu Tra Cứu Điểm")
    parser.add_argument("--sync", action="store_true", default=True, help="Trích xuất dữ liệu SQLite -> d1_seed.sql")
    parser.add_argument("--upload-r2", action="store_true", help="Tải PDF lên Cloudflare R2")
    parser.add_argument("--bucket", type=str, default="bao-diem-pdf", help="Tên R2 Bucket")
    
    args = parser.parse_args()
    
    if args.upload_r2:
        upload_r2(args.bucket)
    else:
        extract_and_build()
