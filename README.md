# HỆ THỐNG TRA CỨU ĐIỂM THI & BÀI LÀM HỌC SINH (SERVERLESS)
> **Trường THPT Chu Văn An • Hỗ trợ Đa môn học & Đa cơ sở**  
> Xây dựng trên nền tảng Cloudflare Serverless (Pages + D1 Database + R2 Object Storage).

---

## ✨ Tính Năng Nổi Bật

- 🔐 **Linh hoạt 2 phương thức xác thực (Dual-Mode)**:
  - **Phương thức 1**: Tra cứu nhanh bằng **Mã số học sinh (MSHS)** và **Ngày tháng năm sinh (DOB)** — tiện lợi cho học sinh và phụ huynh xem điểm nhanh không cần nhớ mật khẩu.
  - **Phương thức 2**: Đăng nhập bằng **Email trường Google Workspace (@ttgdtxcva.edu.vn)** hoặc **Mã tài khoản** (ví dụ: `24001`, `26040`) kèm **Mật khẩu** (mặc định là Ngày sinh ddmmyyyy). Có nút bật/tắt hiển thị mật khẩu.
- 📊 **Bảng điểm chuẩn Bộ GD&ĐT**:
  - Điểm tổng kết và xếp loại (Xuất sắc, Giỏi, Khá, Đạt).
  - Phân tích chi tiết 3 phần thi: Phần I (Trắc nghiệm nhiều lựa chọn), Phần II (Đúng/Sai), Phần III (Trả lời ngắn).
  - Thống kê mã đề, số câu làm đúng / tổng số câu hỏi.
- 📄 **Trình xem bài thi PDF trực tuyến**:
  - Nhúng trực tiếp file PDF bài quét đã chấm (có hiển thị khoanh đỏ/xanh từng câu).
  - Hỗ trợ tải bài thi về máy và in ấn.
  - Tối ưu xem trên cả máy tính, máy tính bảng và điện thoại di động.
- 🌐 **Thiết kế hỗ trợ đa môn học**: Hiện tại là môn Toán, hệ thống sẵn sàng tự động nhận diện và hiển thị Tab các môn học tiếp theo (Lý, Hóa, Sinh, Tin, Anh, Văn...) khi có dữ liệu.
- 🚀 **Chi phí vận hành $0 (Zero Cost)**: Sử dụng các dịch vụ miễn phí thuộc gói Free Tier của Cloudflare (Pages: không giới hạn băng thông, D1: 5 triệu lượt đọc/ngày, R2: 10GB lưu trữ + $0 phí băng thông tải về).

---

## 🛠️ Cấu Trúc Thư Mục

```text
BAO_DIEM/
├── index.html                   # Giao diện chính (Tailwind CSS + Vue 3)
├── functions/                   # Cloudflare Pages Functions (Serverless API)
│   └── api/
│       ├── lookup.js            # API POST /api/lookup (Truy vấn Cloudflare D1)
│       └── pdf/
│           └── [...path].js     # API GET /api/pdf/* (Stream file PDF từ R2)
├── tools/
│   ├── local_server.py          # Máy chủ chạy thử offline tại localhost:8787
│   └── sync_and_upload.py       # Script trích xuất SQLite -> d1_seed.sql & upload R2
├── schema.sql                   # Cấu trúc CSDL SQLite / Cloudflare D1
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
python tools/local_server.py
```
Mở trình duyệt: `http://localhost:8787`

### 2. Triển khai lên GitHub & Cloudflare
Xem hướng dẫn chi tiết từng bước tại: [HUONG_DAN_TRIEN_KHAI.md](HUONG_DAN_TRIEN_KHAI.md)

---
*Phát triển bởi Thầy Nghĩa • 2026*
