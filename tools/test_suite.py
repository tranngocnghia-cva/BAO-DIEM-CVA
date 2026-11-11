#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Bộ kiểm thử tự động toàn diện cho Hệ thống Báo Điểm & Xem Bài Thi
"""

import sys
import json
import threading
import time
import urllib.request
import urllib.error
from pathlib import Path

BASE_DIR = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(BASE_DIR))

from tools.local_server import BaoDiemRequestHandler, HTTPServer, PORT

def run_tests():
    print("=" * 60)
    print("   BẮT ĐẦU BỘ KIỂM THỬ TỰ ĐỘNG (AUTOMATED TEST SUITE)")
    print("=" * 60)

    # Khởi động server trong một thread riêng
    server_address = ("127.0.0.1", 8788)
    httpd = HTTPServer(server_address, BaoDiemRequestHandler)
    server_thread = threading.Thread(target=httpd.serve_forever, daemon=True)
    server_thread.start()
    time.sleep(0.5)

    base_url = f"http://127.0.0.1:8788"
    passed = 0
    total = 0

    def assert_test(name, condition, details=""):
        nonlocal passed, total
        total += 1
        if condition:
            print(f"  [PASS] {name}")
            passed += 1
        else:
            print(f"  [FAIL] {name} - {details}")

    # TEST 1: Kiểm tra trang chủ GET /
    try:
        with urllib.request.urlopen(f"{base_url}/") as resp:
            content = resp.read().decode("utf-8")
            assert_test("Trang chủ GET / trả về 200 và có Vue app", resp.status == 200 and "id=\"app\"" in content)
    except Exception as e:
        assert_test("Trang chủ GET /", False, str(e))

    # TEST 2: Tra cứu học sinh An Đông hợp lệ (10000001, 14/04/2011)
    try:
        req = urllib.request.Request(
            f"{base_url}/api/lookup",
            data=json.dumps({"studentId": "10000001", "dob": "14/04/2011"}).encode("utf-8"),
            headers={"Content-Type": "application/json"}
        )
        with urllib.request.urlopen(req) as resp:
            data = json.loads(resp.read().decode("utf-8"))
            assert_test(
                "Tra cứu An Đông (10000001)",
                data.get("success") is True and data["student"]["full_name"] == "NGÔ DIỆU ÁI" and len(data["scores"]) > 0,
                f"Data: {data}"
            )
            # Kiểm tra URL PDF
            pdf_url = data["scores"][0]["pdf_url"]
            assert_test("Có đường dẫn PDF hợp lệ", pdf_url and pdf_url.endswith(".pdf"))
    except Exception as e:
        assert_test("Tra cứu An Đông (10000001)", False, str(e))

    # TEST 3: Tra cứu học sinh Chợ Lớn hợp lệ (A0000160, 03/04/2007)
    try:
        req = urllib.request.Request(
            f"{base_url}/api/lookup",
            data=json.dumps({"studentId": "A0000160", "dob": "03/04/2007"}).encode("utf-8"),
            headers={"Content-Type": "application/json"}
        )
        with urllib.request.urlopen(req) as resp:
            data = json.loads(resp.read().decode("utf-8"))
            assert_test(
                "Tra cứu Chợ Lớn (A0000160)",
                data.get("success") is True and data["student"]["full_name"] == "NGUYỄN QUỐC ANH" and data["scores"][0]["total_score"] == 7.75,
                f"Data: {data}"
            )
    except Exception as e:
        assert_test("Tra cứu Chợ Lớn (A0000160)", False, str(e))

    # TEST 4: Tra cứu với các định dạng ngày sinh khác nhau (chuẩn hóa tự động)
    dob_variants = ["3/4/2007", "2007-04-03", "03-04-2007", "03042007"]
    for d_var in dob_variants:
        try:
            req = urllib.request.Request(
                f"{base_url}/api/lookup",
                data=json.dumps({"studentId": "A0000160", "dob": d_var}).encode("utf-8"),
                headers={"Content-Type": "application/json"}
            )
            with urllib.request.urlopen(req) as resp:
                data = json.loads(resp.read().decode("utf-8"))
                assert_test(f"Chuẩn hóa ngày sinh dạng '{d_var}'", data.get("success") is True)
        except Exception as e:
            assert_test(f"Chuẩn hóa ngày sinh dạng '{d_var}'", False, str(e))

    # TEST 5: Đúng mã học sinh nhưng sai ngày sinh -> Phải báo đúng lỗi
    try:
        req = urllib.request.Request(
            f"{base_url}/api/lookup",
            data=json.dumps({"studentId": "10000001", "dob": "01/01/2000"}).encode("utf-8"),
            headers={"Content-Type": "application/json"}
        )
        urllib.request.urlopen(req)
        assert_test("Bắt lỗi sai ngày sinh", False, "Đáng lẽ phải trả về lỗi 400")
    except urllib.error.HTTPError as e:
        err_data = json.loads(e.read().decode("utf-8"))
        assert_test(
            "Bắt lỗi sai ngày sinh",
            e.code == 400 and "Ngày sinh không khớp" in err_data.get("error", ""),
            f"Code: {e.code}, Data: {err_data}"
        )

    # TEST 6: Mã học sinh không tồn tại
    try:
        req = urllib.request.Request(
            f"{base_url}/api/lookup",
            data=json.dumps({"studentId": "99999999", "dob": "01/01/2000"}).encode("utf-8"),
            headers={"Content-Type": "application/json"}
        )
        urllib.request.urlopen(req)
        assert_test("Bắt lỗi mã HS không tồn tại", False, "Đáng lẽ phải trả về lỗi 400")
    except urllib.error.HTTPError as e:
        err_data = json.loads(e.read().decode("utf-8"))
        assert_test(
            "Bắt lỗi mã HS không tồn tại",
            e.code == 400 and "Không tìm thấy học sinh" in err_data.get("error", ""),
            f"Code: {e.code}, Data: {err_data}"
        )

    # TEST 7: Tải file PDF qua endpoint /api/pdf/...
    try:
        sample_pdf_url = f"{base_url}/api/pdf/AN-DONG/10A1/10000001_NGO_DIEU_AI_1017_3.35d.pdf"
        with urllib.request.urlopen(sample_pdf_url) as resp:
            content_type = resp.headers.get("Content-Type", "")
            data_bytes = resp.read()
            assert_test(
                "Tải file PDF hợp lệ",
                resp.status == 200 and content_type == "application/pdf" and data_bytes.startswith(b"%PDF"),
                f"Status: {resp.status}, Content-Type: {content_type}, Header: {data_bytes[:10]}"
            )
    except Exception as e:
        assert_test("Tải file PDF hợp lệ", False, str(e))

    # TEST 8: Bảo mật chống Path Traversal
    try:
        attack_url = f"{base_url}/api/pdf/../../../../Windows/win.ini"
        urllib.request.urlopen(attack_url)
        assert_test("Chặn tấn công Path Traversal", False, "Không được phép đọc file ngoài thư mục")
    except (urllib.error.HTTPError, urllib.error.URLError) as e:
        assert_test("Chặn tấn công Path Traversal", True)

    httpd.shutdown()
    print("=" * 60)
    print(f"   KẾT QUẢ KIỂM THỬ: {passed}/{total} BÀI KIỂM THỬ THÀNH CÔNG")
    print("=" * 60)
    return passed == total

if __name__ == "__main__":
    success = run_tests()
    sys.exit(0 if success else 1)
