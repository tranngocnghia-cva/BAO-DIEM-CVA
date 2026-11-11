# HƯỚNG DẪN CHI TIẾT TRIỂN KHAI HỆ THỐNG BÁO ĐIỂM SERVERLESS
### TRƯỜNG THPT CHU VĂN AN • HỖ TRỢ ĐA MÔN HỌC & ĐA CƠ SỞ

---

## MỤC LỤC
1. [Chạy Thử Nghiệm Trên Máy Tính Cá Nhân (Localhost)](#1-chay-thu-nghiem-tren-may-tinh-ca-nhan)
2. [Đẩy Mã Nguồn Lên GitHub](#2-day-ma-nguon-len-github)
3. [Thiết Lập Cloudflare Serverless (Pages + D1 + R2)](#3-thiet-lap-cloudflare-serverless)
4. [Hướng Dẫn Mở Rộng Thêm Môn Học Mới](#4-huong-dan-mo-rong-them-mon-hoc-moi)
5. [Tài Khoản Học Sinh Mẫu Để Kiểm Thử](#5-tai-khoan-hoc-sinh-mau-de-kiem-thu)

---

## 1. CHẠY THỬ NGHIỆM TRÊN MÁY TÍNH CÁ NHÂN

Thầy có thể chạy và nghiệm thu ngay trên máy tính mà không cần cấu hình Cloudflare trước:

### Bước 1: Mở Terminal (PowerShell hoặc CMD) tại thư mục dự án
```powershell
cd "d:\Thầy Nghĩa\BAO_DIEM"
```

### Bước 2: Đồng bộ dữ liệu (nếu chưa chạy)
```powershell
python tools/sync_and_upload.py
```
> Lệnh này sẽ tự động đọc 1.341 file PDF và cơ sở dữ liệu `cham_phieu.sqlite` để tạo file SQLite `data/database.sqlite` và file nạp Cloudflare `d1_seed.sql`.

### Bước 3: Khởi động máy chủ cục bộ
```powershell
python tools/local_server.py
```

### Bước 4: Mở trình duyệt web
Truy cập địa chỉ: **[http://localhost:8787](http://localhost:8787)**
- Nhập MSHS: `10000001`, Ngày sinh: `14/04/2011` -> Bấm **Xem Kết Quả & Bài Thi**.
- Thầy sẽ thấy thông tin học sinh Ngô Diệu Ái, điểm Toán và trực tiếp xem file PDF bài làm đã chấm!

---

## 2. ĐẨY MÃ NGUỒN LÊN GITHUB

Toàn bộ 1.341 file PDF (~813 MB) đã được đưa vào `.gitignore` để tránh làm nặng Git repo (vượt hạn mức 1GB của GitHub). Toàn bộ mã nguồn web, API và dữ liệu SQL chỉ nặng khoảng **1 MB**, rất nhẹ và deploy cực nhanh!

### Các bước thực hiện:
```powershell
# 1. Khởi tạo Git repository (nếu chưa có)
git init

# 2. Thêm toàn bộ mã nguồn
git add .

# 3. Tạo commit đầu tiên
git commit -m "Khoi tao he thong bao diem THPT Chu Van An"

# 4. Đổi tên nhánh chính thành main
git branch -M main

# 5. Liên kết tới GitHub Repository của Thầy
# (Thầy tạo 1 repo mới trên https://github.com/new đặt tên ví dụ: bao-diem-cva)
git remote add origin https://github.com/<ten-tai-khoan-cua-thay>/bao-diem-cva.git

# 6. Đẩy mã nguồn lên GitHub
git push -u origin main
```

---

## 3. THIẾT LẬP CLOUDFLARE SERVERLESS (HOÀN TOÀN MIỄN PHÍ)

Hệ thống sử dụng nền tảng Cloudflare Serverless:
- **Cloudflare Pages**: Hosting web tốc độ cao, miễn phí băng thông.
- **Cloudflare D1**: Cơ sở dữ liệu SQLite Serverless (miễn phí 5.000.000 lượt đọc/ngày).
- **Cloudflare R2**: Kho lưu trữ 1.341+ file PDF (miễn phí 10 GB lưu trữ/tháng, $0 phí tải về).

### Bước 3.1: Tạo Cloudflare D1 Database & Nạp Dữ Liệu
Chạy các lệnh sau trong terminal:
```powershell
# Đăng nhập Cloudflare (nếu chưa đăng nhập)
npx wrangler login

# Tạo database D1
npx wrangler d1 create bao_diem_db
```
Sau khi tạo, Cloudflare sẽ in ra thông tin dạng:
```toml
[[d1_databases]]
binding = "DB"
database_name = "bao_diem_db"
database_id = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
```
Thầy sao chép dòng `database_id` này dán vào file [wrangler.toml](file:///d:/Thầy%20Nghĩa/BAO_DIEM/wrangler.toml).

**Nạp dữ liệu 1.363 học sinh và điểm thi lên D1:**
```powershell
npx wrangler d1 execute bao_diem_db --file=d1_seed.sql --remote
```

---

### Bước 3.2: Tạo Cloudflare R2 Bucket & Tải 1.341 File PDF Lên
```powershell
# Tạo R2 Bucket
npx wrangler r2 bucket create bao-diem-pdf
```

**Tải 1.341 file PDF lên R2:**
Có 2 cách rất đơn giản:
1. **Cách 1 (Kéo thả qua giao diện)**: Mở [Cloudflare Dashboard](https://dash.cloudflare.com) -> R2 Storage -> chọn bucket `bao-diem-pdf` -> Kéo thả 2 thư mục `AN-DONG` và `CHO-LON` lên.
2. **Cách 2 (Bằng script tự động)**:
   Tạo R2 API Token trong Dashboard, sau đó chạy:
   ```powershell
   python tools/sync_and_upload.py --upload-r2 --bucket bao-diem-pdf
   ```

---

### Bước 3.3: Kết nối GitHub vào Cloudflare Pages
1. Truy cập [Cloudflare Dashboard](https://dash.cloudflare.com).
2. Vào mục **Workers & Pages** -> chọn **Create application** -> Tab **Pages** -> **Connect to Git**.
3. Chọn Repository `bao-diem-cva` Thầy vừa đẩy lên ở Bước 2.
4. Cấu hình triển khai:
   - **Project name**: `bao-diem` (hoặc tên tùy chọn).
   - **Framework preset**: `None`.
   - **Build command**: Để trống.
   - **Build output directory**: `.` (thư mục gốc).
5. Bấm **Save and Deploy**.
6. **Liên kết D1 và R2 vào Pages**:
   - Sau khi deploy xong, vào mục **Settings** của dự án Pages -> **Functions**.
   - Mục **D1 database bindings**: Bấm **Add binding** -> Đặt tên biến (Variable name) là `DB`, chọn database `bao_diem_db`.
   - Mục **R2 bucket bindings**: Bấm **Add binding** -> Đặt tên biến (Variable name) là `PDF_BUCKET`, chọn bucket `bao-diem-pdf`.
   - Bấm **Save** và tạo 1 lượt Redeploy để áp dụng.

Xong! Hệ thống của Thầy sẽ hoạt động trực tuyến 24/7 tại địa chỉ dạng:
`https://bao-diem.pages.dev` (Thầy cũng có thể gắn tên miền riêng miễn phí như `diemthi.thptchuvanan.edu.vn`).

---

## 4. HƯỚNG DẪN MỞ RỘNG THÊM MÔN HỌC MỚI

Hệ thống được thiết kế theo mô hình quan hệ linh hoạt:
- Khi trường tổ chức thêm môn thi khác (Vật lí, Hóa học, Sinh học, Ngữ văn, Tiếng Anh, Tin học...):
  1. File điểm chỉ cần thêm bản ghi vào bảng `submissions` với mã môn tương ứng (ví dụ: `subject_id = 2` cho Vật lí, `subject_id = 3` cho Hóa học).
  2. File PDF bài thi môn mới được đưa vào R2 theo cấu trúc thư mục (ví dụ: `VAT_LY/10A1/...`).
  3. Giao diện web sẽ **tự động hiển thị thêm Tab môn mới** trên thanh chuyển đổi môn học mà không cần Thầy phải sửa một dòng code giao diện nào!

---

## 5. TÀI KHOẢN HỌC SINH MẪU ĐỂ KIỂM THỬ (FORM TỰ ĐỘNG NHẬN DIỆN)

> **Lưu ý quan trọng**: 
> - Học sinh **không cần chọn phương thức**: Giao diện chỉ có 2 ô nhập, máy chủ tự động nhận diện và đối chiếu.
> - **MSHS chính thức** là **5 chữ số trong Email trường** (ví dụ: `26040`, `24001`). Hệ thống cũng hỗ trợ học sinh gõ email trường đầy đủ hoặc mã thi cũ.
> - **Thông tin xác thực (Ô 2)**: Nhận mọi định dạng ngày sinh (`14/04/2011`, `14042011`) hoặc mật khẩu tài khoản (`cva@123`).

### Bảng tài khoản mẫu kiểm thử:
| Cơ sở | Ô 1: MSHS hoặc Email | Ô 2: Ngày sinh hoặc Mật khẩu | Họ và tên | Lớp | Điểm Toán |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **An Đông** | `26040` *(hoặc `26040@ttgdtxcva.edu.vn`)* | `14/04/2011` *(hoặc `14042011`, `cva@123`)* | NGÔ DIỆU ÁI | 10A1 | 3.35 đ |
| **An Đông** | `24001` *(hoặc `24001@ttgdtxcva.edu.vn`)* | `27/02/2009` *(hoặc `27022009`, `cva@123`)* | MAI HỒNG AN | 12A1 | 7.75 đ |
| **An Đông** | `24469` *(hoặc `24469@ttgdtxcva.edu.vn`)* | `08/10/2008` *(hoặc `08102008`, `cva@123`)* | TO HOÀI ÂN | 12A1 | 6.75 đ |
| **An Đông** | `24002` *(hoặc `24002@ttgdtxcva.edu.vn`)* | `15/12/2009` *(hoặc `15122009`, `cva@123`)* | LÝ GIA BẢO | 12A1 | 6.75 đ |
| **Chợ Lớn** | `A0000160` | `03/04/2007` *(hoặc `03042007`)* | NGUYỄN QUỐC ANH | 12C | 7.75 đ |
| **Chợ Lớn** | `A0000002` | `10/08/2009` *(hoặc `10082009`)* | HUỲNH TUẤN ĐẠT | 10A | 9.25 đ |
