-- ====================================================================
-- CƠ SỞ DỮ LIỆU BÁO ĐIỂM & BÀI THI HỌC SINH (HỖ TRỢ ĐA MÔN HỌC)
-- Tương thích hoàn toàn với SQLite và Cloudflare D1
-- ====================================================================

-- 1. Bảng Năm học
CREATE TABLE IF NOT EXISTS academic_years (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    code TEXT NOT NULL UNIQUE,          -- Ví dụ: 2026-2027
    name TEXT NOT NULL,                 -- Ví dụ: Năm học 2026 - 2027
    is_active INTEGER DEFAULT 1,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- 2. Bảng Môn học (Thiết kế mở rộng cho mọi môn học)
CREATE TABLE IF NOT EXISTS subjects (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    code TEXT NOT NULL UNIQUE,          -- Ví dụ: TOAN, LY, HOA, SINH, VAN, ANH, TIN
    name TEXT NOT NULL,                 -- Ví dụ: Toán học, Vật lí, Hóa học
    sort_order INTEGER DEFAULT 0,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- 3. Bảng Kỳ thi / Đợt kiểm tra
CREATE TABLE IF NOT EXISTS exams (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    academic_year_id INTEGER REFERENCES academic_years(id),
    code TEXT NOT NULL UNIQUE,          -- Ví dụ: GK1_2026, HK1_2026
    title TEXT NOT NULL,                -- Ví dụ: Kiểm tra Giữa học kỳ 1
    term TEXT DEFAULT 'GIUA_KY_1',      -- GIUA_KY_1, CUOI_KY_1, GIUA_KY_2, CUOI_KY_2
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- 4. Bảng Học sinh
CREATE TABLE IF NOT EXISTS students (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    mshs TEXT,                          -- Mã số học sinh chính thức (5 số trong email trường, ví dụ: 26040, 24001)
    student_id TEXT NOT NULL UNIQUE,    -- Số báo danh kỳ thi / Khóa ngoại liên kết bảng điểm bài thi (ví dụ: 10000001)
    full_name TEXT NOT NULL,            -- Họ và tên học sinh
    class_name TEXT NOT NULL,           -- Lớp (ví dụ: 10A1, 12C, 10A)
    gender TEXT,                        -- Nam / Nữ
    dob TEXT NOT NULL,                  -- Ngày sinh dạng DD/MM/YYYY (ví dụ: 14/04/2011)
    campus TEXT DEFAULT 'AN-DONG',      -- AN-DONG hoặc CHO-LON
    email TEXT UNIQUE,                  -- Email trường (ví dụ: 26040@ttgdtxcva.edu.vn)
    account_id TEXT,                    -- 5 số tài khoản Google (ví dụ: 26040)
    password_hash TEXT,                 -- Mật khẩu hoặc mã băm mật khẩu
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Tạo Index để tăng tốc độ tra cứu tức thì theo mshs, student_id, dob, email, account_id
CREATE INDEX IF NOT EXISTS idx_students_mshs ON students(mshs);
CREATE INDEX IF NOT EXISTS idx_students_lookup ON students(mshs, dob);
CREATE INDEX IF NOT EXISTS idx_students_sbd ON students(student_id, dob);
CREATE INDEX IF NOT EXISTS idx_students_email ON students(email);
CREATE INDEX IF NOT EXISTS idx_students_account ON students(account_id);
CREATE INDEX IF NOT EXISTS idx_students_class ON students(class_name);

-- 5. Bảng Điểm thi & Bài làm chi tiết (Liên kết môn học, kỳ thi, học sinh)
CREATE TABLE IF NOT EXISTS submissions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    exam_id INTEGER NOT NULL REFERENCES exams(id),
    subject_id INTEGER NOT NULL REFERENCES subjects(id),
    student_id TEXT NOT NULL REFERENCES students(student_id),
    exam_code TEXT,                     -- Mã đề thi (ví dụ: 1017, 1215)
    total_score REAL NOT NULL,          -- Điểm tổng (ví dụ: 8.25, 10.0)
    part1_score REAL DEFAULT 0,         -- Điểm Phần I (Trắc nghiệm nhiều lựa chọn)
    part2_score REAL DEFAULT 0,         -- Điểm Phần II (Trắc nghiệm Đúng / Sai)
    part3_score REAL DEFAULT 0,         -- Điểm Phần III (Trả lời ngắn)
    correct_count INTEGER DEFAULT 0,    -- Số câu làm đúng
    total_questions INTEGER DEFAULT 0,  -- Tổng số câu hỏi
    confidence REAL DEFAULT 1.0,        -- Độ tin cậy nhận diện OMR
    pdf_key TEXT,                       -- Đường dẫn / Key file PDF bài thi (ví dụ: TOAN/10A1/10000001_NGO_DIEU_AI_1017_3.35d.pdf)
    status TEXT DEFAULT 'VALID',        -- VALID, REVIEW, ABSENT
    review_reason TEXT,                 -- Ghi chú kiểm tra (nếu có)
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(exam_id, subject_id, student_id)
);

CREATE INDEX IF NOT EXISTS idx_submissions_student ON submissions(student_id);
CREATE INDEX IF NOT EXISTS idx_submissions_exam_sub ON submissions(exam_id, subject_id);
