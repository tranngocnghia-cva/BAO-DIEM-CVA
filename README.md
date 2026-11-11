# HỆ THỐNG TRA CỨU ĐIỂM THI & BÀI LÀM HỌC SINH (SERVERLESS)
> **Trường THPT Chu Văn An • TP. Hồ Chí Minh**  
> Cổng thông tin tra cứu kết quả thi và bài làm trực tuyến cho học sinh (Cơ sở An Đông & Phân hiệu Chợ Lớn).  
> Xây dựng trên nền tảng Cloudflare Serverless (Pages + D1 Database + R2 Object Storage) với chi phí vận hành $0.

---

## ✨ Tính Năng Nổi Bật

- ⚡ **Xác thực Thông minh Tự động (Smart Unified Auth)**:
  - **Không cần chuyển tab hay chọn phương thức thủ công**: Giao diện chỉ có 2 ô nhập duy nhất, máy chủ tự động phân tích và nhận diện dữ liệu học sinh nhập:
    - **Ô 1 (MSHS / Email)**: Nhập **5 số MSHS** (chính là 5 số tài khoản email trường, ví dụ: `26040`, `24001`) hoặc địa chỉ email `@ttgdtxcva.edu.vn` đầy đủ. (Vẫn hỗ trợ tương thích ngược số báo danh thi cũ).
    - **Ô 2 (Ngày sinh / Mật khẩu)**: Nhập **Ngày tháng năm sinh** theo bất kỳ định dạng nào (`14/04/2011`, `14042011`, `2011-04-14`) hoặc **Mật khẩu** tài khoản. Có nút bật/tắt mắt xem mật khẩu.
- 📱 **Giao diện Thích ứng Toàn diện (Full Responsive)**:
  - Hoạt động mượt mà trên **mọi tỉ lệ màn hình**: Điện thoại di động (iPhone/Android), máy tính bảng, iPad, chia đôi màn hình (split-screen), laptop và màn hình siêu rộng (ultrawide).
  - Tích hợp **Chế độ Toàn màn hình bài thi PDF (Fullscreen Viewer Modal)** với phím tắt `Escape` và nút mở tab mới/tải PDF độc lập.
- 📊 **Bảng điểm chuẩn Bộ GD&ĐT**:
  - Điểm tổng kết và xếp loại (Xuất sắc, Giỏi, Khá, Đạt).
  - Phân tích chi tiết 3 phần thi: Phần I (Trắc nghiệm nhiều lựa chọn), Phần II (Đúng/Sai), Phần III (Trả lời ngắn).
  - Thống kê mã đề, số câu làm đúng / tổng số câu hỏi.
- 📄 **Trình xem bài thi PDF trực tuyến**:
  - Nhúng trực tiếp file PDF bài quét đã chấm (có hiển thị khoanh đỏ/xanh từng câu).
  - Tên file tải về tự động gắn MSHS 5 số của học sinh (ví dụ: `BaiThi_TOAN_26040.pdf`).
- 🌐 **Thiết kế hỗ trợ đa môn học**: Hệ thống sẵn sàng tự động nhận diện và hiển thị Tab các môn học tiếp theo (Lý, Hóa, Sinh, Tin, Anh, Văn...) khi có dữ liệu.
- 🚀 **Chi phí vận hành $0 (Zero Cost)**: Sử dụng các dịch vụ miễn phí thuộc gói Free Tier của Cloudflare (Pages: không giới hạn băng thông, D1: 5 triệu lượt đọc/ngày, R2: 10GB lưu trữ + $0 phí băng thông tải về).

---

## 🛠️ Cấu Trúc Thư Mục

```text
BAO_DIEM/
├── index.html                   # Giao diện chính Responsive (Tailwind CSS + Vue 3)
├── functions/                   # Cloudflare Pages Functions (Serverless API)
│   └── api/
│       ├── lookup.js            # API POST /api/lookup (Truy vấn Cloudflare D1)
│       └── pdf/
│           └── [...path].js     # API GET /api/pdf/* (Stream file PDF từ R2)
├── tools/
│   ├── local_server.py          # Máy chủ chạy thử offline tại localhost:8787
│   ├── sync_and_upload.py       # Script trích xuất SQLite -> d1_seed.sql & upload R2
│   └── test_suite.py            # Bộ kiểm thử tự động 19 bài test bảo mật và xác thực
├── schema.sql                   # Cấu trúc CSDL SQLite / Cloudflare D1 (có cột mshs 5 số)
├── d1_seed.sql                  # Dữ liệu nạp ban đầu (1.363 học sinh, 1.399 bài thi)
├── wrangler.toml                # File cấu hình Cloudflare Pages, D1 và R2
├── HUONG_DAN_TRIEN_KHAI.md      # Hướng dẫn chi tiết từng bước triển khai
├── package.json                 # Định nghĩa scripts và dependencies
└── .gitignore                   # Loại trừ file PDF lớn để repo luôn nhẹ (< 1MB)
```

---

## 🚀 Hướng Dẫn Sử Dụng Nhanh

### 1. Chạy thử nghiệm ngay trên máy tính (Localhost)
```bash
# Khởi động máy chủ thử nghiệm
python tools/local_server.py

# Chạy bộ kiểm thử tự động
python tools/test_suite.py
```
Mở trình duyệt: `http://localhost:8787`

### 2. Triển khai lên GitHub & Cloudflare
Xem hướng dẫn chi tiết từng bước tại: [HUONG_DAN_TRIEN_KHAI.md](HUONG_DAN_TRIEN_KHAI.md)

---
*Trường THPT Chu Văn An • Cổng Tra Cứu Kết Quả & Bài Thi Trực Tuyến*
