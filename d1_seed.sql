-- ====================================================================
-- DỮ LIỆU BAN ĐẦU CHO CLOUDFLARE D1 (SEED DATA)
-- Được tự động tạo từ tools/sync_and_upload.py
-- ====================================================================

PRAGMA foreign_keys = OFF;
BEGIN TRANSACTION;

-- 1. Năm học
INSERT OR REPLACE INTO academic_years (id, code, name, is_active) VALUES (1, '2026-2027', 'Năm học 2026 - 2027', 1);

-- 2. Danh mục Môn học (Hỗ trợ đa môn)
INSERT OR REPLACE INTO subjects (id, code, name, sort_order) VALUES (1, 'TOAN', 'Toán học', 1);
INSERT OR REPLACE INTO subjects (id, code, name, sort_order) VALUES (2, 'VAT_LY', 'Vật lí', 2);
INSERT OR REPLACE INTO subjects (id, code, name, sort_order) VALUES (3, 'HOA_HOC', 'Hóa học', 3);
INSERT OR REPLACE INTO subjects (id, code, name, sort_order) VALUES (4, 'SINH_HOC', 'Sinh học', 4);
INSERT OR REPLACE INTO subjects (id, code, name, sort_order) VALUES (5, 'TIN_HOC', 'Tin học', 5);
INSERT OR REPLACE INTO subjects (id, code, name, sort_order) VALUES (6, 'NGU_VAN', 'Ngữ văn', 6);
INSERT OR REPLACE INTO subjects (id, code, name, sort_order) VALUES (7, 'TIENG_ANH', 'Tiếng Anh', 7);
INSERT OR REPLACE INTO subjects (id, code, name, sort_order) VALUES (8, 'LICH_SU', 'Lịch sử', 8);
INSERT OR REPLACE INTO subjects (id, code, name, sort_order) VALUES (9, 'DIA_LY', 'Địa lí', 9);
INSERT OR REPLACE INTO subjects (id, code, name, sort_order) VALUES (10, 'GDCD', 'Giáo dục kinh tế & pháp luật', 10);

-- 3. Kỳ thi
INSERT OR REPLACE INTO exams (id, academic_year_id, code, title, term) VALUES (1, 1, 'GK1', 'Kiểm tra Giữa kỳ 1', 'GIUA_KY_1');
INSERT OR REPLACE INTO exams (id, academic_year_id, code, title, term) VALUES (2, 1, 'GK1_CHOLON', 'Kiểm tra Giữa kỳ 1 - Phân hiệu Chợ Lớn', 'GIUA_KY_1');

-- 4. Học sinh
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000001', 'MAI HỒNG AN', '12A1', 'Nữ', '27/02/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000002', 'TO HOÀI ÂN', '12A1', 'Nữ', '08/10/2008', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000003', 'LÝ GIA BẢO', '12A1', 'Nam', '15/12/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000004', 'PHAN THIÊN BẢO', '12A1', 'Nam', '17/04/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000005', 'NGUYỄN THỊ NGỌC CHÂU', '12A1', 'Nữ', '19/12/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000006', 'PHẠM HỒ MINH CHÍ', '12A1', 'Nam', '08/09/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000007', 'PHÙNG CAO ANH DŨNG', '12A1', 'Nam', '12/03/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000008', 'PHẠM XUÂN ĐÀO', '12A1', 'Nữ', '22/01/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000009', 'DANH NGUYỄN HOÀN ĐẠT', '12A1', 'Nam', '23/01/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000001', 'NGÔ DIỆU ÁI', '10A1', 'Nữ', '14/04/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000002', 'HUỲNH THẾ THIÊN ÂN', '10A1', 'Nam', '03/04/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000003', 'CÔNG GIA BẢO', '10A1', 'Nam', '07/12/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000004', 'TĂNG GIA BẢO', '10A1', 'Nam', '24/08/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000005', 'NGUYỄN THÀNH DANH', '10A1', 'Nam', '10/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000007', 'NGUYỄN NGỌC HÂN', '10A1', 'Nữ', '06/08/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000008', 'TRẦN GIA HÂN', '10A1', 'Nữ', '11/08/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000006', 'ÐOÀN NGỌC BẢO HÂN', '10A1', 'Nữ', '17/08/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000009', 'PHẠM MAI BẢO HIỀN', '10A1', 'Nam', '13/10/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000010', 'TRỊNH THANH HIỀN', '10A1', 'Nữ', '15/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000011', 'LÊ QUỐC HUY', '10A1', 'Nam', '19/07/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000012', 'PHAN HUỲNH HƯƠNG', '10A1', 'Nữ', '22/08/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000013', 'TRẦN TẤN KHANG', '10A1', 'Nam', '04/06/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000014', 'LÊ ĐĂNG KHOA', '10A1', 'Nam', '03/05/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000015', 'NGUYỄN TRƯƠNG MINH KHOA', '10A1', 'Nam', '30/08/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000016', 'NGUYỄN MINH KHÔI', '10A1', 'Nam', '15/10/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000017', 'DIỆP MỸ KIỆT', '10A1', 'Nam', '24/04/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000018', 'NGUYỄN HÙNG GIA KIỆT', '10A1', 'Nam', '30/12/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000019', 'VÕ NGỌC PHƯƠNG LINH', '10A1', 'Nữ', '10/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000020', 'VŨ HOÀNG LONG', '10A1', 'Nam', '09/01/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000021', 'TRẦN THANH MAI', '10A1', 'Nữ', '10/09/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000022', 'NGUYỄN TRẦN KIM MINH', '10A1', 'Nữ', '31/10/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000023', 'TRẦN GIÁNG MY', '10A1', 'Nữ', '25/01/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000024', 'VÕ NGUYỄN KIỀU MY', '10A1', 'Nữ', '12/02/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000025', 'PHAN NGỌC NGHĨA', '10A1', 'Nam', '04/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000026', 'NGUYỄN THỊ BẢO NGỌC', '10A1', 'Nữ', '05/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000027', 'NGUYỄN HOÀNG KHÔI NGUYÊN', '10A1', 'Nam', '07/10/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000028', 'DƯƠNG THIÊN PHÚ', '10A1', 'Nam', '22/03/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000029', 'NGUYỄN NGỌC HỒNG PHÚC', '10A1', 'Nữ', '20/12/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000030', 'BÙI ĐÀO NGỌC QUÝ', '10A1', 'Nam', '11/08/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000031', 'HUỲNH TIÊU PHƯỚC SANG', '10A1', 'Nam', '01/12/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000032', 'ĐẶNG THÀNH TÀI', '10A1', 'Nam', '12/10/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000033', 'HUỲNH TRÍ TÀI', '10A1', 'Nam', '27/12/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000034', 'CÚN TỬ TÂM', '10A1', 'Nam', '10/05/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000035', 'TRƯƠNG LỆ THANH', '10A1', 'Nữ', '09/03/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000036', 'NGUYỄN HOÀNG THƯ', '10A1', 'Nam', '29/06/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000037', 'ĐÀO NGỌC THÙY TRANG', '10A1', 'Nữ', '20/09/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000038', 'LÊ VĂN TRÍ', '10A1', 'Nam', '29/12/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000039', 'TRẦN QUỐC TRÍ', '10A1', 'Nam', '28/02/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000040', 'LÊ VĂN TUẤN', '10A1', 'Nam', '28/05/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000041', 'LÊ ĐỖ CÁT TƯỜNG', '10A1', 'Nữ', '08/06/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000042', 'PHẠM LÊ VY', '10A1', 'Nữ', '22/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000043', 'TRẦN THANH VY', '10A1', 'Nữ', '29/07/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000044', 'THÁI KIM YẾN', '10A1', 'Nữ', '15/06/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000260', 'LÂM GIA AN', '10A7', 'Nam', '29/10/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000261', 'VĂNG PHAN HỮU AN', '10A7', 'Nam', '04/01/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000262', 'PHẠM QUÁCH BẢO CHÂU', '10A7', 'Nữ', '08/04/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000263', 'NGÔ QUỐC CƯỜNG', '10A7', 'Nam', '02/06/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000264', 'HUỲNH NGỌC DUYÊN', '10A7', 'Nữ', '30/03/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000265', 'NGUYỄN NGỌC BẢO HÂN', '10A7', 'Nữ', '01/07/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000266', 'NGUYỄN GIA HƯNG', '10A7', 'Nam', '12/06/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000267', 'NGUYỄN ĐOÀN MINH KHANG', '10A7', 'Nam', '13/02/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000268', 'NGUYỄN TRỌNG KHANG', '10A7', 'Nam', '26/04/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000269', 'TRƯƠNG VĨNH KHANG', '10A7', 'Nam', '21/12/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000270', 'HUỲNH MINH KHOA', '10A7', 'Nam', '04/09/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000271', 'NGUYỄN TƯỜNG LAM', '10A7', 'Nữ', '08/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000272', 'TRẦN QUỐC LONG', '10A7', 'Nam', '20/09/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000273', 'HUỲNH ANH MINH', '10A7', 'Nam', '07/12/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000274', 'NGUYỄN PHƯƠNG KHÁNH MY', '10A7', 'Nữ', '22/04/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000275', 'BÙI TUYẾT NGÂN', '10A7', 'Nữ', '23/04/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000276', 'NGUYỄN NGỌC PHƯƠNG NGÂN', '10A7', 'Nữ', '24/07/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000277', 'BÁ THỊ ÁNH NGỌC', '10A7', 'Nữ', '04/09/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000278', 'LÂM BẢO NGỌC', '10A7', 'Nữ', '05/09/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000279', 'NGUYỄN ĐOÀN QUỲNH NGỌC', '10A7', 'Nữ', '15/06/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000280', 'NGUYỄN MAI NGUYÊN', '10A7', 'Nữ', '05/08/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000281', 'HUỲNH NGỌC NHƯ', '10A7', 'Nữ', '14/03/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000282', 'ĐÀO TẤN PHÁT', '10A7', 'Nam', '15/12/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000283', 'HUỲNH THANH PHONG', '10A7', 'Nam', '02/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000284', 'NGUYỄN THIÊN PHƯỚC', '10A7', 'Nam', '17/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000285', 'LÝ THỊ BẢO PHƯƠNG', '10A7', 'Nữ', '22/07/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000286', 'TRẦN VƯƠNG QUỐC', '10A7', 'Nam', '02/11/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000287', 'NGUYỄN TẤN SANG', '10A7', 'Nam', '14/12/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000288', 'NGUYỄN NGỌC ĐĂNG THƯ', '10A7', 'Nữ', '06/07/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000289', 'DƯƠNG NGỌC MINH THY', '10A7', 'Nữ', '26/05/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000290', 'LÝ BẢO THY', '10A7', 'Nữ', '24/02/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000291', 'TRẦN BẢO TRÂN', '10A7', 'Nữ', '16/06/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000292', 'LÊ QUANG TRÍ', '10A7', 'Nam', '03/05/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000293', 'DƯƠNG KHẢI TRIỀU', '10A7', 'Nam', '23/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000294', 'DƯƠNG THỊ THANH TRÚC', '10A7', 'Nữ', '10/12/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000295', 'DƯƠNG XUÂN TRÚC', '10A7', 'Nữ', '30/03/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000296', 'ĐẶNG ĐOÀN THỦY TRÚC', '10A7', 'Nữ', '30/10/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000297', 'TRẦN PHẠM THANH TRÚC', '10A7', 'Nữ', '26/10/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000298', 'ĐỖ THỤY THANH VÂN', '10A7', 'Nữ', '20/04/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000299', 'HỒ LÊ TƯỜNG VÂN', '10A7', 'Nữ', '14/04/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000300', 'NGUYỄN THỊ TƯỜNG VY', '10A7', 'Nữ', '20/06/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000301', 'TRẦN YẾN VY', '10A7', 'Nữ', '04/04/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000302', 'MẠC BẢO Ý', '10A7', 'Nữ', '30/08/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000346', 'NGUYỄN VI VI AN', '10A9', 'Nữ', '08/07/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000347', 'NGUYỄN HOÀNG PHƯƠNG ANH', '10A9', 'Nữ', '24/09/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000348', 'TRẦN THỊ QUỲNH ANH', '10A9', 'Nữ', '11/03/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000349', 'VŨ QUỲNH ANH', '10A9', 'Nữ', '12/09/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000350', 'ĐOÀN GIA BẢO', '10A9', 'Nam', '25/08/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000351', 'TẠ QUỐC DUY', '10A9', 'Nam', '19/12/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000352', 'NGUYỄN THÀNH ĐẠT', '10A9', 'Nam', '08/08/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000353', 'TRẦN TIẾN ĐẠT', '10A9', 'Nam', '11/07/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000354', 'TĂNG THANH HIỀN', '10A9', 'Nữ', '18/01/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000355', 'PHẠM HOÀNG HIẾU', '10A9', 'Nam', '21/02/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000356', 'NHAN THỤY XUÂN HỒNG', '10A9', 'Nữ', '28/08/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000357', 'NGUYỄN GIA HUY', '10A9', 'Nam', '09/12/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000358', 'NGUYỄN HOÀNG KHANG', '10A9', 'Nam', '25/12/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000359', 'TRẦN PHÚC KHANG', '10A9', 'Nam', '28/10/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000360', 'NGÔ PHẠM THIÊN KIM', '10A9', 'Nữ', '02/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000361', 'NGUYỄN THIÊN KIM', '10A9', 'Nữ', '30/03/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000362', 'TRƯƠNG NGỌC TRÚC LINH', '10A9', 'Nữ', '17/12/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000363', 'HUỲNH TẤN LỘC', '10A9', 'Nam', '12/01/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000364', 'CHÂU HUỆ MẪN', '10A9', 'Nữ', '22/06/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000365', 'DIỆP QUỐC MINH', '10A9', 'Nam', '22/10/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000366', 'BÙI THỊ KIM NGÂN', '10A9', 'Nữ', '18/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000367', 'NGÔ BẢO NGÂN', '10A9', 'Nữ', '01/07/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000368', 'CHUNG MỸ NGỌC', '10A9', 'Nữ', '09/05/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000369', 'UNG THÙY THANH NGỌC', '10A9', 'Nữ', '30/04/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000370', 'TRẦN ĐĂNG NGUYÊN', '10A9', 'Nam', '22/05/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000371', 'LÊ THÀNH NHÂN', '10A9', 'Nam', '03/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000372', 'HOÀNG YẾN NHI', '10A9', 'Nữ', '29/05/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000373', 'LÊ NGUYỄN NGỌC NHI', '10A9', 'Nữ', '18/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000374', 'NGUYỄN MẠNH PHÁT', '10A9', 'Nam', '14/09/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000375', 'TRẦN TRÌ PHÚ', '10A9', 'Nam', '14/10/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000376', 'LÊ NGUYỄN NHƯ QUỲNH', '10A9', 'Nữ', '12/01/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000377', 'ĐỖ MINH TÂM', '10A9', 'Nam', '02/01/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000378', 'HUỲNH PHƯƠNG THUỲ', '10A9', 'Nữ', '25/08/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000379', 'HUỲNH NGỌC MINH THƯ', '10A9', 'Nữ', '08/07/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000380', 'NGUYỄN HOÀNG THY', '10A9', 'Nữ', '22/06/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000381', 'CAO NGỌC TIÊN', '10A9', 'Nữ', '23/12/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000382', 'HUỲNH THUỶ TIÊN', '10A9', 'Nữ', '23/07/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000383', 'NGUYỄN THANH TIẾN', '10A9', 'Nam', '09/03/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000384', 'VĂN ĐẶNG NGỌC TRÂN', '10A9', 'Nữ', '19/10/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000385', 'TRẦN NGỌC THANH TRÚC', '10A9', 'Nữ', '09/12/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000386', 'TRẦN GIA TUỆ', '10A9', 'Nữ', '25/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000387', 'LÂM DIỄM UYÊN', '10A9', 'Nữ', '17/08/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000388', 'PHÙ ĐÔN VĂN', '10A9', 'Nam', '24/04/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000389', 'NGUYỄN PHI VÂN', '10A9', 'Nữ', '28/10/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000217', 'QUÁCH TUẤN AN', '10A6', 'Nam', '16/08/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000218', 'ĐỖ NHƯ HOÀNG ANH', '10A6', 'Nữ', '03/12/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000219', 'TRẦN TUẤN BẢO', '10A6', 'Nam', '27/12/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000220', 'TỪ KIẾT CHI', '10A6', 'Nữ', '14/05/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000221', 'NGUYỄN LÊ THÀNH CÔNG', '10A6', 'Nam', '05/06/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000222', 'TĂNG NGỌC KHÁNH DƯƠNG', '10A6', 'Nữ', '01/01/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000223', 'HUỲNH DUY ĐỨC', '10A6', 'Nam', '25/01/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000224', 'VÕ NGỌC BẢO HÂN', '10A6', 'Nữ', '27/05/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000225', 'VÒNG GIA HÂN', '10A6', 'Nữ', '21/12/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000226', 'NGUYỄN HOÀI HIỆP', '10A6', 'Nam', '13/04/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000227', 'NGUYỄN TUẤN KIỆT', '10A6', 'Nam', '23/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000228', 'LÊ MAI TRÚC LAM', '10A6', 'Nữ', '01/09/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000229', 'LA TẤN LỘC', '10A6', 'Nam', '24/03/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000230', 'NGUYỄN TRÀ MY', '10A6', 'Nữ', '27/07/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000231', 'LÊ TRẦN KHÁNH NAM', '10A6', 'Nam', '16/08/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000232', 'PHẠM LÊ DY NAM', '10A6', 'Nam', '21/05/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000233', 'TRẦN THỊ BÍCH NGÂN', '10A6', 'Nữ', '03/03/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000234', 'NGUYỄN PHƯƠNG BẢO NGỌC', '10A6', 'Nữ', '18/07/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000235', 'NGUYỄN TRẦN MINH NGỌC', '10A6', 'Nữ', '21/07/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000236', 'HUỲNH THỤC NGUYÊN', '10A6', 'Nữ', '16/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000237', 'NGUYỄN TRẦN KHÔI NGUYÊN', '10A6', 'Nam', '12/05/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000238', 'ĐÀO DUY PHONG', '10A6', 'Nam', '04/04/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000239', 'TRẦN KIẾN PHONG', '10A6', 'Nam', '30/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000240', 'LÊ TRẦN MINH QUÍ', '10A6', 'Nam', '24/06/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000241', 'ĐẶNG LƯƠNG TRIỆU SÁNG', '10A6', 'Nam', '02/05/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000242', 'HỨA BẢO SÂM', '10A6', 'Nữ', '08/03/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000243', 'LÂM HẢI TÂN', '10A6', 'Nam', '05/02/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000244', 'VÕ THANH THẢO', '10A6', 'Nữ', '01/05/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000245', 'LAO NGỌC KHÁNH THI', '10A6', 'Nữ', '28/12/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000246', 'NGUYỄN TUẤN THỊNH', '10A6', 'Nam', '02/06/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000247', 'HUỲNH THANH THƯ', '10A6', 'Nữ', '16/05/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000248', 'TRẦN ANH THƯ', '10A6', 'Nữ', '15/10/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000249', 'PHAN THỊ NGỌC TRÂM', '10A6', 'Nữ', '16/08/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000250', 'PHAN THÁI NGỌC PHƯƠNG TRINH', '10A6', 'Nữ', '18/08/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000251', 'TRỊNH KIỀU TRINH', '10A6', 'Nữ', '17/10/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000252', 'LÊ PHÚ TRỌNG', '10A6', 'Nam', '04/01/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000253', 'PHẠM MẠNH TRƯỜNG', '10A6', 'Nam', '07/03/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000254', 'ĐOÀN GIA TUẤN', '10A6', 'Nam', '23/06/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000255', 'TRẦN HUỲNH TƯỜNG VY', '10A6', 'Nữ', '31/05/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000256', 'DƯƠNG ĐẶNG GIA VỸ', '10A6', 'Nam', '01/07/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000257', 'HỨA NGỌC NHƯ Ý', '10A6', 'Nữ', '01/02/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000258', 'HUỲNH NGỌC YẾN', '10A6', 'Nữ', '12/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000259', 'PHAN NGỌC BẢO YẾN', '10A6', 'Nữ', '30/10/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000045', 'DƯƠNG MỸ ANH', '10A2', 'Nữ', '11/04/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000046', 'HUỲNH THỊ NGỌC ANH', '10A2', 'Nữ', '08/12/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000047', 'LÝ NGỌC ÂN', '10A2', 'Nữ', '27/08/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000048', 'DƯƠNG NHẬT DUY', '10A2', 'Nam', '14/12/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000049', 'TRỊNH GIA HÀO', '10A2', 'Nam', '16/10/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000050', 'HỨA NGUYỄN TUẤN KHANG', '10A2', 'Nam', '02/02/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000051', 'NGÔ TRÍ KHANG', '10A2', 'Nam', '03/02/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000052', 'PHẠM PHÚ KHANG', '10A2', 'Nam', '02/06/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000053', 'TRẦN MINH KHANG', '10A2', 'Nam', '19/04/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000054', 'NGUYỄN HIỀN VÂN KHÁNH', '10A2', 'Nữ', '13/12/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000055', 'TRẦN ANH KHOA', '10A2', 'Nam', '13/08/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000056', 'CÁI CHÍ KIÊN', '10A2', 'Nam', '21/03/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000057', 'NGUYỄN TẤN LONG', '10A2', 'Nam', '08/12/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000058', 'DƯƠNG HỒNG MY', '10A2', 'Nữ', '24/12/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000059', 'TRẦN PHƯƠNG NGÂN', '10A2', 'Nữ', '05/12/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000060', 'LÊ HOÀNG BÍCH NGỌC', '10A2', 'Nữ', '14/04/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000061', 'TRỊNH HOÀNG BẢO NGỌC', '10A2', 'Nữ', '04/05/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000062', 'LÊ MINH NHẬT', '10A2', 'Nam', '18/07/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000063', 'TRẦN KHÁNH THẢO NHI', '10A2', 'Nữ', '13/08/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000064', 'NGUYỄN THỊ AN NHIÊN', '10A2', 'Nữ', '02/06/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000065', 'HUỲNH HOÀNG PHÁT', '10A2', 'Nam', '13/02/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000066', 'DANH HOÀNG NHẬT PHƯƠNG', '10A2', 'Nam', '02/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000067', 'NGUYỄN HỒNG PHƯƠNG', '10A2', 'Nữ', '29/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000068', 'TRẦN THANH PHƯƠNG', '10A2', 'Nam', '29/09/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000069', 'HUỲNH NGUYỄN MINH QUANG', '10A2', 'Nam', '23/01/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000070', 'NGUYỄN TRÍ QUANG', '10A2', 'Nam', '13/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000071', 'LƯ THÁI NGỌC QUỲNH', '10A2', 'Nữ', '23/12/2008', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000072', 'LƯU BỘI SAN', '10A2', 'Nữ', '21/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000073', 'KARIÊM SUHAYLA', '10A2', 'Nữ', '02/09/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000074', 'KHƯU KHANG THÁI', '10A2', 'Nam', '23/10/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000075', 'LÊ THANH THẢO', '10A2', 'Nữ', '25/09/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000076', 'TỪ HỮU THẮNG', '10A2', 'Nam', '09/01/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000077', 'NGUYỄN QUỐC THỊNH', '10A2', 'Nam', '29/10/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000078', 'NGUYỄN ĐỨC THÔNG', '10A2', 'Nam', '03/05/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000079', 'HUỲNH THỤC UYÊN', '10A2', 'Nữ', '09/06/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000080', 'LƯU ĐẠT VINH', '10A2', 'Nam', '09/08/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000081', 'TRẦN HƯƠNG VƯỢNG', '10A2', 'Nam', '01/05/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000082', 'NGÔ THANH VY', '10A2', 'Nữ', '06/02/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000083', 'NGUYỄN THỤY THANH VY', '10A2', 'Nữ', '11/12/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000084', 'TRƯƠNG ƯNG XUÂN', '10A2', 'Nữ', '02/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000085', 'LÂM THANH HẢI YẾN', '10A2', 'Nữ', '01/04/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000086', 'HUỲNH NGUYỄN MINH ANH', '10A3', 'Nữ', '23/09/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000087', 'MAI BÁ THANH BÌNH', '10A3', 'Nam', '16/05/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000088', 'NGUYỄN NGỌC BẢO CHÂU', '10A3', 'Nữ', '24/02/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000089', 'TRẦN NGỌC CHÂU', '10A3', 'Nữ', '19/04/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000090', 'LƯ HOÀNG MINH DUY', '10A3', 'Nam', '31/03/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000091', 'TRẦN KIM DUYÊN', '10A3', 'Nữ', '28/02/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000092', 'TRẦN MINH ĐÊ', '10A3', 'Nam', '23/04/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000093', 'TRẦN NGUYỄN HOÀNG GIA', '10A3', 'Nam', '03/01/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000094', 'ĐỖ LÊ KHÁNH HÀO', '10A3', 'Nam', '28/08/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000095', 'PHẠM NGUYỄN GIA HUY', '10A3', 'Nam', '12/08/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000096', 'PHẠM NGUYỄN QUANG HUY', '10A3', 'Nam', '13/05/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000097', 'TẠ CAO THANH HUY', '10A3', 'Nam', '28/04/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000098', 'NGUYỄN ĐINH QUỐC HỮU', '10A3', 'Nam', '25/05/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000099', 'VĂN NGUYỄN BẢO KHÁNH', '10A3', 'Nam', '03/07/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000100', 'LÊ THANH KHƯƠNG', '10A3', 'Nam', '22/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000101', 'HUỲNH TRUNG KIÊN', '10A3', 'Nam', '15/04/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000102', 'CHÂU PHAN TÀI LỘC', '10A3', 'Nam', '03/06/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000103', 'PHẠM MINH LUÂN', '10A3', 'Nam', '07/04/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000104', 'VƯƠNG GIA LUÂN', '10A3', 'Nam', '29/10/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000105', 'LÊ THỊ MAI', '10A3', 'Nữ', '24/01/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000106', 'TRƯƠNG XUÂN MAI', '10A3', 'Nữ', '27/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000107', 'NGUYỄN DƯƠNG NHẬT MINH', '10A3', 'Nam', '25/07/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000108', 'NGUYỄN HOÀNG MINH', '10A3', 'Nam', '14/10/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000109', 'TRẦN NGUYỄN NGỌC MỸ', '10A3', 'Nữ', '01/03/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000110', 'HUỲNH NGUYỄN THUÝ NGA', '10A3', 'Nữ', '17/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000111', 'PHAN NGUYỄN YẾN NHI', '10A3', 'Nữ', '14/12/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000112', 'VÕ THỊ YẾN NHI', '10A3', 'Nữ', '13/04/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000113', 'LÊ PHƯƠNG NHƯ', '10A3', 'Nữ', '15/12/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000114', 'NGUYỄN PHẠM QUỲNH NHƯ', '10A3', 'Nữ', '26/04/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000115', 'VÕ MINH QUÂN', '10A3', 'Nam', '02/01/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000116', 'CAO MINH QUỐC', '10A3', 'Nam', '05/02/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000117', 'TRẦN HẢI SƠN', '10A3', 'Nam', '04/07/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000118', 'NGÔ HÀ ĐÌNH THÁI', '10A3', 'Nam', '29/12/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000119', 'MAI THỊ HƯƠNG THI', '10A3', 'Nữ', '15/07/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000120', 'LÂM CHÍ THIỆN', '10A3', 'Nam', '17/09/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000121', 'VŨ HOÀNG ĐỨC THỊNH', '10A3', 'Nam', '09/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000122', 'VŨ LỆ TIỀN', '10A3', 'Nữ', '04/06/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000123', 'VÕ PHẠM THANH TRÀ', '10A3', 'Nữ', '30/05/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000124', 'TRẦN VĂN TRÍ', '10A3', 'Nam', '26/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000125', 'NGUYỄN THỊ THANH TRÚC', '10A3', 'Nữ', '11/08/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000126', 'ĐỖ TUẤN TÚ', '10A3', 'Nam', '13/02/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000127', 'TRẦN NGÔ THÁI TUẤN', '10A3', 'Nam', '14/09/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000128', 'HẠ QUỐC VINH', '10A3', 'Nam', '08/05/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000129', 'PHAN HÀ NGỌC VY', '10A3', 'Nữ', '21/12/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000130', 'VÕ HUỲNH GIA VỸ', '10A3', 'Nam', '22/10/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000131', 'NGUYỄN THỊ NGỌC YẾN', '10A3', 'Nữ', '12/03/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000173', 'KIỀU ĐỨC ANH', '10A5', 'Nam', '25/05/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000174', 'PHAN NGUYỄN HOÀI ANH', '10A5', 'Nữ', '19/05/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000175', 'HUỲNH NGUYỄN NGỌC ÂN', '10A5', 'Nữ', '11/12/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000176', 'VÕ QUYỀN CHƯƠNG', '10A5', 'Nam', '14/06/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000177', 'NGUYỄN NGỌC KIM CƯƠNG', '10A5', 'Nữ', '18/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000178', 'CAO DƯƠNG THUỲ DƯƠNG', '10A5', 'Nữ', '23/05/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000179', 'NGUYỄN TẤN ĐẠT', '10A5', 'Nam', '09/02/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000180', 'HUỲNH HẢI ĐĂNG', '10A5', 'Nam', '18/09/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000181', 'NGUYỄN LÊ MINH HẢI', '10A5', 'Nam', '27/04/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000182', 'KIỀU GIA HÂN', '10A5', 'Nữ', '14/06/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000183', 'LÂM BẢO HÂN', '10A5', 'Nữ', '21/05/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000184', 'LA GIA HƯNG', '10A5', 'Nam', '05/01/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000185', 'HUYÊN MINH HY', '10A5', 'Nữ', '14/06/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000186', 'NGUYỄN XUÂN HỶ', '10A5', 'Nữ', '14/05/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000187', 'TRẦM GIA KIỆT', '10A5', 'Nam', '18/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000188', 'TRẦN QUỐC KIỆT', '10A5', 'Nam', '06/08/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000189', 'TRẦN THỊ SAO MAI', '10A5', 'Nữ', '27/05/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000190', 'LÊ HOÀNG MINH', '10A5', 'Nam', '14/01/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000191', 'HUỲNH NGỌC NGÀ', '10A5', 'Nữ', '24/10/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000192', 'CUNG PHAN TÚ NGUYÊN', '10A5', 'Nữ', '08/10/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000193', 'TÔ KHÁNH NGUYÊN', '10A5', 'Nam', '17/03/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000194', 'NGUYỄN THANH NHÃ', '10A5', 'Nữ', '25/07/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000195', 'LÂM ÁI NHI', '10A5', 'Nữ', '30/09/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000196', 'TRẦN NGỌC NHƯ', '10A5', 'Nữ', '17/09/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000197', 'TRẦN NGỌC BẢO NHƯ', '10A5', 'Nữ', '01/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000198', 'NGUYỄN MINH PHONG', '10A5', 'Nam', '17/09/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000199', 'QUÁCH HOÀNG PHONG', '10A5', 'Nam', '30/06/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000200', 'NGUYỄN UYÊN PHƯƠNG', '10A5', 'Nữ', '24/04/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000201', 'TRẦN TRÍ QUỐC', '10A5', 'Nam', '09/02/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000202', 'PHẠM VĂN QUÝ', '10A5', 'Nam', '19/08/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000203', 'LÝ BỘI SAN', '10A5', 'Nữ', '21/09/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000204', 'PHAN THÀNH TÀI', '10A5', 'Nam', '21/02/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000205', 'HOÀNG PHƯƠNG THẢO', '10A5', 'Nữ', '03/12/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000206', 'LÊ THỊ THANH THẢO', '10A5', 'Nữ', '18/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000207', 'TRẦN THANH THẢO', '10A5', 'Nữ', '29/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000208', 'TRẦN HOÀNG THIỆN', '10A5', 'Nam', '11/05/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000209', 'LÃ HUY THỊNH', '10A5', 'Nam', '12/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000210', 'NGUYỄN THỊ NGỌC THƠM', '10A5', 'Nữ', '09/08/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000211', 'CAO NGUYỄN BẢO TRÂN', '10A5', 'Nữ', '29/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000212', 'NGUYỄN ĐỖ MINH TRƯỜNG', '10A5', 'Nam', '01/06/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000213', 'ĐÀM TỊNH VĂN', '10A5', 'Nữ', '15/01/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000214', 'LÊ QUỐC VINH', '10A5', 'Nam', '10/09/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000215', 'TRẦN NHÃ VY', '10A5', 'Nữ', '09/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000216', 'TRỊNH NGỌC VY', '10A5', 'Nữ', '14/12/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000428', 'LƯƠNG NGỌC ANH', '10A10', 'Nữ', '27/12/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000429', 'PHẠM CAO CƯỜNG', '10A10', 'Nam', '03/06/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000430', 'DƯƠNG ĐẠI DŨNG', '10A10', 'Nam', '17/02/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000431', 'NGUYỄN CHÍ DŨNG', '10A10', 'Nam', '30/08/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000432', 'VŨ NGỌC THÚY HẰNG', '10A10', 'Nữ', '07/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000433', 'ĐỖ HOÀNG GIA HÂN', '10A10', 'Nữ', '09/09/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000434', 'TRƯƠNG TRỌNG HIẾU', '10A10', 'Nam', '01/07/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000435', 'MẠCH TIẾN HƯNG', '10A10', 'Nam', '31/05/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000436', 'TRẦN GIA HƯNG', '10A10', 'Nam', '11/03/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000437', 'HÀ ANH KHẢI', '10A10', 'Nam', '05/02/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000438', 'ĐOÀN HUY KHANG', '10A10', 'Nam', '09/10/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000439', 'LÊ NAM KHIÊM', '10A10', 'Nam', '25/09/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000440', 'PHÙ MỸ LINH', '10A10', 'Nữ', '18/03/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000441', 'NGUYỄN HẠ MY', '10A10', 'Nữ', '23/06/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000442', 'LÊ HOÀNG MỸ', '10A10', 'Nữ', '28/05/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000443', 'MAI NHẬT KHÁNH NHI', '10A10', 'Nữ', '20/09/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000444', 'TRỊNH DƯƠNG YẾN NHI', '10A10', 'Nữ', '05/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000445', 'TRỊNH HUỲNH HỮU QUANG', '10A10', 'Nam', '27/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000446', 'TRẦN NGỌC QUẾ', '10A10', 'Nữ', '14/06/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000447', 'PHẠM XUÂN QUỲNH', '10A10', 'Nữ', '30/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000448', 'NGUYỄN VĂN SÁNG', '10A10', 'Nam', '12/05/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000449', 'LÂM TUẤN THÀNH', '10A10', 'Nam', '09/12/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000450', 'TRỊNH KỲ THÀNH', '10A10', 'Nam', '01/06/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000451', 'LƯU THANH THẢO', '10A10', 'Nữ', '23/06/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000452', 'HÀNG NGỌC MINH THƯ', '10A10', 'Nữ', '02/02/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000453', 'TRỊNH NGỌC ANH THƯ', '10A10', 'Nữ', '06/02/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000454', 'PHẠM NGỌC THƯƠNG', '10A10', 'Nữ', '25/12/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000455', 'LÝ TRỌNG TÍN', '10A10', 'Nam', '15/12/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000456', 'HỒ NGỌC HOÀI TRANG', '10A10', 'Nữ', '15/01/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000457', 'NGUYỄN THỊ THÙY TRANG', '10A10', 'Nữ', '21/10/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000458', 'GIANG MỸ TRÂN', '10A10', 'Nữ', '21/07/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000459', 'NGUYỄN TRẦN THANH TRÚC', '10A10', 'Nữ', '21/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000460', 'TRẦN PHAN NGỌC THANH TRÚC', '10A10', 'Nữ', '07/06/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000461', 'TRẦN NGUYỄN TIẾN TRUNG', '10A10', 'Nam', '14/01/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000462', 'CAO NGỌC ÁNH TUYẾT', '10A10', 'Nữ', '31/08/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000463', 'HUỲNH LAN VI', '10A10', 'Nữ', '03/08/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000464', 'LÊ KHÁNH VY', '10A10', 'Nữ', '06/03/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000465', 'NGUYỄN PHƯƠNG BẢO VY', '10A10', 'Nữ', '11/03/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000466', 'NGUYỄN THỊ NGỌC VY', '10A10', 'Nữ', '08/02/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000467', 'TRƯƠNG NÔNG TUYẾT VY', '10A10', 'Nữ', '12/07/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000468', 'NGUYỄN TRẦN KIM XUÂN', '10A10', 'Nữ', '11/08/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000390', 'TRẦN HOÀNG ANH', '10TN', 'Nam', '10/05/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000391', 'PHAN GIA BẢO', '10TN', 'Nam', '09/03/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000392', 'HUỲNH NGỌC PHƯƠNG DUNG', '10TN', 'Nữ', '06/05/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000393', 'TRẦN ĐÌNH HẢI ĐĂNG', '10TN', 'Nam', '17/03/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000394', 'DƯƠNG THỊ HUỆ HIẾU', '10TN', 'Nữ', '05/12/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000395', 'ĐẶNG LÊ HOÀNG', '10TN', 'Nam', '06/04/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000396', 'NGUYỄN THỊ THU HỒNG', '10TN', 'Nữ', '26/05/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000397', 'TRẦN NGUYỄN SINH HÙNG', '10TN', 'Nam', '29/10/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000398', 'TRƯƠNG HỮU KHANG', '10TN', 'Nam', '02/04/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000399', 'LẦM QUỐC KHÁNH', '10TN', 'Nam', '29/04/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000400', 'NGUYỄN HỮU KHÁNH', '10TN', 'Nam', '28/01/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000401', 'TRẦN BẢO KHOA', '10TN', 'Nam', '18/08/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000402', 'ĐẶNG ĐĂNG KHÔI', '10TN', 'Nam', '07/05/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000403', 'LÊ MINH KHÔI', '10TN', 'Nam', '12/06/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000404', 'TRẦN ĐĂNG KHÔI', '10TN', 'Nam', '21/06/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000405', 'VŨ HỒNG LAM', '10TN', 'Nam', '08/03/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000406', 'NGUYỄN KIỀU MY', '10TN', 'Nữ', '10/01/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000407', 'CAO HOÀI BẢO NGỌC', '10TN', 'Nữ', '13/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000408', 'HÀ BẢO NHI', '10TN', 'Nữ', '04/02/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000409', 'LÊ HUỲNH PHƯƠNG NHI', '10TN', 'Nữ', '08/01/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000410', 'HỶ HỌC NHƯ', '10TN', 'Nữ', '24/05/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000411', 'LÝ NGỌC BẢO NHƯ', '10TN', 'Nữ', '11/09/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000412', 'NGUYỄN QUỲNH NHƯ', '10TN', 'Nữ', '10/04/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000413', 'NGUYỄN TRẦN BẢO NHƯ', '10TN', 'Nữ', '09/06/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000414', 'LÊ TRẦN CÔNG PHÚ', '10TN', 'Nam', '13/06/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000415', 'THÁI GIA PHÚC', '10TN', 'Nam', '30/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000416', 'NGUYỄN HOÀI PHƯƠNG', '10TN', 'Nam', '24/12/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000417', 'HỒ KIM QUI', '10TN', 'Nữ', '28/07/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000418', 'HUỲNH THỊ NGỌC TÂM', '10TN', 'Nữ', '23/08/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000419', 'NGUYỄN QUANG THÁI', '10TN', 'Nam', '23/04/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000420', 'NGUYỄN GIA THÀNH', '10TN', 'Nam', '06/03/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000421', 'DANH NGUYỄN KIM THI', '10TN', 'Nữ', '06/03/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000422', 'TRẦN HOÀNG ANH THƯ', '10TN', 'Nữ', '29/05/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000423', 'NGUYỄN TRẦN NGỌC TRINH', '10TN', 'Nữ', '06/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000424', 'TRẦN NGỌC THANH TRÚC', '10TN', 'Nữ', '20/04/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000425', 'TRẦN MINH TUẤN', '10TN', 'Nam', '24/10/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000426', 'LÝ GIA VĨNH', '10TN', 'Nam', '16/06/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000427', 'LÊ NGUYÊN THIÊN Ý', '10TN', 'Nam', '29/10/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000132', 'TRƯƠNG VĂN TUẤN ANH', '10A4', 'Nam', '02/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000133', 'HUỲNH GIA BẢO', '10A4', 'Nam', '03/06/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000134', 'NGUYỄN QUỐC BẢO', '10A4', 'Nam', '02/10/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000135', 'TRẦN GIA BẢO', '10A4', 'Nam', '13/03/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000136', 'TRẦN VÕ GIA BẢO', '10A4', 'Nam', '12/12/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000137', 'TRƯƠNG TUẤN BÌNH', '10A4', 'Nam', '28/07/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000138', 'DIỆC HIẾU CẦN', '10A4', 'Nam', '02/11/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000139', 'NGUYỄN CAO MINH ĐẠT', '10A4', 'Nam', '11/08/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000140', 'NGÔ PHƯƠNG ĐÔNG', '10A4', 'Nam', '09/05/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000141', 'TRẦN TƯ HẠNH', '10A4', 'Nữ', '27/04/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000142', 'VÒNG THẾ HÀO', '10A4', 'Nam', '29/07/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000143', 'Trương Gia Hiền', '10A4', 'Nam', '02/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000144', 'LÊ MINH HIẾU', '10A4', 'Nam', '18/10/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000145', 'TRẦM KIM GIA HUY', '10A4', 'Nam', '29/03/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000146', 'NGUYỄN TRUNG HƯNG', '10A4', 'Nam', '17/02/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000148', 'NGUYỄN ĐẶNG TRỌNG KHANG', '10A4', 'Nam', '17/04/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000149', 'PHẠM ĐĂNG KHOA', '10A4', 'Nam', '01/03/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000150', 'TRẦN ĐĂNG KHÔI', '10A4', 'Nam', '16/09/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000151', 'TRẦN BẢO LUÂN', '10A4', 'Nam', '11/04/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000152', 'LỮ ĐẠI LỰC', '10A4', 'Nam', '03/05/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000153', 'PHẠM KIM NGỌC', '10A4', 'Nữ', '27/04/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000154', 'NGUYỄN HOÀNG TRANG NGUYÊN', '10A4', 'Nữ', '05/09/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000155', 'NGUYỄN TRẦN YẾN NHI', '10A4', 'Nữ', '09/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000156', 'KHẤU MINH NHỰT', '10A4', 'Nam', '27/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000157', 'CHUNG GIA PHÚ', '10A4', 'Nam', '12/10/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000158', 'NGUYỄN ĐẶNG TRỌNG PHÚC', '10A4', 'Nam', '17/04/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000159', 'NGUYỄN TOÀN PHÚC', '10A4', 'Nam', '12/06/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000160', 'TRẦN NGUYỄN GIA PHÚC', '10A4', 'Nam', '30/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000147', 'TRẦN I Q', '10A4', 'Nam', '21/05/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000161', 'VŨ ĐĂNG MINH QUÂN', '10A4', 'Nam', '23/11/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000162', 'NGUYỄN ĐỨC SANG', '10A4', 'Nam', '06/12/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000163', 'NGUYỄN HOÀNG TẤN', '10A4', 'Nam', '16/03/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000164', 'NGUYỄN THÀNH THÁI', '10A4', 'Nam', '21/01/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000165', 'VÕ THUỴ THANH THẢO', '10A4', 'Nữ', '02/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000166', 'HÀ PHAN TRƯỜNG THỊNH', '10A4', 'Nam', '30/12/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000167', 'TRỊNH QUỐC GIA THỊNH', '10A4', 'Nam', '13/03/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000168', 'HOÀNG HUỲNH DIỄM TRANG', '10A4', 'Nữ', '26/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000169', 'NGUYỄN MINH TRÍ', '10A4', 'Nam', '31/08/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000170', 'HỒNG NHÂM HOÀNG TRIỀU', '10A4', 'Nam', '29/08/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000171', 'PHẠM THANH TRÚC', '10A4', 'Nữ', '05/10/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000172', 'HUỲNH THỊ KIM YẾN', '10A4', 'Nữ', '16/02/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000469', 'PHẠM THỊ NGỌC ÁNH', '10A11', 'Nữ', '25/07/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000470', 'QUAN GIA BỘI', '10A11', 'Nữ', '02/02/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000471', 'TRẦN KIM CHÂU', '10A11', 'Nữ', '26/06/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000472', 'TĂNG TÔN MỸ DUYÊN', '10A11', 'Nữ', '04/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000473', 'HOẮC KHÁNH ĐẠT', '10A11', 'Nam', '15/09/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000474', 'TRẦN GIA HÀO', '10A11', 'Nam', '10/12/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000475', 'ĐƯỜNG NGUYỆT HIỀN', '10A11', 'Nữ', '08/06/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000476', 'NGUYỄN TUẤN HUY', '10A11', 'Nam', '12/09/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000477', 'HUỲNH TẤN KHANG', '10A11', 'Nam', '03/05/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000478', 'PHẠM DUY KHANG', '10A11', 'Nam', '18/08/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000479', 'TRẦN ĐẠO KHANG', '10A11', 'Nam', '06/10/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000480', 'TRẦN TÚ KHANG', '10A11', 'Nam', '18/04/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000481', 'TRẦN TUẤN KHANH', '10A11', 'Nam', '20/07/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000482', 'TỪ VŨ DUY KHANH', '10A11', 'Nam', '22/09/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000483', 'BÙI NGUYỄN ĐĂNG KHÔI', '10A11', 'Nam', '11/04/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000484', 'NGUYỄN TRUNG KIÊN', '10A11', 'Nam', '02/06/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000485', 'NGUYỄN BÁ TÙNG LÂM', '10A11', 'Nam', '07/09/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000486', 'LIÊU NGỌC TÚ LINH', '10A11', 'Nữ', '05/10/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000487', 'LÊ TẤN LỘC', '10A11', 'Nam', '04/02/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000488', 'LÂM GIA MẪN', '10A11', 'Nữ', '31/08/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000489', 'NGUYỄN HOÀI BẢO NAM', '10A11', 'Nam', '16/08/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000490', 'TẠ NGỌC BẢO NGHI', '10A11', 'Nữ', '22/03/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000491', 'TĂNG TUYẾT NGHI', '10A11', 'Nữ', '24/10/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000492', 'PHẠM THỊ THANH NHÀN', '10A11', 'Nữ', '11/04/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000493', 'LA HÂN NHI', '10A11', 'Nữ', '07/10/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000494', 'TỪ HẠO NHIÊN', '10A11', 'Nam', '30/07/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000495', 'NGUYỄN NGỌC NHƯ', '10A11', 'Nữ', '05/09/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000496', 'NGUYỄN PHẠM TẤN PHÚC', '10A11', 'Nam', '08/01/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000497', 'LÊ HOÀNG UYÊN PHƯƠNG', '10A11', 'Nữ', '07/06/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000498', 'NGÔ TRẦN PHƯƠNG QUỲNH', '10A11', 'Nữ', '19/07/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000499', 'NGUYỄN NHƯ QUỲNH', '10A11', 'Nữ', '09/04/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000500', 'NGUYỄN TUẤN TÀI', '10A11', 'Nam', '26/10/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000501', 'NGUYỄN THỊ THANH THẢO', '10A11', 'Nữ', '15/03/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000502', 'NGUYỄN HẠO THIÊN', '10A11', 'Nam', '15/12/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000503', 'NGUYỄN ĐÔNG THÙY', '10A11', 'Nữ', '17/04/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000504', 'NGUYỄN THỊ HOÀI THƯ', '10A11', 'Nữ', '04/09/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000505', 'NGUYỄN XUÂN TRANG', '10A11', 'Nữ', '07/06/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000506', 'LÝ TÔ HUYỀN TRÂN', '10A11', 'Nữ', '23/07/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000507', 'NGÔ QUANG TRIỀU', '10A11', 'Nam', '17/08/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000508', 'HỨA KHẢI TRINH', '10A11', 'Nữ', '03/04/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000509', 'TRẦN LÊ QUANG TRƯỞNG', '10A11', 'Nam', '29/09/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000510', 'HUỲNH THANH TUYỀN', '10A11', 'Nữ', '21/12/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000511', 'NGUYỄN NGUYỄN TUYẾT VY', '10A11', 'Nữ', '26/05/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000512', 'NGUYỄN ĐẶNG HƯƠNG XUÂN', '10A11', 'Nữ', '03/08/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000513', 'ĐOÀN GIA BẢO', '10A12', 'Nam', '01/07/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000514', 'LÊ NGUYỄN GIA BẢO', '10A12', 'Nam', '02/12/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000515', 'KHƯU KIM HOÀNG DIỆU', '10A12', 'Nữ', '13/05/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000516', 'NGUYỄN THÙY DƯƠNG', '10A12', 'Nữ', '20/05/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000517', 'PHẠM THÁI MINH ĐĂNG', '10A12', 'Nam', '05/08/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000518', 'NGUYỄN THÚY HÂN', '10A12', 'Nữ', '23/02/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000519', 'QUAN GIA HÂN', '10A12', 'Nữ', '29/07/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000520', 'TIÊU LÝ GIA HÂN', '10A12', 'Nữ', '08/03/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000521', 'NGUYỄN THANH HIỀN', '10A12', 'Nữ', '15/08/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000522', 'MẠCH GIA HUỆ', '10A12', 'Nữ', '10/08/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000523', 'DIỆP TƯ HÙNG', '10A12', 'Nam', '22/07/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000524', 'TRẦN GIA HƯNG', '10A12', 'Nam', '08/06/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000525', 'NGỤY THỤC KHANH', '10A12', 'Nữ', '13/01/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000526', 'TRƯƠNG ĐAN ÁI KHANH', '10A12', 'Nữ', '10/10/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000527', 'NGUYỄN QUỐC MINH KHÔI', '10A12', 'Nam', '18/08/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000528', 'ĐỖ HOÀNG KIM', '10A12', 'Nữ', '26/04/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000529', 'THƯƠNG GIA LINH', '10A12', 'Nữ', '10/08/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000530', 'TRẦN LÊ BỘI LINH', '10A12', 'Nữ', '12/12/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000531', 'MẠCH GIA MẪN', '10A12', 'Nữ', '10/08/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000532', 'PHẠM QUỐC MINH', '10A12', 'Nam', '19/12/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000533', 'TRƯƠNG NGỌC BÌNH MINH', '10A12', 'Nữ', '03/10/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000534', 'LÊ HỒNG MỸ', '10A12', 'Nữ', '13/10/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000535', 'HUỲNH GIA NGHI', '10A12', 'Nữ', '06/03/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000536', 'NGUYỄN ANH NGUYÊN', '10A12', 'Nữ', '16/06/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000537', 'PHẠM TRỌNG NGUYÊN', '10A12', 'Nam', '13/08/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000538', 'TĂNG HIỂU NHI', '10A12', 'Nữ', '30/12/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000539', 'VÕ THỊ TUYẾT NHI', '10A12', 'Nữ', '04/10/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000540', 'DƯƠNG THỊ AN NHIÊN', '10A12', 'Nữ', '02/09/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000541', 'NGUYỄN NGỌC THẢO NHƯ', '10A12', 'Nữ', '29/12/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000542', 'ĐẶNG VĂN NINH', '10A12', 'Nam', '15/07/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000543', 'TIÊU PHONG', '10A12', 'Nam', '04/07/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000544', 'CHUNG HỒNG PHƯỢNG', '10A12', 'Nữ', '22/10/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000545', 'NGUYỄN BÁ TÀI', '10A12', 'Nam', '11/12/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000546', 'PHAN MINH THÔNG', '10A12', 'Nam', '11/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000547', 'LƯU NGUYỄN HOÀNG THƯ', '10A12', 'Nữ', '11/10/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000548', 'NGUYỄN HÁO ANH THƯ', '10A12', 'Nữ', '25/04/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000549', 'NGUYỄN VŨ THANH TRÚC', '10A12', 'Nữ', '06/01/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000550', 'HÀ TÚ TÚ', '10A12', 'Nữ', '18/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000551', 'LÊ THANH TUẤN', '10A12', 'Nam', '13/10/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000552', 'SƠN NGỌC MAI UYÊN', '10A12', 'Nữ', '27/10/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000553', 'NGUYỄN KHÁNH VI', '10A12', 'Nữ', '27/05/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000554', 'LÂM THÚY VY', '10A12', 'Nữ', '29/06/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000555', 'NGUYỄN NGỌC TƯỜNG VY', '10A12', 'Nữ', '05/10/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000556', 'LÊ CHUNG NHƯ Ý', '10A12', 'Nữ', '21/09/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000303', 'TRƯƠNG KHÁNH BĂNG', '10A8', 'Nữ', '24/01/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000304', 'BÙI NGỌC KHÁNH CHUYÊN', '10A8', 'Nữ', '31/05/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000305', 'PHÙNG BỘI DINH', '10A8', 'Nữ', '04/12/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000306', 'TRẦN VĨ ĐẠT', '10A8', 'Nam', '16/05/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000307', 'VÕ NGUYÊN ĐĂNG', '10A8', 'Nam', '22/04/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000308', 'TRƯƠNG NGỌC HÂN', '10A8', 'Nữ', '29/04/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000309', 'ĐỖ QUỲNH HOA', '10A8', 'Nữ', '15/01/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000310', 'LÂM ĐỖ NHẬT HUY', '10A8', 'Nam', '02/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000311', 'TRẦN MINH HUY', '10A8', 'Nam', '30/08/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000312', 'TRẦN QUỐC HUY', '10A8', 'Nam', '28/04/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000313', 'NGUYỄN HOÀNG BẢO HƯNG', '10A8', 'Nam', '02/07/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000314', 'PHẠM NGUYỄN BẢO KHÁNH', '10A8', 'Nam', '23/07/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000315', 'ĐÀO ANH KHÔI', '10A8', 'Nam', '14/09/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000316', 'LƯU PHẠM CÔNG NGUYÊN KHÔI', '10A8', 'Nam', '20/10/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000317', 'TRẦN NGÔ MINH KHÔI', '10A8', 'Nam', '24/10/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000318', 'TRẦN NGUYỄN QUỲNH LAM', '10A8', 'Nữ', '12/03/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000319', 'NGUYỄN HOÀNG KHÁNH LINH', '10A8', 'Nữ', '29/01/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000320', 'TRƯƠNG HỒNG LOAN', '10A8', 'Nữ', '22/12/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000321', 'NGUYỄN CAO KIM MAI', '10A8', 'Nữ', '05/08/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000322', 'TỪ NGUYỄN HOÀNG MINH', '10A8', 'Nam', '14/10/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000323', 'TRẦN KHỞI MY', '10A8', 'Nữ', '04/07/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000324', 'BÙI DIỆP TỐ NGÂN', '10A8', 'Nữ', '29/10/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000325', 'VŨ THỊ TUYẾT NHUNG', '10A8', 'Nữ', '08/10/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000326', 'NGUYỄN PHẠM HỒNG PHẤN', '10A8', 'Nữ', '23/01/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000327', 'TĂNG TOÀN PHONG', '10A8', 'Nam', '10/10/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000328', 'NGUYỄN HOÀNG QUÂN', '10A8', 'Nam', '05/12/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000329', 'NGUYỄN HOÀNG KHÁNH QUYÊN', '10A8', 'Nữ', '04/11/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000330', 'HUỲNH QUỲNH TÂM', '10A8', 'Nữ', '15/07/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000331', 'KIM GIA THỊNH', '10A8', 'Nam', '21/12/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000332', 'NGUYỄN VŨ THỊNH', '10A8', 'Nam', '13/10/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000333', 'VŨ PHƯƠNG THUỲ', '10A8', 'Nữ', '22/04/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000334', 'ĐÀM PHẠM ANH THƯ', '10A8', 'Nữ', '06/08/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000335', 'ĐỖ NGUYỄN AN THY', '10A8', 'Nữ', '05/11/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000337', 'NGUYỄN NGỌC UYÊN THY', '10A8', 'Nữ', '11/04/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000336', 'NGUYỄN NGỌC UYÊN THY', '10A8', 'Nữ', '06/07/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000338', 'TRẦN NGỌC THY', '10A8', 'Nữ', '04/07/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000339', 'NGÔ KIM TIỀN', '10A8', 'Nữ', '16/12/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000340', 'NGUYỄN TRẦN BẢO TRÂM', '10A8', 'Nữ', '21/06/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000341', 'ĐIỀN THỊ THANH TRÚC', '10A8', 'Nữ', '21/07/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000342', 'TRƯƠNG HOÀI THANH TRÚC', '10A8', 'Nữ', '03/06/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000343', 'HOÀNG ANH TUẤN', '10A8', 'Nam', '03/04/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000344', 'TRẦN NGỌC MINH TUYỀN', '10A8', 'Nữ', '25/10/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('10000345', 'NGUYỄN THIÊNG Ý', '10A8', 'Nữ', '06/09/2011', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000203', 'HỒ HOÀI AN', '12A6', 'Nữ', '02/07/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000204', 'NGUYỄN HOÀI AN', '12A6', 'Nam', '28/03/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000205', 'VÕ TÚ ANH', '12A6', 'Nữ', '03/05/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000206', 'VÕ TUYẾT ANH', '12A6', 'Nữ', '11/10/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000207', 'VÕ GIA ÂN', '12A6', 'Nam', '04/12/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000208', 'NGUYỄN THÁI BẢO', '12A6', 'Nam', '02/06/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000209', 'TRẦN THỊ TUYẾT DIỄM', '12A6', 'Nữ', '03/11/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000210', 'TRẦN THỊ MỸ DUNG', '12A6', 'Nữ', '05/12/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000211', 'NGUYỄN ĐỨC DUY', '12A6', 'Nam', '22/02/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000212', 'HUỲNH TUẤN HẠO', '12A6', 'Nam', '25/10/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000213', 'NGÔ GIA HÂN', '12A6', 'Nữ', '30/12/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000214', 'BÙI QUỐC HUY', '12A6', 'Nam', '24/10/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000215', 'NGUYỄN TUẤN KIỆT', '12A6', 'Nam', '16/10/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000216', 'ĐÀO KIM LƯƠNG', '12A6', 'Nam', '29/07/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000217', 'LÊ THỊ NGỌC MAI', '12A6', 'Nữ', '11/02/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000218', 'ĐINH QUANG MINH', '12A6', 'Nam', '05/08/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000219', 'HUỲNH TRƯƠNG BẢO NGỌC', '12A6', 'Nữ', '14/07/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000220', 'NGUYỄN BẢO NGỌC', '12A6', 'Nữ', '11/06/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000221', 'NGUYỄN LÊ HỮU NHÂN', '12A6', 'Nam', '15/08/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000222', 'TRẦN ĐỨC NHÂN', '12A6', 'Nam', '22/12/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000223', 'TỐNG THIỀU NGUYỄN NHẬT', '12A6', 'Nam', '11/11/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000224', 'LÃ NGỌC QUỲNH NHI', '12A6', 'Nữ', '09/03/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000225', 'NGUYỄN THỊ YẾN NHI', '12A6', 'Nữ', '28/03/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000226', 'ĐOÀN YẾN NHƯ', '12A6', 'Nữ', '06/11/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000227', 'NGUYỄN XUÂN PHÁT', '12A6', 'Nam', '07/09/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000228', 'HÀNG TÚ PHƯƠNG', '12A6', 'Nữ', '06/09/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000229', 'NGUYỄN VĂN MINH QUÂN', '12A6', 'Nam', '04/05/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000230', 'HUỲNH NGỌC NHÃ QUYÊN', '12A6', 'Nữ', '10/02/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000231', 'NGUYỄN VÕ NHƯ QUỲNH', '12A6', 'Nữ', '15/09/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000232', 'HỒ NGỌC SƠN', '12A6', 'Nam', '18/10/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000233', 'NGUYỄN QUÁCH GIA THIÊN', '12A6', 'Nam', '12/11/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000234', 'NGUYỄN QUANG THỊNH', '12A6', 'Nam', '09/09/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000235', 'CHẠC GIA THUẬN', '12A6', 'Nam', '24/08/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000236', 'NGUYỄN NGỌC MINH THÙY', '12A6', 'Nữ', '17/12/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000237', 'MAI NGUYỄN HOÀI THƯƠNG', '12A6', 'Nữ', '28/06/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000238', 'HUỲNH CHIÊM ĐẠI TIÊN', '12A6', 'Nữ', '07/02/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000239', 'NGUYỄN THANH TUYỀN', '12A6', 'Nữ', '18/06/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000240', 'NGUYỄN THỊ THANH TUYỀN', '12A6', 'Nữ', '31/10/2008', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000241', 'NGUYỄN TRƯƠNG THÀNH VINH', '12A6', 'Nam', '01/06/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000242', 'HUỲNH DƯƠNG KHÁNH VY', '12A6', 'Nữ', '02/10/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000243', 'LÊ LÂM TƯỜNG VY', '12A6', 'Nữ', '01/09/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000244', 'PHƯƠNG THANH VY', '12A6', 'Nữ', '26/10/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000245', 'TẠ ÂU LẠC VY', '12A6', 'Nữ', '29/09/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000042', 'LƯ NGUYỄN KHÁNH AN', '12A2', 'Nữ', '28/10/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000043', 'PHAN LÂM QUỲNH ANH', '12A2', 'Nữ', '16/09/2008', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000044', 'VŨ GIA ÂN', '12A2', 'Nam', '25/04/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000045', 'NGÔ THIÊN HOÀI BẢO', '12A2', 'Nam', '08/03/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000046', 'TRẦN NGỌC BẢO', '12A2', 'Nam', '27/10/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000047', 'LƯƠNG NGỌC DIỄM', '12A2', 'Nữ', '14/10/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000048', 'TRẦN THÙY DƯƠNG', '12A2', 'Nữ', '13/11/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000049', 'CHÂU TRƯỜNG ĐẠT', '12A2', 'Nam', '30/01/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000050', 'NGUYỄN THÀNH ĐẠT', '12A2', 'Nam', '07/09/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000051', 'NGUYỄN LÊ NGỌC HÂN', '12A2', 'Nữ', '02/11/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000052', 'NGUYỄN MINH HOÀNG', '12A2', 'Nam', '21/01/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000053', 'NGUYỄN PHAN MINH HUY', '12A2', 'Nam', '19/01/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000054', 'NGUYỄN NGỌC HUỲNH', '12A2', 'Nữ', '24/02/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000055', 'LÝ THẾ HƯƠNG', '12A2', 'Nữ', '08/04/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000056', 'NGUYỄN BÙI NGÂN KHÁNH', '12A2', 'Nữ', '30/01/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000057', 'NGUYỄN VÂN KHÁNH', '12A2', 'Nữ', '12/03/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000058', 'NGÔ ANH KIỆT', '12A2', 'Nam', '24/03/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000059', 'HỒ NGUYỄN HẢI LAM', '12A2', 'Nữ', '18/03/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000060', 'LÂM GIA LINH', '12A2', 'Nữ', '10/05/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000061', 'LÊ KIM LOAN', '12A2', 'Nữ', '05/09/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000062', 'HÀ THỊ TUYẾT MAI', '12A2', 'Nữ', '28/12/2008', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000063', 'LÊ PHAN KIM NGÂN', '12A2', 'Nữ', '16/04/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000064', 'NGUYỄN THỊ THANH NGÂN', '12A2', 'Nữ', '30/12/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000065', 'NGUYỄN HOÀNG ĐÔNG NGHI', '12A2', 'Nữ', '12/03/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000066', 'LÂM THIÊN NHI', '12A2', 'Nữ', '21/07/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000067', 'NGUYỄN HẢI PHI', '12A2', 'Nam', '17/02/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000068', 'NGUYỄN CAO MỸ PHƯƠNG', '12A2', 'Nữ', '10/09/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000069', 'HỒ NGUYỄN NHƯ QUỲNH', '12A2', 'Nữ', '30/11/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000070', 'LÊ NHƯ QUỲNH', '12A2', 'Nữ', '14/12/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000071', 'TRẦN NGỌC THẢO', '12A2', 'Nữ', '22/06/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000072', 'TRẦN NGUYỄN QUỐC THẮNG', '12A2', 'Nam', '28/01/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000073', 'PHAN NGỌC MINH THIỆN', '12A2', 'Nam', '06/08/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000074', 'PHAN VÕ MINH TIẾN', '12A2', 'Nam', '20/04/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000075', 'VÕ HOÀNG UYÊN TRANG', '12A2', 'Nữ', '20/01/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000076', 'LÊ BẢO TRÂN', '12A2', 'Nữ', '13/12/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000077', 'LƯU BỈNH TRÍ', '12A2', 'Nam', '31/08/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000078', 'NGUYỄN NGỌC TRÚC', '12A2', 'Nữ', '23/09/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000079', 'NGUYỄN HOÀNG YẾN VY', '12A2', 'Nữ', '14/05/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000080', 'NGUYỄN NGỌC TƯỜNG VY', '12A2', 'Nữ', '08/06/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000010', 'CHÂU MINH HẢI', '12A1', 'Nam', '31/07/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000011', 'HUỲNH GIA HÂN', '12A1', 'Nữ', '08/04/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000012', 'HUỲNH QUỐC HIỆP', '12A1', 'Nam', '27/08/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000013', 'ĐẶNG PHÚC HUY HOÀNG', '12A1', 'Nam', '25/03/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000014', 'ĐỖ TẤN HƯNG', '12A1', 'Nam', '20/09/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000015', 'TRẦN LONG HỶ', '12A1', 'Nam', '24/06/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000016', 'TRƯƠNG BẢO KHA', '12A1', 'Nam', '15/05/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000017', 'MAI HỒNG KHANG', '12A1', 'Nữ', '27/02/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000018', 'NGUYỄN MAI KHANH', '12A1', 'Nữ', '24/11/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000019', 'NGUYỄN NGỌC PHƯƠNG LINH', '12A1', 'Nữ', '19/09/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000020', 'HUỲNH CHIÊM ĐẠI MỸ', '12A1', 'Nữ', '07/02/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000021', 'LÊ TUẤN NGHĨA', '12A1', 'Nam', '27/04/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000022', 'LÊ THỊ QUẾ NHI', '12A1', 'Nữ', '01/09/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000023', 'TRẦN BẢO NHƯ', '12A1', 'Nữ', '11/07/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000024', 'TRƯƠNG THANH PHONG', '12A1', 'Nam', '09/10/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000025', 'NGUYỄN NGỌC PHÚC', '12A1', 'Nam', '03/01/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000026', 'TRƯƠNG NHƯ QUỲNH', '12A1', 'Nữ', '26/10/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000027', 'TRẦN BẢO SAN', '12A1', 'Nữ', '15/12/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000028', 'TRẦN QUÝ SANG', '12A1', 'Nam', '08/01/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000029', 'HÀ THANH SƠN', '12A1', 'Nam', '13/08/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000030', 'NGUYỄN HÀ PHƯỚC THÊM', '12A1', 'Nam', '18/10/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000031', 'NGUYỄN MAI BẢO THY', '12A1', 'Nữ', '05/09/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000032', 'NGUYỄN PHẠM BẢO THY', '12A1', 'Nữ', '15/07/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000033', 'PHAN QUỐC MINH TỊNH', '12A1', 'Nam', '24/04/2008', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000034', 'NGUYỄN TRỌNG TOÀN', '12A1', 'Nam', '17/02/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000035', 'TẠ NGUYỄN QUANG TUẤN', '12A1', 'Nam', '01/07/2007', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000036', 'NGUYỄN THANH TÙNG', '12A1', 'Nam', '18/08/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000037', 'ĐÀO PHẠM BÍCH TUYỀN', '12A1', 'Nữ', '07/12/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000038', 'HUỲNH NHÃ TUYẾT', '12A1', 'Nữ', '30/05/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000039', 'NGUYỄN QUỐC VŨ', '12A1', 'Nam', '22/01/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000040', 'NGUYỄN HUỲNH PHƯƠNG VY', '12A1', 'Nữ', '08/07/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000041', 'NGUYỄN PHAN NGỌC VY', '12A1', 'Nữ', '16/03/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000163', 'NGUYỄN CHÂU BẢO AN', '12A5', 'Nữ', '22/08/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000164', 'NGUYỄN HOÀI BẢO', '12A5', 'Nam', '11/10/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000165', 'TRẦN NGỌC MINH CHÂU', '12A5', 'Nữ', '20/04/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000166', 'TRẦN Y MINH CƯỜNG', '12A5', 'Nam', '19/08/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000167', 'NGUYỄN MỸ DUNG', '12A5', 'Nữ', '04/10/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000168', 'TRẦN TRÍ ĐỨC', '12A5', 'Nam', '16/09/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000169', 'HUỲNH NHẬT HÀO', '12A5', 'Nam', '05/06/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000170', 'TRƯƠNG TUẤN HÀO', '12A5', 'Nam', '20/04/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000171', 'LÝ GIA HÂN', '12A5', 'Nữ', '07/09/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000172', 'DƯ TRẦN GIA HUY', '12A5', 'Nam', '11/04/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000173', 'TRẦN QUỐC HUY', '12A5', 'Nam', '19/06/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000174', 'CHÂU VĂN KHẢI', '12A5', 'Nam', '27/01/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000175', 'NGUYỄN PHÚC PHAN KHANG', '12A5', 'Nam', '21/10/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000176', 'TRẦN NGUYỄN MINH KHANG', '12A5', 'Nam', '10/04/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000177', 'TRỊNH BẢO KHANG', '12A5', 'Nam', '11/01/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000178', 'ĐỖ QUỐC ĐĂNG KHOA', '12A5', 'Nam', '10/01/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000179', 'NGUYỄN ANH KHÔI', '12A5', 'Nam', '30/03/2008', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000180', 'TRẦN ANH KHÔI', '12A5', 'Nam', '07/09/2008', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000181', 'VÕ THỊ NHỰT LINH', '12A5', 'Nữ', '03/12/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000182', 'NGUYỄN LÊ TẤN LỘC', '12A5', 'Nam', '09/05/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000183', 'GIANG TUẤN LỢI', '12A5', 'Nam', '04/06/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000184', 'LÊ THỊ TUYẾT MAI', '12A5', 'Nữ', '23/12/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000185', 'TẠ GIA MẪN', '12A5', 'Nữ', '25/03/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000186', 'CHUNG NGỌC DIỄM MY', '12A5', 'Nữ', '13/03/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000187', 'TRẦN HỮU NAM', '12A5', 'Nam', '04/09/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000188', 'DƯƠNG BÍCH NGỌC', '12A5', 'Nữ', '17/08/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000189', 'LƯU TUYẾT NGỌC', '12A5', 'Nữ', '02/02/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000190', 'NGUYỄN PHÚC NGUYÊN', '12A5', 'Nam', '11/12/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000191', 'VŨ LÝ YẾN NHI', '12A5', 'Nữ', '11/11/2008', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000192', 'NUD RU HA NI', '12A5', 'Nữ', '07/05/2008', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000193', 'NGUYỄN MINH BẢO PHI', '12A5', 'Nam', '23/12/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000194', 'HUỲNH NGUYỄN NHƯ QUỲNH', '12A5', 'Nữ', '09/08/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000195', 'NGUYỄN THỊ DIỄM QUỲNH', '12A5', 'Nữ', '15/05/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000196', 'HUỲNH NGỌC THIÊN THẢO', '12A5', 'Nữ', '29/08/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000197', 'LÊ KIM PHƯƠNG THẢO', '12A5', 'Nữ', '07/06/2008', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000198', 'PHAN HUỲNH TRÂM', '12A5', 'Nữ', '14/01/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000199', 'ĐOÀN KIM PHƯƠNG TRINH', '12A5', 'Nữ', '16/08/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000200', 'LÂM THANH TRÚC', '12A5', 'Nữ', '11/06/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000201', 'MAI NHẬT KHÁNH VY', '12A5', 'Nữ', '20/06/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000202', 'LƯƠNG LỆ YẾN', '12A5', 'Nữ', '07/11/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000081', 'QUÁCH TRIỀU AN', '12A3', 'Nam', '06/03/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000082', 'BÀNH DIỆU ANH', '12A3', 'Nữ', '15/12/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000083', 'NGUYỄN LÊ CÔNG DANH', '12A3', 'Nam', '20/02/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000084', 'NGUYỄN TIẾN ĐẠT', '12A3', 'Nam', '14/12/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000085', 'NGUYỄN ĐẮC HẢI ĐĂNG', '12A3', 'Nam', '24/08/2008', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000086', 'LƯƠNG HUỲNH GIANG', '12A3', 'Nữ', '23/12/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000087', 'NGUYỄN THỊ THU HẰNG', '12A3', 'Nữ', '02/08/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000088', 'NGUYỄN THỊ NGỌC HUỆ', '12A3', 'Nữ', '05/08/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000089', 'HÀ GIA HUY', '12A3', 'Nam', '22/10/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000090', 'LÊ KIM HUYỀN', '12A3', 'Nữ', '28/10/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000091', 'VÕ TUẤN KHẢI', '12A3', 'Nam', '07/01/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000092', 'PHAN KHANG', '12A3', 'Nam', '19/10/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000093', 'PHAN VÕ KIM KHÁNH', '12A3', 'Nữ', '13/06/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000094', 'NGUYỄN MAI LAN', '12A3', 'Nữ', '27/11/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000095', 'TRẦN NHẬT KHÁNH LINH', '12A3', 'Nữ', '03/09/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000096', 'HÀNG ĐẠT LUÂN', '12A3', 'Nam', '25/01/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000097', 'NGUYỄN DUY MẠNH', '12A3', 'Nam', '23/03/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000098', 'BÙI NHẬT MINH', '12A3', 'Nam', '22/02/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000099', 'CAO KIM NGÂN', '12A3', 'Nữ', '28/12/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000100', 'KIỀU NGUYỄN HOÀNG NGỌC', '12A3', 'Nữ', '21/08/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000101', 'CAO NGỌC NHI', '12A3', 'Nữ', '20/10/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000102', 'LÂM TÂM NHI', '12A3', 'Nữ', '12/08/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000103', 'NGUYỄN ĐOÀN PHƯƠNG NHI', '12A3', 'Nữ', '22/08/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000104', 'NGUYỄN THỊ THANH NHƯ', '12A3', 'Nữ', '06/08/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000105', 'PHAN ANH PHÚC', '12A3', 'Nam', '21/01/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000106', 'TRƯƠNG HUỆ PHƯƠNG', '12A3', 'Nữ', '30/11/2008', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000107', 'TRẦN PHÚ QUÝ', '12A3', 'Nam', '09/05/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000108', 'NGUYỄN THỊ MỸ TÂM', '12A3', 'Nữ', '26/05/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000109', 'TRẦN UYỂN TÂY', '12A3', 'Nữ', '10/09/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000110', 'NGUYỄN HOÀNG NHÃ THY', '12A3', 'Nữ', '20/05/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000111', 'NGUYỄN HOÀNG SƠN TIẾN', '12A3', 'Nam', '14/11/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000112', 'LAI TRÍ TÍN', '12A3', 'Nam', '15/04/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000113', 'NGUYỄN ĐÀM HỒNG TRANG', '12A3', 'Nữ', '19/07/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000114', 'NGUYỄN HUỲNH ANH TRÂM', '12A3', 'Nữ', '30/04/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000115', 'NGUYỄN NGỌC QUỲNH TRÂM', '12A3', 'Nữ', '09/10/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000116', 'PHẠM NGUYỄN HOÀN TRÂN', '12A3', 'Nữ', '16/02/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000117', 'NGUYỄN LÊ THANH TRÚC', '12A3', 'Nữ', '24/04/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000118', 'NGUYỄN NGỌC PHƯƠNG VI', '12A3', 'Nữ', '08/05/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000119', 'HUỲNH THÚY VY', '12A3', 'Nữ', '08/12/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000120', 'NGUYỄN THANH TƯỜNG VY', '12A3', 'Nữ', '14/09/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000330', 'BÙI NGỌC VÂN ANH', '12A9', 'Nữ', '01/06/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000331', 'NGUYỄN TRẦN NHƯ CÁC', '12A9', 'Nữ', '11/06/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000332', 'TRẦN NGỌC BẢO CHÂU', '12A9', 'Nữ', '30/04/2008', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000333', 'PHÙNG MINH DUY', '12A9', 'Nam', '21/02/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000334', 'PHẠM THIÊN ĐĂNG', '12A9', 'Nam', '29/10/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000335', 'NGUYỄN NGỌC QUỲNH GIANG', '12A9', 'Nữ', '02/02/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000336', 'TRẦN NGỌC GIA HÂN', '12A9', 'Nữ', '16/05/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000337', 'NGUYỄN TRUNG HIẾU', '12A9', 'Nam', '21/10/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000338', 'LA MỸ KHANH', '12A9', 'Nữ', '03/03/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000339', 'BÙI QUANG BẢO KHÁNH', '12A9', 'Nam', '25/06/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000340', 'NGUYỄN ĐĂNG KHOA', '12A9', 'Nam', '13/09/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000341', 'VÕ THỊ TRÚC LINH', '12A9', 'Nữ', '02/01/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000342', 'NGUYỄN XUÂN MAI', '12A9', 'Nữ', '28/01/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000343', 'LÊ NGỌC MINH', '12A9', 'Nam', '16/07/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000344', 'PHAN LÊ THẢO MY', '12A9', 'Nữ', '11/06/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000345', 'HUỲNH THỊ KIM NGÂN', '12A9', 'Nữ', '29/10/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000346', 'TRẦN PHÚC KIM NGÂN', '12A9', 'Nữ', '13/06/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000347', 'LÊ NGỌC', '12A9', 'Nữ', '13/11/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000348', 'TRẦN BẢO NGỌC', '12A9', 'Nữ', '21/02/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000349', 'VÕ HỒNG BẢO NGỌC', '12A9', 'Nữ', '28/10/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000350', 'LÊ THỊ THẢO NGUYÊN', '12A9', 'Nữ', '31/08/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000351', 'QUÁCH BẢO NHI', '12A9', 'Nữ', '07/03/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000352', 'ĐỖ NGUYỄN QUỲNH NHƯ', '12A9', 'Nữ', '14/11/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000353', 'NGUYỄN VĨNH PHÚC', '12A9', 'Nam', '27/10/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000354', 'NGUYỄN NGỌC UYÊN PHƯƠNG', '12A9', 'Nữ', '02/03/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000355', 'NGUYỄN TRẦN THANH QUANG', '12A9', 'Nam', '24/10/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000356', 'HUỲNH ANH QUÂN', '12A9', 'Nam', '21/10/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000357', 'HỨA MINH QUÂN', '12A9', 'Nam', '16/02/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000358', 'NGUYỄN VĂN PHÁT TÀI', '12A9', 'Nam', '04/07/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000359', 'LÊ TRẦN THIỆN TÂM', '12A9', 'Nam', '11/05/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000360', 'HUỲNH NGỌC THANH THẢO', '12A9', 'Nữ', '09/05/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000361', 'NGUYỄN THANH THẢO', '12A9', 'Nữ', '03/03/2008', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000362', 'HUỲNH THỊ CẨM THU', '12A9', 'Nữ', '28/11/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000363', 'PHẠM THUẬN TRÍ TÍN', '12A9', 'Nam', '25/12/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000364', 'PHAN NGUYỄN THÀNH TÍN', '12A9', 'Nam', '17/10/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000365', 'HÀ PHƯƠNG TRANG', '12A9', 'Nữ', '21/01/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000366', 'TRẦN NGỌC THÙY TRANG', '12A9', 'Nữ', '26/11/2008', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000367', 'TRẦN NGỌC THÙY TRÂM', '12A9', 'Nữ', '15/04/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000368', 'NGUYỄN LÊ BẢO TRÂN', '12A9', 'Nữ', '30/04/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000369', 'TRẦN KHẢ TÚ', '12A9', 'Nữ', '04/03/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000370', 'TĂNG THANH TUYỀN', '12A9', 'Nữ', '21/02/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000371', 'NGUYỄN NGỌC CÁT TƯỜNG', '12A9', 'Nữ', '02/09/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000372', 'PHAN NGỌC MINH VI', '12A9', 'Nữ', '11/09/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000373', 'ĐỖ HUỲNH PHƯƠNG VY', '12A9', 'Nữ', '08/09/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000374', 'TRẦN BẢO VY', '12A9', 'Nữ', '18/01/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000121', 'LÊ ĐOÀN BẢO ANH', '12A4', 'Nữ', '10/07/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000122', 'TRẦN TUẤN ANH', '12A4', 'Nam', '03/12/2008', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000123', 'TRẦN THU HOÀI BĂNG', '12A4', 'Nữ', '10/05/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000124', 'VÕ HUỲNH THIÊN DI', '12A4', 'Nữ', '17/08/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000125', 'TRẦN THỊ BÍCH HẢO', '12A4', 'Nữ', '07/12/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000126', 'ĐINH HỨA GIA HÂN', '12A4', 'Nữ', '15/11/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000127', 'HUỲNH GIA HÂN', '12A4', 'Nữ', '27/03/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000128', 'TRẦN GIA HÂN', '12A4', 'Nữ', '02/06/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000129', 'TRẦN KHÁNH HUY', '12A4', 'Nam', '30/09/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000130', 'NGUYỄN TUẤN HỮU', '12A4', 'Nam', '02/10/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000131', 'HỒ AN LẠC', '12A4', 'Nam', '08/10/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000132', 'NGÔ QUỐC LONG', '12A4', 'Nam', '25/02/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000133', 'PHẠM KHÁNH LONG', '12A4', 'Nam', '25/10/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000134', 'LÊ TẤN LỘC', '12A4', 'Nam', '26/10/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000135', 'NGUYỄN DƯ GIA MẪN', '12A4', 'Nữ', '27/11/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000136', 'LÊ NHẬT ANH MINH', '12A4', 'Nam', '13/05/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000137', 'NGUYỄN NGỌC KIM NGÂN', '12A4', 'Nữ', '07/03/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000138', 'NGUYỄN TRẦN KIM NGÂN', '12A4', 'Nữ', '16/01/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000139', 'PHẠM TRẦN KIM NGÂN', '12A4', 'Nữ', '17/01/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000140', 'TÔN NGUYỄN ĐÔNG NGHI', '12A4', 'Nữ', '07/10/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000141', 'NGUYỄN KIM NGỌC', '12A4', 'Nữ', '08/04/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000142', 'QUÁCH CHẤN NGUYÊN', '12A4', 'Nam', '05/05/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000143', 'VŨ HUỲNH THỊ YẾN NHI', '12A4', 'Nữ', '22/01/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000144', 'NGUYỄN HUỲNH KHÁNH NHƯ', '12A4', 'Nữ', '22/05/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000145', 'TRẦN VĂN PHÁT', '12A4', 'Nam', '23/08/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000146', 'NGUYỄN THÀNH PHÚ', '12A4', 'Nam', '11/01/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000147', 'NGUYỄN HOÀNG PHÚC', '12A4', 'Nam', '29/04/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000148', 'TRẦN NGUYỄN TUYẾT PHƯƠNG', '12A4', 'Nữ', '02/02/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000149', 'TRẦN TÚ QUYÊN', '12A4', 'Nữ', '15/11/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000150', 'PHAN TẤN SANG', '12A4', 'Nam', '07/04/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000151', 'TÔ THỊ THANH THẢO', '12A4', 'Nữ', '05/11/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000152', 'MÃ VĂN THIỆN', '12A4', 'Nam', '22/12/2008', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000153', 'HỒ NGUYỄN ANH THƯ', '12A4', 'Nữ', '30/06/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000154', 'TRẦN THỊ ANH THƯ', '12A4', 'Nữ', '07/06/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000155', 'NGUYỄN NGỌC BẢO TRÂN', '12A4', 'Nữ', '21/03/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000156', 'NGUYỄN KHẢ TRI', '12A4', 'Nam', '23/12/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000157', 'TRẦN NGỌC THANH TUẤN', '12A4', 'Nam', '05/11/2008', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000158', 'NGUYỄN PHẠM THANH VÂN', '12A4', 'Nữ', '17/11/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000159', 'NGUYỄN NGỌC TƯỜNG VI', '12A4', 'Nữ', '02/03/2008', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000160', 'TRẦN QUỐC VIỆT', '12A4', 'Nam', '12/05/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000161', 'TRẦN HOÀNG QUANG VINH', '12A4', 'Nam', '03/06/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000162', 'TRƯƠNG Ý VY', '12A4', 'Nữ', '24/09/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000246', 'LÊ NGỌC BẢO ANH', '12A7', 'Nữ', '07/10/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000247', 'ĐÀM PHẠM THIÊN BẢO', '12A7', 'Nam', '19/02/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000248', 'HUỲNH GIA BẢO', '12A7', 'Nam', '05/10/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000249', 'LƯƠNG THƯ BÌNH', '12A7', 'Nữ', '27/05/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000250', 'NGUYỄN BI BON', '12A7', 'Nam', '11/10/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000251', 'NGUYỄN KIM DUNG', '12A7', 'Nữ', '23/10/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000252', 'TRẦN HUỆ HẰNG', '12A7', 'Nữ', '28/07/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000253', 'TRƯƠNG BẢO HÂN', '12A7', 'Nữ', '10/12/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000254', 'VÕ XUÂN HIỀN', '12A7', 'Nữ', '13/02/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000255', 'KHƯƠNG MỸ HOA', '12A7', 'Nữ', '25/11/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000256', 'HỒNG TỬ KỲ', '12A7', 'Nữ', '09/08/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000257', 'CHỀNH TRÍ LÂM', '12A7', 'Nam', '02/09/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000258', 'NGÔ KIM LIÊN', '12A7', 'Nữ', '16/09/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000259', 'HỨA MỸ LINH', '12A7', 'Nữ', '31/08/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000260', 'QUÁCH ÁI LINH', '12A7', 'Nữ', '07/04/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000261', 'TRƯƠNG PHỤNG LINH', '12A7', 'Nữ', '29/06/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000262', 'TĂNG THỊ XUÂN MAI', '12A7', 'Nữ', '09/12/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000263', 'ĐẶNG THỊ TRÀ MY', '12A7', 'Nữ', '23/11/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000264', 'TRƯƠNG HAN NA', '12A7', 'Nữ', '31/10/2008', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000265', 'LÂM NHẬT NAM', '12A7', 'Nam', '24/06/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000266', 'NGUYỄN KHÁNH NGÂN', '12A7', 'Nữ', '16/09/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000267', 'VƯƠNG HỒNG NGÂN', '12A7', 'Nữ', '14/12/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000268', 'LĂNG MINH NGUYỆT', '12A7', 'Nữ', '17/12/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000269', 'ĐẶNG MINH NHẬT', '12A7', 'Nam', '29/09/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000270', 'GIANG QUỲNH NGỌC NHI', '12A7', 'Nữ', '18/06/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000271', 'TRIỆU MẪN NHI', '12A7', 'Nữ', '31/10/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000272', 'TRỊNH TUYẾT NHI', '12A7', 'Nữ', '14/04/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000273', 'HUỲNH THỊ PHI PHỤNG', '12A7', 'Nữ', '26/10/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000274', 'DIỆP VĨNH QUANG', '12A7', 'Nam', '16/09/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000275', 'TRƯƠNG MỸ QUYÊN', '12A7', 'Nữ', '18/08/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000276', 'TRƯƠNG UYỂN SANG', '12A7', 'Nữ', '02/07/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000277', 'TRẦN NGUYỄN ĐAN THANH', '12A7', 'Nữ', '16/05/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000278', 'NGÔ QUỐC THỊNH', '12A7', 'Nam', '06/07/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000279', 'LÂM THANH THƯ', '12A7', 'Nữ', '09/11/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000280', 'NGUYỄN THỊ NGỌC TRÂM', '12A7', 'Nữ', '27/12/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000281', 'VÕ HOÀNG BẢO TRÂN', '12A7', 'Nữ', '16/08/2008', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000282', 'VÕ NGỌC TUYỀN', '12A7', 'Nữ', '22/07/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000283', 'NGUYỄN THỊ NGỌC TUYẾT', '12A7', 'Nữ', '25/09/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000284', 'HỒ TUẤN VĨ', '12A7', 'Nam', '06/02/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000285', 'ĐÀM QUỐC VINH', '12A7', 'Nam', '17/05/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000286', 'NGŨ CHÍ VINH', '12A7', 'Nam', '01/12/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000287', 'DIÊU HOÀNG YẾN', '12A7', 'Nữ', '17/08/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000288', 'PHẠM QUỲNH ANH', '12A8', 'Nữ', '30/01/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000289', 'TẠ GIA ÂN', '12A8', 'Nữ', '09/10/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000290', 'NGUYỄN HUỲNH GIA BẢO', '12A8', 'Nam', '20/04/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000291', 'NGUYỄN NGỌC GIA BẢO', '12A8', 'Nữ', '19/09/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000292', 'LÂM NGỌC CHÂU', '12A8', 'Nữ', '19/10/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000293', 'BÙI NGỌC DIỆP', '12A8', 'Nữ', '24/04/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000294', 'BÀNH TUYẾT DUYÊN', '12A8', 'Nữ', '18/08/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000295', 'LÂM NHƯ HIỀN', '12A8', 'Nữ', '14/08/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000296', 'ĐẶNG PHAN ÁNH HỒNG', '12A8', 'Nữ', '23/11/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000297', 'BÙI QUỐC HUY', '12A8', 'Nam', '14/04/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000298', 'TRƯƠNG MINH KHÔI', '12A8', 'Nam', '01/04/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000299', 'NGUYỄN NGỌC HOÀNG KIM', '12A8', 'Nữ', '28/04/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000300', 'LÝ HOÀNG LINH', '12A8', 'Nam', '17/05/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000301', 'NGŨ NGỌC LINH', '12A8', 'Nữ', '15/10/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000302', 'UNG THÙY THANH MAI', '12A8', 'Nữ', '06/12/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000303', 'ĐINH THU NGÂN', '12A8', 'Nữ', '21/01/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000304', 'LÊ LƯƠNG QUẾ NGỌC', '12A8', 'Nữ', '18/12/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000305', 'NGUYỄN THANH THẢO NGỌC', '12A8', 'Nữ', '05/05/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000306', 'BÙI THANH NGUYÊN', '12A8', 'Nữ', '14/12/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000307', 'ĐINH THIỆN NHÀN', '12A8', 'Nữ', '07/09/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000308', 'HUỲNH THÀNH NHÂN', '12A8', 'Nam', '07/09/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000309', 'DƯƠNG BẢO NHI', '12A8', 'Nữ', '10/07/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000310', 'ĐẶNG NGỌC LINH NHƯ', '12A8', 'Nữ', '02/04/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000311', 'LẠI THỊ TÂM NHƯ', '12A8', 'Nữ', '09/10/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000312', 'BẠCH GIA PHÚ', '12A8', 'Nam', '28/02/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000313', 'TRẦN BẢO PHÚC', '12A8', 'Nam', '18/08/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000314', 'TRẦN NGỌC PHỤNG', '12A8', 'Nữ', '14/12/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000315', 'HÀ MỸ PHƯƠNG', '12A8', 'Nữ', '20/09/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000316', 'LÊ NHƯ QUỲNH', '12A8', 'Nữ', '27/03/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000317', 'TÔ NHƯ QUỲNH', '12A8', 'Nữ', '10/01/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000318', 'TRẦN MINH THẮNG', '12A8', 'Nam', '25/11/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000319', 'TRẦN NGUYỄN MAI THI', '12A8', 'Nữ', '01/07/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000320', 'NGUYỄN CHÍ THIỆN', '12A8', 'Nam', '24/01/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000321', 'TRẦN THÁI THIỆN', '12A8', 'Nam', '16/07/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000322', 'TRẦN THỊ DIỆU THY', '12A8', 'Nữ', '03/02/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000323', 'PHAN NGUYỄN THÙY TRÂM', '12A8', 'Nữ', '16/08/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000324', 'NGUYỄN MINH TUẤN', '12A8', 'Nam', '06/07/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000325', 'VŨ MINH TUẤN', '12A8', 'Nam', '17/06/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000326', 'PHẠM ĐỖ TƯỜNG VI', '12A8', 'Nữ', '28/12/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000327', 'NGUYỄN PHƯỚC VINH', '12A8', 'Nam', '10/11/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000328', 'TRẦN TRƯƠNG PHƯƠNG VY', '12A8', 'Nữ', '01/11/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000329', 'VÕ GIA VY', '12A8', 'Nữ', '26/09/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000375', 'TRẦN GIA BẢO', '12A10', 'Nam', '16/09/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000376', 'LÊ NGUYỄN BỐI BỐI', '12A10', 'Nữ', '09/07/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000377', 'TRẦN LÊ DUẨN', '12A10', 'Nam', '13/08/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000378', 'LÝ QUỐC ĐẠT', '12A10', 'Nam', '28/08/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000379', 'HÀ HẢI ĐĂNG', '12A10', 'Nam', '03/11/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000380', 'TRẦN NHẬT HÀO', '12A10', 'Nam', '04/10/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000381', 'HUỲNH NGỌC HÂN', '12A10', 'Nữ', '23/01/2008', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000382', 'TRẦN THIÊN HÒA', '12A10', 'Nam', '01/01/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000383', 'TRẦN VẠN QUỐC HOÀNG', '12A10', 'Nam', '29/05/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000384', 'NGUYỄN LONG KHANG', '12A10', 'Nam', '02/06/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000385', 'NGUYỄN BẢO KHANH', '12A10', 'Nữ', '07/09/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000386', 'TRƯƠNG NHÃ KỲ', '12A10', 'Nữ', '23/12/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000387', 'LƯU NGUYỄN HOÀNG LONG', '12A10', 'Nam', '21/03/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000388', 'QUÁCH KIM NGÂN', '12A10', 'Nữ', '09/10/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000389', 'VÕ PHƯƠNG NGHI', '12A10', 'Nữ', '01/03/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000390', 'NGUYỄN HỒNG BẢO NGỌC', '12A10', 'Nữ', '08/06/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000391', 'TRẦN HOÀNG NHƯ NGỌC', '12A10', 'Nữ', '18/12/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000392', 'HUỲNH MINH NHẬT', '12A10', 'Nam', '01/05/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000393', 'LA TUYẾT NHI', '12A10', 'Nữ', '10/02/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000394', 'LÊ NGỌC NHI', '12A10', 'Nữ', '22/05/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000395', 'PHẠM NGỌC NHI', '12A10', 'Nữ', '13/02/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000396', 'LÂM CẨM PHONG', '12A10', 'Nam', '06/07/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000397', 'DIỆP GIA PHÚ', '12A10', 'Nam', '17/04/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000398', 'TRẦN THANH TÂM', '12A10', 'Nữ', '02/07/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000399', 'NGUYỄN LÊ KIM THOA', '12A10', 'Nữ', '08/02/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000400', 'BÙI MẠNH TIẾN', '12A10', 'Nam', '07/06/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000401', 'TRẦN NGUYỄN HUỲNH TRANG', '12A10', 'Nữ', '03/09/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000402', 'HỒ NGUYỄN MAI TRÂM', '12A10', 'Nữ', '14/01/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000403', 'NGUYỄN NGỌC TRÂN', '12A10', 'Nữ', '18/09/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000404', 'HUỲNH MINH TRIẾT', '12A10', 'Nam', '07/05/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000405', 'PHẠM NGỌC TRỌNG', '12A10', 'Nam', '18/12/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000406', 'ĐÀO NGỌC THANH TRÚC', '12A10', 'Nữ', '25/02/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000407', 'NGUYỄN LÊ MINH TUYẾT', '12A10', 'Nữ', '29/07/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000408', 'NGUYỄN ĐÀM PHƯƠNG UYÊN', '12A10', 'Nữ', '24/06/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000409', 'PHẠM THANH VÂN', '12A10', 'Nữ', '14/07/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000410', 'LƯ MINH VŨ', '12A10', 'Nam', '25/02/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000411', 'ĐỖ LÊ TRIỆU VY', '12A10', 'Nữ', '10/11/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000412', 'ĐỖ THỤY YẾN VY', '12A10', 'Nữ', '14/05/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000413', 'NGUYỄN NGỌC MINH VY', '12A10', 'Nữ', '27/02/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000414', 'PHẠM NGUYỄN TƯỜNG VY', '12A10', 'Nữ', '19/11/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('12000415', 'TRẦN VÕ HẢI VY', '12A10', 'Nữ', '12/06/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000001', 'ĐỖ TRỊNH MINH ANH', '11A1', 'Nữ', '30/09/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000002', 'TRƯƠNG QUỲNH ANH', '11A1', 'Nữ', '20/04/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000003', 'HUỲNH THỊ CẨM BÌNH', '11A1', 'Nữ', '13/07/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000004', 'PHẠM ANH DUY', '11A1', 'Nam', '01/09/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000005', 'HUỲNH GIA HÂN', '11A1', 'Nữ', '15/01/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000006', 'PHẠM HOÀNG GIA HÂN', '11A1', 'Nữ', '08/11/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000007', 'LAI KIẾN HÒA', '11A1', 'Nam', '15/11/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000008', 'PHẠM NHẬT HUY', '11A1', 'Nam', '06/12/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000009', 'ĐINH PHÚC KHANG', '11A1', 'Nam', '10/03/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000010', 'NGUYỄN MINH KHANG', '11A1', 'Nam', '20/04/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000011', 'NGUYỄN THÁI KHANG', '11A1', 'Nam', '04/07/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000012', 'MAI VĂN TUẤN KIỆT', '11A1', 'Nam', '16/12/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000013', 'TRẦN PHẠM GIA LINH', '11A1', 'Nữ', '24/11/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000014', 'NGUYỄN THỊ BÍCH LOAN', '11A1', 'Nữ', '24/02/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000015', 'PHẠM ĐÀO KIM NGÂN', '11A1', 'Nữ', '03/01/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000016', 'LÊ MẪN NGHI', '11A1', 'Nữ', '17/12/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000017', 'NGUYỄN TRẦN BÍCH NGỌC', '11A1', 'Nữ', '09/11/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000018', 'VÕ TRẦN KIM NGỌC', '11A1', 'Nữ', '13/07/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000019', 'SƠN KHÁNH NHÂN', '11A1', 'Nam', '30/09/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000020', 'PHẠM THỊ QUỲNH NHƯ', '11A1', 'Nữ', '27/02/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000021', 'FARIDA NOORISA', '11A1', 'Nữ', '14/06/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000022', 'LƯU ĐÌNH PHÚ', '11A1', 'Nam', '26/03/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000023', 'NGÔ HOÀNG THANH PHÚC', '11A1', 'Nam', '08/08/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000024', 'VƯU HUỆ QUÂN', '11A1', 'Nữ', '08/10/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000025', 'CAO THỊ DIỄM QUÝ', '11A1', 'Nữ', '05/09/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000026', 'NGUYỄN ANH THƯ', '11A1', 'Nữ', '18/09/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000027', 'TRỊNH TRẦN ANH THƯ', '11A1', 'Nữ', '03/06/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000028', 'TRẦN THANH TRÀ', '11A1', 'Nữ', '09/02/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000029', 'NGUYỄN THỊ THÙY TRANG', '11A1', 'Nữ', '01/02/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000030', 'HỒ NGUYỄN BẢO TRÂN', '11A1', 'Nữ', '01/01/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000031', 'HỒ THANH TRÚC', '11A1', 'Nữ', '04/03/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000032', 'PHẠM TĂNG THANH TRÚC', '11A1', 'Nữ', '24/06/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000033', 'TĂNG THANH TRÚC', '11A1', 'Nữ', '23/11/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000034', 'NGUYỄN ĐỨC TRUNG', '11A1', 'Nam', '10/08/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000035', 'NGUYỄN THANH TUẤN', '11A1', 'Nam', '18/12/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000036', 'PHAN LÊ TƯỜNG VI', '11A1', 'Nữ', '21/04/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000037', 'ĐÀO QUANG VINH', '11A1', 'Nam', '15/04/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000038', 'TRẦN HÁN VINH', '11A1', 'Nam', '11/07/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000039', 'NGUYỄN NGỌC HOÀNG VY', '11A1', 'Nữ', '29/07/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000040', 'NGUYỄN NGỌC NHƯ Ý', '11A1', 'Nữ', '04/03/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000041', 'NGUYỄN NGỌC HOÀNG AN', '11A2', 'Nữ', '12/02/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000042', 'BÙI HOÀNG ANH', '11A2', 'Nữ', '14/09/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000043', 'CHIÊU TUYẾT ANH', '11A2', 'Nữ', '21/11/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000044', 'NGUYỄN HOÀNG QUỐC BẢO', '11A2', 'Nam', '25/07/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000045', 'PHAN ĐIỀN GIA BẢO', '11A2', 'Nam', '15/02/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000046', 'THẠCH MINH CHÂU', '11A2', 'Nữ', '17/04/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000047', 'TRƯƠNG THỊ NGỌC HÀ', '11A2', 'Nữ', '25/10/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000048', 'HÀ QUÂN HẢI', '11A2', 'Nam', '16/03/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000049', 'TRẦN GIA HÂN', '11A2', 'Nữ', '02/06/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000050', 'PHAN NGỌC LAN', '11A2', 'Nữ', '04/10/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000051', 'ĐỖ HẢI LÂM', '11A2', 'Nam', '27/08/2008', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000052', 'NGUYỄN VY LINH', '11A2', 'Nữ', '05/05/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000053', 'LÊ HOÀNG TRÚC MAI', '11A2', 'Nữ', '28/01/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000054', 'TRẦN HẢI MINH', '11A2', 'Nam', '19/09/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000055', 'LÊ PHAN TRÀ MY', '11A2', 'Nữ', '16/02/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000056', 'LÊ TRẦN DIỄM MY', '11A2', 'Nữ', '03/10/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000057', 'NGUYỄN HOÀI NAM', '11A2', 'Nam', '24/10/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000058', 'ĐẶNG THỊ THANH NHÀN', '11A2', 'Nữ', '20/05/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000059', 'NGUYỄN NGỌC BẢO NHI', '11A2', 'Nữ', '02/06/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000060', 'VÕ QUỲNH NHƯ', '11A2', 'Nữ', '26/12/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000061', 'PHẠM NGUYỄN DUY PHƯỚC', '11A2', 'Nam', '09/06/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000062', 'NGUYỄN THÁI MAI PHƯƠNG', '11A2', 'Nữ', '05/02/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000063', 'TẠ TÚ PHƯƠNG', '11A2', 'Nữ', '03/02/2008', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000064', 'TRẦN MINH QUANG', '11A2', 'Nam', '06/04/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000065', 'LÝ ÁNH QUYÊN', '11A2', 'Nữ', '21/02/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000066', 'NGUYỄN HỮU TÀI', '11A2', 'Nam', '05/10/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000067', 'NGUYỄN NGỌC YẾN THANH', '11A2', 'Nữ', '20/09/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000068', 'LỤC PHƯƠNG THIỆN', '11A2', 'Nam', '08/11/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000069', 'TRẦN VĂN HÙNG THUẬN', '11A2', 'Nam', '23/01/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000070', 'NGUYỄN THỊ THÙY TIÊN', '11A2', 'Nữ', '13/03/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000071', 'NGUYỄN TRUNG TÍN', '11A2', 'Nam', '24/02/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000072', 'HUỲNH NGỌC TRÂN', '11A2', 'Nữ', '07/04/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000073', 'LƯƠNG LỤC KIẾT TƯỜNG', '11A2', 'Nam', '10/01/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000074', 'TRẦN NGỌC SƠN VƯƠNG', '11A2', 'Nam', '05/11/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000075', 'HỒ HUỲNH BẢO VY', '11A2', 'Nữ', '14/06/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000076', 'LÊ THẢO VY', '11A2', 'Nữ', '28/11/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000077', 'NGUYỄN NGỌC THANH VY', '11A2', 'Nữ', '26/07/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000078', 'NGUYỄN NGỌC NHƯ Ý', '11A2', 'Nữ', '28/05/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000079', 'ĐỖ HOÀNG YẾN', '11A2', 'Nữ', '15/11/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000080', 'NGUYỄN KHÁNH CHÂU', '11A3', 'Nữ', '06/07/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000081', 'TRIỆU MỸ CHI', '11A3', 'Nữ', '20/04/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000082', 'NGUYỄN TUẤN DŨNG', '11A3', 'Nam', '15/08/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000083', 'NGUYỄN KHẮC TRÍ ĐẠT', '11A3', 'Nam', '01/08/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000084', 'LÊ CẨM HÀO', '11A3', 'Nam', '26/06/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000085', 'TRẦN THỊ NGỌC HÂN', '11A3', 'Nữ', '19/01/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000086', 'LÊ KIM HUỆ', '11A3', 'Nữ', '29/05/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000087', 'NGUYỄN DUY BẢO HUY', '11A3', 'Nam', '14/05/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000088', 'PHAN NGUYỄN TIẾN HƯNG', '11A3', 'Nam', '22/02/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000089', 'HỒ PHÚC KHANG', '11A3', 'Nam', '07/04/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000090', 'HUỲNH TRỌNG KHANG', '11A3', 'Nam', '07/10/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000091', 'LẠI VÕ MỸ LINH', '11A3', 'Nữ', '13/12/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000092', 'LÊ NGUYỄN TRANG LINH', '11A3', 'Nữ', '10/12/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000093', 'TRẦN NGỌC TRÚC LY', '11A3', 'Nữ', '09/04/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000094', 'QUAN ÂN TÔ MẪN', '11A3', 'Nữ', '05/05/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000095', 'TĂNG GIA MẪN', '11A3', 'Nữ', '18/11/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000096', 'HUỲNH HẢI MINH', '11A3', 'Nam', '06/08/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000097', 'DƯƠNG THỊ TRÀ MY', '11A3', 'Nữ', '04/12/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000098', 'LÊ MINH HIẾU NGHĨA', '11A3', 'Nam', '27/08/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000099', 'NGÂN HOÀNG NHƯ NGỌC', '11A3', 'Nữ', '28/11/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000100', 'NGUYỄN HỒ BẢO NGỌC', '11A3', 'Nữ', '17/03/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000101', 'PHAN THIỆN NHÂN', '11A3', 'Nam', '21/12/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000102', 'ĐẶNG CƯỜNG PHÁT', '11A3', 'Nam', '27/11/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000103', 'TẦN VĨ PHONG', '11A3', 'Nam', '30/07/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000104', 'ĐINH VÕ HOÀNG PHÚC', '11A3', 'Nam', '09/07/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000105', 'TRỊNH VĨ PHÚC', '11A3', 'Nam', '24/02/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000106', 'PHÙNG XUÂN QUỐC', '11A3', 'Nam', '15/03/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000107', 'PHAN PHÚ QUÝ', '11A3', 'Nam', '19/04/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000108', 'NGUYỄN NGỌC NHƯ QUỲNH', '11A3', 'Nữ', '28/11/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000109', 'CHẾ THANH SƠN', '11A3', 'Nam', '22/07/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000110', 'TĂNG TRẦN QUẢNG THĂNG', '11A3', 'Nam', '12/05/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000111', 'NGUYỄN THỊ KIỀU THI', '11A3', 'Nữ', '21/09/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000112', 'NGHIÊM Ý THUẬN', '11A3', 'Nam', '27/07/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000113', 'TÔ ANH THƯ', '11A3', 'Nữ', '12/10/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000114', 'TRẦN MINH TRÍ', '11A3', 'Nam', '23/03/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000115', 'LÊ QUANG TRƯỜNG', '11A3', 'Nam', '14/04/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000116', 'VÕ NGUYÊN CÁT TƯỜNG', '11A3', 'Nữ', '03/06/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000117', 'LƯƠNG THÚY VÂN', '11A3', 'Nữ', '02/02/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000118', 'LÊ HOÀNG PHƯƠNG VY', '11A3', 'Nữ', '28/01/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000119', 'MÃ NGỌC VY', '11A3', 'Nữ', '23/09/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000120', 'NGUYỄN TRẦN THÚY VY', '11A3', 'Nữ', '18/10/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000121', 'PHẠM HUỲNH ANH', '11A4', 'Nữ', '08/12/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000122', 'TRẦN NGỌC TRÂM ANH', '11A4', 'Nữ', '10/10/2006', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000123', 'PHƯƠNG THỊ NGỌC ÁNH', '11A4', 'Nữ', '21/05/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000124', 'HUỲNH ĐẶNG THIÊN ÂN', '11A4', 'Nữ', '26/07/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000125', 'DƯƠNG GIA BẢO', '11A4', 'Nam', '07/09/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000126', 'LÊ HOÀNG QUỐC BẢO', '11A4', 'Nam', '01/02/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000127', 'PHẠM MAI GIA BẢO', '11A4', 'Nam', '23/03/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000128', 'NGUYỄN THÀNH ĐẠT', '11A4', 'Nam', '26/03/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000129', 'NGUYỄN HOÀI ĐỨC', '11A4', 'Nam', '21/03/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000130', 'NGUYỄN NGỌC QUỲNH GIAO', '11A4', 'Nữ', '26/07/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000131', 'HUỲNH PHÚ HẢI', '11A4', 'Nam', '26/12/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000132', 'NGUYỄN HUỲNH KIM HẰNG', '11A4', 'Nữ', '16/07/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000133', 'PHAN NGỌC HÂN', '11A4', 'Nữ', '30/06/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000134', 'TRẦN GIA HÂN', '11A4', 'Nữ', '04/08/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000135', 'VŨ NGỌC HÂN', '11A4', 'Nữ', '01/11/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000136', 'HÀ TẤN HIỆP', '11A4', 'Nam', '15/12/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000137', 'NGUYỄN THỊ MINH HIẾU', '11A4', 'Nữ', '11/02/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000138', 'NGUYỄN TRUNG HIẾU', '11A4', 'Nam', '22/06/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000139', 'NGUYỄN NGỌC HUY', '11A4', 'Nam', '10/06/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000140', 'TRẦN ĐĂNG KHOA', '11A4', 'Nam', '20/07/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000141', 'NGUYỄN THỊ BÍCH NGÂN', '11A4', 'Nữ', '02/06/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000142', 'TRƯƠNG TRỌNG NGHĨA', '11A4', 'Nam', '27/03/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000143', 'TRẦN THANH NGỌC', '11A4', 'Nữ', '10/04/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000144', 'VÒNG CẨM NGUYÊN', '11A4', 'Nam', '07/06/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000145', 'NGUYỄN NGỌC KHẢ NHI', '11A4', 'Nữ', '20/08/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000146', 'NGUYỄN PHƯƠNG NHI', '11A4', 'Nữ', '21/02/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000147', 'HỒ THÁI PHONG', '11A4', 'Nam', '08/07/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000148', 'LÊ VĂN PHÔNG', '11A4', 'Nam', '22/05/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000149', 'NGUYỄN VĂN HOÀN PHƯỚC', '11A4', 'Nam', '21/07/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000150', 'TRƯƠNG THANH PHƯƠNG', '11A4', 'Nữ', '07/12/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000151', 'VŨ THANH QUÝ', '11A4', 'Nam', '13/04/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000152', 'PHẠM CHÍ THIỆN', '11A4', 'Nam', '01/11/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000153', 'ĐOÀN HUỲNH TIẾN THỊNH', '11A4', 'Nam', '16/04/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000154', 'HUỲNH ĐỨC THỊNH', '11A4', 'Nam', '19/08/2008', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000155', 'QUÁCH PHÙNG NHƯ THÙY', '11A4', 'Nữ', '14/07/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000156', 'NGUYỄN PHƯƠNG TOÀN', '11A4', 'Nam', '16/03/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000157', 'LÊ NGUYỄN HOÀNG TRINH', '11A4', 'Nữ', '30/10/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000158', 'TRẦN GIA TUẤN', '11A4', 'Nam', '24/06/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000159', 'HUỲNH MAI THANH VÂN', '11A4', 'Nữ', '14/12/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000160', 'NGUYỄN PHI YẾN', '11A4', 'Nữ', '16/07/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000161', 'TRANG THIÊN BẢO', '11A5', 'Nam', '06/11/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000162', 'TRẦN PHỐI DUNG', '11A5', 'Nữ', '22/01/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000163', 'NGÔ HUỲNH GIA HÂN', '11A5', 'Nữ', '12/02/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000164', 'HUỲNH TRẦN HIẾU HIỀN', '11A5', 'Nữ', '01/11/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000165', 'BÙI NGỌC HIẾU', '11A5', 'Nam', '18/12/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000166', 'TÔ MINH HOÀNG', '11A5', 'Nam', '11/05/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000167', 'NGUYỄN MINH HUY', '11A5', 'Nam', '23/03/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000168', 'NGUYỄN TUẤN KHANG', '11A5', 'Nam', '02/09/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000169', 'NGUYỄN TUẤN KHANG', '11A5', 'Nam', '08/07/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000170', 'CHÂU TIỂU KIỀU', '11A5', 'Nữ', '12/01/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000171', 'NGUYỄN THIÊN KIM', '11A5', 'Nữ', '29/07/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000172', 'LÝ THƯ KỲ', '11A5', 'Nữ', '01/11/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000173', 'NGUYỄN NGỌC GIA LINH', '11A5', 'Nữ', '11/12/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000174', 'LƯƠNG HỮU MINH', '11A5', 'Nam', '20/04/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000175', 'NGUYỄN ĐỖ QUỐC MINH', '11A5', 'Nam', '03/02/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000176', 'PHẠM QUỐC MINH', '11A5', 'Nam', '16/12/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000177', 'PHẠM THÚY NGA', '11A5', 'Nữ', '20/03/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000178', 'VÕ THỊ THANH NGÂN', '11A5', 'Nữ', '04/09/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000179', 'HỒ NGUYỄN BẢO NGHI', '11A5', 'Nữ', '11/12/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000180', 'NGUYỄN HOÀNG BẢO NGỌC', '11A5', 'Nữ', '24/12/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000181', 'NGUYỄN THỊ ÁNH NGUYÊN', '11A5', 'Nữ', '30/10/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000182', 'TRẦN ĐÌNH NGUYÊN', '11A5', 'Nam', '10/12/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000183', 'HÀ TẤN PHÁT', '11A5', 'Nam', '13/11/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000184', 'NGUYỄN HUỲNH GIA PHÚC', '11A5', 'Nam', '22/03/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000185', 'NGUYỄN LÊ NHƯ QUỲNH', '11A5', 'Nữ', '19/07/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000186', 'HUỲNH BỘI SAN', '11A5', 'Nữ', '22/11/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000187', 'LAI VĂN TÂM', '11A5', 'Nam', '07/05/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000188', 'TRẦN VÕ THANH THANH', '11A5', 'Nữ', '14/08/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000189', 'DIỆP PHƯƠNG THẢO', '11A5', 'Nữ', '15/02/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000190', 'SẦM QUỐC THẢO', '11A5', 'Nam', '17/09/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000191', 'PHẠM NGÔ HỒNG THẮM', '11A5', 'Nữ', '08/04/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000192', 'PHAN LÊ BẢO TRÂN', '11A5', 'Nữ', '06/05/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000193', 'LÊ ĐÌNH TRÍ', '11A5', 'Nam', '24/10/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000194', 'LÝ MINH TRƯỜNG', '11A5', 'Nam', '20/02/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000195', 'TRẦN NGỌC TƯỜNG VY', '11A5', 'Nữ', '12/09/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000196', 'TRẦN TRÚC VY', '11A5', 'Nữ', '23/11/2009', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000197', 'VÕ TƯỜNG VY', '11A5', 'Nữ', '11/04/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000198', 'NGUYỄN THỊ NGỌC XUÂN', '11A5', 'Nữ', '07/05/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000199', 'LÊ LÂM NHƯ Ý', '11A5', 'Nữ', '15/06/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('11000200', 'TRƯƠNG NHƯ Ý', '11A5', 'Nữ', '12/01/2010', 'AN-DONG');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000001', 'LƯU GIA ĐÀO', '10A', 'Nữ', '12/04/2009', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000002', 'HUỲNH TUẤN ĐẠT', '10A', 'Nam', '28/10/2009', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000003', 'PHẠM NGUYỄN THÀNH ĐẠT', '10A', 'Nam', '15/04/2011', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000004', 'VÕ TRƯƠNG HOÀI ĐỨC', '10A', 'Nam', '01/01/2008', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000005', 'HỒ NGỌC HÀ', '10A', 'Nữ', '23/02/2011', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000006', 'PHAN QUỐC HÀO', '10A', 'Nam', '04/10/2011', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000007', 'PHÙNG NGUYỄN MINH HÀO', '10A', 'Nam', '06/04/2010', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000008', 'VĂN GIA HÂN', '10A', 'Nữ', '26/01/2009', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000009', 'LƯU PHỤNG HOA', '10A', 'Nữ', '03/03/1988', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000010', 'LÂM QUỐC HUY', '10A', 'Nam', '18/06/2005', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000011', 'NGUYỄN TẤN HƯNG', '10A', 'Nam', '23/01/2005', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000012', 'HUỲNH MỸ HƯƠNG', '10A', 'Nữ', '13/11/2004', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000013', 'LÊ HOÀNG KHANG', '10A', 'Nam', '27/10/2005', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000014', 'PHAN HOÀI PHÚC KHANG', '10A', 'Nam', '31/10/2005', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000015', 'VÕ NHẬT KHÁNH', '10A', 'Nam', '17/12/2010', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000016', 'LÝ NGUYỄN THIÊN KIM', '10A', 'Nữ', '25/08/2009', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000017', 'TRẦN TẤN LỘC', '10A', 'Nam', '03/09/2010', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000018', 'NGUYỄN TUẤN LỢI', '10A', 'Nam', '30/04/2010', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000019', 'NGUYỄN NGỌC KIỀU DIỄM MY', '10A', 'Nữ', '25/06/2004', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000020', 'NGÔ NHẤT THỤC MỸ', '10A', 'Nữ', '21/07/2003', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000021', 'PHAN THÀNH NAM', '10A', 'Nam', '29/07/2005', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000022', 'NGUYỄN BẢO NGỌC', '10A', 'Nữ', '21/10/2011', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000023', 'ĐỖ THỊ QUỲNH NHƯ', '10A', 'Nữ', '30/11/2011', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000024', 'CHÂU NHUẬN PHÁT', '10A', 'Nam', '19/07/2009', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000025', 'TẠ THIỆU PHONG', '10A', 'Nam', '13/03/2007', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000026', 'TRƯƠNG ÍCH PHÚ', '10A', 'Nam', '16/12/2001', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000027', 'CHÂU HUỲNH NHƯ QUỲNH', '10A', 'Nữ', '27/10/2008', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000028', 'CHUNG ANH TÀI', '10A', 'Nam', '04/06/2011', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000029', 'TÔ KIẾN THÀNH', '10A', 'Nam', '21/12/2011', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000030', 'HÀ VĂN CÔNG THUẬN', '10A', 'Nam', '10/03/2011', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000031', 'NGUYỄN THỊ MINH THƯ', '10A', 'Nữ', '21/03/2011', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000032', 'PHẠM KIM THƯ', '10A', 'Nữ', '27/09/2010', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000033', 'TRẦN NGỌC TRÂM', '10A', 'Nữ', '03/12/2003', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000034', 'NGUYỄN QUỐC TRÍ', '10A', 'Nam', '18/12/2008', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000035', 'LÊ MAI THANH TRÚC', '10A', 'Nữ', '29/10/2011', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000036', 'ĐỖ PHÚ VĂN', '10A', 'Nam', '26/02/2010', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000037', 'LÊ MINH ANH', '10C', 'Nam', '11/06/2010', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000038', 'A THANH BIN', '10C', 'Nam', '17/09/2011', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000039', 'NGUYỄN HOÀNG DŨNG', '10C', 'Nam', '08/07/2009', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000040', 'HUỲNH MINH ĐĂNG', '10C', 'Nam', '11/04/2009', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000041', 'A VĂN HOÀNG', '10C', 'Nam', '31/10/2011', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000042', 'A LÊ HÙNG', '10C', 'Nam', '15/01/2011', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000043', 'CAO NGUYỄN PHÚC HUY', '10C', 'Nam', '14/09/2010', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000044', 'GIANG GIA HUY', '10C', 'Nam', '26/03/2005', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000045', 'TÀO HỒNG KHANG', '10C', 'Nam', '28/11/2006', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000046', 'TĂNG MINH KIỆN', '10C', 'Nam', '01/06/2004', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000047', 'TRẦN DŨNG KIỆT', '10C', 'Nam', '17/08/2002', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000048', 'NGUYỄN THIÊN KIM', '10C', 'Nữ', '06/05/2006', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000049', 'A LÂN', '10C', 'Nam', '02/09/2011', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000050', 'NGUYỄN CHÍ LĨNH', '10C', 'Nam', '05/07/2009', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000051', 'VÕ THÀNH NAM', '10C', 'Nam', '12/07/2009', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000052', 'LÝ THIÊN NGÂN', '10C', 'Nữ', '26/03/2008', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000053', 'HOẮC HUỆ NHÀN', '10C', 'Nữ', '03/08/2011', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000054', 'A PHỤC', '10C', 'Nam', '25/12/2011', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000055', 'NGUYỄN MINH QUÂN', '10C', 'Nam', '12/11/2010', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000056', 'NGUYỄN MINH TÂM', '10C', 'Nam', '13/04/2007', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000057', 'LÂM QUỐC THÁI', '10C', 'Nam', '07/12/2006', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000058', 'LIÊU CẨM THÁI', '10C', 'Nam', '24/05/1994', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000059', 'HỨA KIẾN THÀNH', '10C', 'Nam', '01/10/2011', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000060', 'NGUYỄN TRUNG THÀNH', '10C', 'Nam', '27/09/2009', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000061', 'A THEM', '10C', 'Nam', '17/07/2011', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000062', 'LÊ HUỲNH GIA THIỆN', '10C', 'Nam', '14/06/2009', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000063', 'NGUYỄN THANH THUỶ', '10C', 'Nữ', '13/04/1999', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000064', 'HUỲNH XUÂN THY', '10C', 'Nữ', '13/02/2007', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000065', 'NGUYỄN TRỊNH HOÀNG TIẾN', '10C', 'Nam', '13/07/2010', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000066', 'NGUYỄN ĐAN TRƯỜNG', '10C', 'Nam', '22/06/2001', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000067', 'A MINH TÙNG', '10C', 'Nam', '09/02/2011', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000068', 'PHẠM THỊ BÍCH TUYỀN', '10C', 'Nữ', '01/01/2003', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000069', 'ĐINH THỊ TƯỜNG VY', '10C', 'Nữ', '07/12/2010', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000070', 'NGUYỄN THỊ NGỌC ÁNH', '11A', 'Nữ', '06/05/2006', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000071', 'NGUYỄN QUÝ DƯƠNG', '11A', 'Nam', '11/06/2003', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000072', 'HUỲNH CHÍ ĐẠT', '11A', 'Nam', '18/11/2007', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000073', 'NGUYỄN ĐẮC GIÀU', '11A', 'Nữ', '26/02/2001', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000074', 'DƯƠNG NGUYỄN MẠNH HIỀN', '11A', 'Nam', '04/01/2008', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000075', 'LÊ ĐÔNG KHA', '11A', 'Nam', '11/08/2004', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000076', 'NGUYỄN VŨ LONG', '11A', 'Nam', '07/11/2010', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000077', 'PHÙNG GIA LONG', '11A', 'Nam', '22/10/2010', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000078', 'TRẦN TRỌNG MINH', '11A', 'Nam', '18/03/2007', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000079', 'NGUYỄN BẢO NGỌC', '11A', 'Nữ', '08/06/2010', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000080', 'TRẦN KHÁNH NGỌC', '11A', 'Nữ', '10/11/2009', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000081', 'NGUYỄN TRỌNG NHÂN', '11A', 'Nam', '12/03/2006', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000082', 'HUỲNH THỊ TUYẾT NHI', '11A', 'Nữ', '31/10/2003', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000083', 'NGUYỄN HOÀNG YẾN NHI', '11A', 'Nữ', '10/08/2010', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000084', 'VÕ YẾN NHI', '11A', 'Nữ', '29/11/2010', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000085', 'NGUYỄN HỒNG BẢO NHƯ', '11A', 'Nữ', '01/02/2010', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000086', 'TRẦN BẢO NHƯ', '11A', 'Nữ', '11/07/2008', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000087', 'TRẦN MINH PHÚC NHƯ', '11A', 'Nữ', '09/01/2010', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000088', 'NGUYỄN THANH TẤN', '11A', 'Nam', '07/10/2005', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000089', 'PHAN NGỌC DIỆU THIỆN', '11A', 'Nữ', '27/06/2009', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000090', 'LÊ ĐẠI THỊNH', '11A', 'Nam', '19/01/2010', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000091', 'PHẠM GIA CÁT NGUYỄN TIÊN', '11A', 'Nam', '09/11/2005', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000092', 'TRẦN LÊ THUỲ TIÊN', '11A', 'Nữ', '29/09/2010', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000093', 'NGUYỄN THẠO TÍNH', '11A', 'Nam', '22/06/2005', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000094', 'NGUYỄN THỊ BÍCH TRÂM', '11A', 'Nữ', '22/12/2002', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000095', 'NGUYỄN MINH TRÍ', '11A', 'Nam', '13/01/2008', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000096', 'VŨ NGUYỄN THUÝ VÂN', '11A', 'Nữ', '28/03/2005', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000097', 'GIÀNG A VỪ', '11A', 'Nam', '08/12/2008', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000098', 'LÊ HOÀNG VY', '11A', 'Nữ', '09/12/2006', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000099', 'NGUYỄN NGÔ TRÚC VY', '11A', 'Nữ', '04/03/2009', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000100', 'NGÔ THỊ HOÀNG YẾN', '11A', 'Nữ', '28/04/2009', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000101', 'NGUYỄN THỊ HỒNG YẾN', '11A', 'Nữ', '27/03/2010', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000102', 'LÊ NGUYỄN GIA BẢO', '11C', 'Nam', '08/12/2008', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000103', 'NGUYỄN BÌNH QUỐC BẢO', '11C', 'Nam', '20/03/2004', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000104', 'LÂM MINH DUY', '11C', 'Nam', '15/11/1998', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000105', 'ĐỖ CÔNG ĐẠI', '11C', 'Nam', '07/10/1999', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000106', 'TRỊNH THẾ HIỂN', '11C', 'Nam', '27/03/2010', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000107', 'NGUYỄN HUY HOÀNG', '11C', 'Nam', '27/05/1989', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000108', 'TRỊNH XUÂN HUY HOÀNG', '11C', 'Nam', '19/03/2010', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000109', 'TRẦN MINH KHÔI', '11C', 'Nam', '07/07/2006', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000110', 'HÀ NGUYỄN THÀNH LONG', '11C', 'Nam', '08/02/2000', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000111', 'PHAN HOÀN PHƯỚC MINH', '11C', 'Nam', '02/09/2004', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000112', 'CHÂU MINH NAM', '11C', 'Nam', '05/12/2002', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000113', 'TRỊNH NHƯ KIM NGÂN', '11C', 'Nữ', '10/09/2004', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000114', 'VƯƠNG VĨNH PHÚC', '11C', 'Nam', '03/02/2002', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000115', 'LƯƠNG PHÚ QUÍ', '11C', 'Nam', '09/01/2006', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000116', 'NGUYỄN HỨA CÔNG THÀNH', '11C', 'Nam', '22/05/2003', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000117', 'HỒNG NGỌC THUỶ', '11C', 'Nữ', '26/04/2004', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000118', 'TRẦN NGUYỄN HẠ TRIỀU', '11C', 'Nam', '16/08/2003', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000119', 'TRẦN THỊ HOÀNG UYÊN', '11C', 'Nữ', '28/10/2001', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000120', 'TÔ THỊ MINH VY', '11C', 'Nữ', '03/08/2006', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000121', 'LẠC TRÍ AN', '12A', 'Nam', '20/12/2009', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000122', 'NGUYỄN TRẦN HUY AN', '12A', 'Nam', '11/09/2008', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000123', 'ĐÀO THỊ KIM ANH', '12A', 'Nữ', '14/06/2005', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000124', 'LỤC KIM ANH', '12A', 'Nữ', '06/09/2005', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000125', 'NGUYỄN THỊ KIM ÁNH', '12A', 'Nữ', '25/08/2009', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000126', 'MÃ GIA BẢO', '12A', 'Nam', '14/03/2006', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000127', 'LÊ TRẦN NGỌC DIỆP', '12A', 'Nữ', '22/04/2009', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000128', 'TRỊNH KHẢI ĐỘ', '12A', 'Nam', '04/11/2008', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000129', 'LÂM TRÍ HÀO', '12A', 'Nam', '01/06/2009', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000130', 'HUỲNH MỸ HÂN', '12A', 'Nữ', '22/11/2001', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000131', 'PHẠM NGỌC HÂN', '12A', 'Nữ', '20/12/2009', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000132', 'TRẦN NGỌC BẢO HÂN', '12A', 'Nữ', '21/01/2005', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000133', 'ĐẶNG HUY HOÀNG', '12A', 'Nam', '15/07/2009', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000134', 'PHẠM GIA KIỆT', '12A', 'Nam', '30/03/2007', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000135', 'DƯ MỸ KIM', '12A', 'Nữ', '02/01/2009', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000136', 'HỒ SỸ KỲ', '12A', 'Nam', '17/09/2008', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000137', 'PHẠM NGỌC LINH', '12A', 'Nữ', '16/11/2008', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000138', 'ĐINH GIA LONG', '12A', 'Nam', '11/05/2009', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000139', 'ĐẶNG THIÊN MINH', '12A', 'Nữ', '30/01/2001', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000140', 'NGUYỄN THỊ KIM NGÂN', '12A', 'Nữ', '01/01/2003', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000141', 'LÂM BẢO NGỌC', '12A', 'Nữ', '22/03/2009', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000142', 'NGUYỄN THỊ MỸ NGỌC', '12A', 'Nữ', '06/06/2002', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000143', 'ĐỖ NGỌC YẾN NHI', '12A', 'Nữ', '16/06/2008', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000144', 'NGHIÊM ĐINH PHÚ', '12A', 'Nam', '05/06/2007', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000145', 'LƯU VÂN PHỤNG', '12A', 'Nữ', '25/11/2009', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000146', 'NGÔ BỈNH TÂN', '12A', 'Nam', '27/03/1981', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000147', 'TRẦN KIM THÀNH', '12A', 'Nam', '03/11/2006', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000148', 'HUỲNH THỊ THANH THẢO', '12A', 'Nữ', '27/02/1992', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000149', 'NGUYỄN HUỲNH THẢO', '12A', 'Nữ', '25/07/2009', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000150', 'TRỊNH MINH THIỆN', '12A', 'Nam', '03/08/2005', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000151', 'ĐINH THỊ NHƯ TIÊN', '12A', 'Nữ', '03/10/2009', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000152', 'NGUYỄN THỊ THUỶ TIỀN', '12A', 'Nữ', '13/09/2008', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000153', 'VÕ MỘNG TRẦM', '12A', 'Nữ', '12/10/2003', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000154', 'LÊ BÙI THỊ BẢO TRÂN', '12A', 'Nữ', '30/11/2006', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000155', 'TRƯƠNG BẢO TRÂN', '12A', 'Nữ', '16/11/2004', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000156', 'PHẠM ĐÀO THIÊN ƯNG', '12A', 'Nam', '04/06/2009', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000157', 'NGUYỄN TƯỜNG MINH VI', '12A', 'Nữ', '30/12/2009', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000158', 'VƯƠNG GIA VY', '12A', 'Nữ', '12/11/2009', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000159', 'LẠC NGỌC YẾN', '12A', 'Nữ', '02/04/2009', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000160', 'NGUYỄN QUỐC ANH', '12C', 'Nam', '03/04/2007', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000161', 'LƯU TIỂU BÌNH', '12C', 'Nữ', '30/07/2006', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000162', 'HUỲNH MINH CHÂU', '12C', 'Nữ', '10/09/2003', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000163', 'TẠ MỸ DUNG', '12C', 'Nữ', '10/12/1991', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000164', 'NGUYỄN THỊ THUỲ DƯƠNG', '12C', 'Nữ', '05/05/2009', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000165', 'TRƯƠNG MINH HẢI', '12C', 'Nam', '10/06/1985', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000166', 'ÔN TÙNG HY', '12C', 'Nam', '25/09/1993', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000167', 'ĐÀO PHƯỚC KHANG', '12C', 'Nam', '11/06/1999', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000168', 'BÙI QUANG KHÁNH', '12C', 'Nam', '11/10/2003', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000169', 'LƯU GIA KỲ', '12C', 'Nữ', '07/11/1993', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000170', 'BÙI QUỐC LINH', '12C', 'Nam', '18/08/2008', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000171', 'NGUYỄN NGỌC PHƯƠNG LINH', '12C', 'Nữ', '16/03/2006', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000172', 'HOÀNG LÊ TRÀ MY', '12C', 'Nữ', '07/10/2002', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000173', 'BÙI XUÂN NAM', '12C', 'Nam', '11/03/1997', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000174', 'LÝ THANH NGÂN', '12C', 'Nữ', '07/07/2002', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000175', 'NGUYỄN THANH NGỌC', '12C', 'Nữ', '23/11/2007', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000176', 'NGUYỄN PHAN BẠCH NGUYÊN', '12C', 'Nữ', '26/12/2003', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000177', 'VÕ THIỆN NHÂN', '12C', 'Nam', '24/12/2007', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000178', 'NGUYỄN THỊ NHƯNG', '12C', 'Nữ', '06/08/1987', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000179', 'BÙI VĂN PHÁT', '12C', 'Nam', '01/02/1992', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000180', 'LÊ ĐÌNH PHÚC', '12C', 'Nam', '29/11/2004', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000181', 'TRẦN THIÊN PHÚC', '12C', 'Nam', '06/07/2005', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000182', 'TRƯƠNG VĂN VĨNH PHÚC', '12C', 'Nam', '19/12/2006', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000183', 'HUỲNH HOÀNG PHƯỚC', '12C', 'Nam', '27/05/2009', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000184', 'PHẠM ĐĂNG SINH', '12C', 'Nam', '17/07/2006', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000185', 'ĐỖ NGỌC ANH TÀI', '12C', 'Nam', '02/11/2006', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000186', 'TRƯƠNG QUỐC THÁI', '12C', 'Nam', '21/03/2005', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000187', 'NGUỴ HẢI THÀNH', '12C', 'Nam', '20/03/2006', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000188', 'NGUYỄN NGỌC BẢO TRÂN', '12C', 'Nữ', '08/09/2008', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000189', 'NGUYỄN NGỌC MỸ TRÂN', '12C', 'Nữ', '28/04/2004', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000190', 'LÊ HẠNH UYÊN', '12C', 'Nữ', '12/11/2004', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000191', 'TRƯƠNG VỈ VĂN', '12C', 'Nam', '06/12/2003', 'CHO-LON');
INSERT OR REPLACE INTO students (student_id, full_name, class_name, gender, dob, campus) VALUES ('A0000192', 'PHẠM QUỐC VŨ', '12C', 'Nam', '11/05/1999', 'CHO-LON');

-- 5. Điểm thi & Bài làm chi tiết
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000001', '1013', 3.45, 1.25, 1.7, 0.5, 7, 22, 1.0, 'CHO-LON/10A/A0000001_LƯU_GIA_ĐÀO_1013_3.45d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000002', '1012', 9.25, 2.75, 3.5, 3.0, 20, 22, 1.0, 'CHO-LON/10A/A0000002_HUỲNH_TUẤN_ĐẠT_1012_9.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000003', '1012', 4.1, 1.25, 1.35, 1.5, 8, 22, 1.0, 'CHO-LON/10A/A0000003_PHẠM_NGUYỄN_THÀNH_ĐẠT_1012_4.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000004', '1014', 8.0, 3.0, 2.5, 2.5, 18, 22, 1.0, 'CHO-LON/10A/A0000004_VÕ_TRƯƠNG_HOÀI_ĐỨC_1014_8.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000005', '1012', 2.2, 0.75, 1.45, 0.0, 4, 22, 1.0, 'CHO-LON/10A/A0000005_HỒ_NGỌC_HÀ_1012_2.20d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000006', '1011', 3.25, 1.5, 1.75, 0.0, 7, 22, 1.0, 'CHO-LON/10A/A0000006_PHAN_QUỐC_HÀO_1011_3.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000007', '1012', 3.75, 1.75, 2.0, 0.0, 7, 22, 1.0, 'CHO-LON/10A/A0000007_PHÙNG_NGUYỄN_MINH_HÀO_1012_3.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000008', '1013', 9.0, 3.0, 3.0, 3.0, 20, 22, 1.0, 'CHO-LON/10A/A0000008_VĂN_GIA_HÂN_1013_9.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000009', '1013', 9.5, 3.0, 3.5, 3.0, 21, 22, 1.0, 'CHO-LON/10A/A0000009_LƯU_PHỤNG_HOA_1013_9.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000010', '1011', 8.25, 2.5, 2.75, 3.0, 18, 22, 1.0, 'CHO-LON/10A/A0000010_LÂM_QUỐC_HUY_1011_8.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000011', '1011', 10.0, 3.0, 4.0, 3.0, 22, 22, 1.0, 'CHO-LON/10A/A0000011_NGUYỄN_TẤN_HƯNG_1011_10.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000012', '1012', 10.0, 3.0, 4.0, 3.0, 22, 22, 1.0, 'CHO-LON/10A/A0000012_HUỲNH_MỸ_HƯƠNG_1012_10.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000013', '1014', 9.0, 2.5, 4.0, 2.5, 19, 22, 1.0, 'CHO-LON/10A/A0000013_LÊ_HOÀNG_KHANG_1014_9.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000014', '1011', 9.5, 2.5, 4.0, 3.0, 20, 22, 1.0, 'CHO-LON/10A/A0000014_PHAN_HOÀI_PHÚC_KHANG_1011_9.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000015', '1011', 8.0, 2.25, 3.25, 2.5, 17, 22, 1.0, 'CHO-LON/10A/A0000015_VÕ_NHẬT_KHÁNH_1011_8.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000016', '1012', 5.0, 1.5, 2.0, 1.5, 10, 22, 1.0, 'CHO-LON/10A/A0000016_LÝ_NGUYỄN_THIÊN_KIM_1012_5.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000017', '1013', 7.5, 2.5, 2.5, 2.5, 17, 22, 1.0, 'CHO-LON/10A/A0000017_TRẦN_TẤN_LỘC_1013_7.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000018', '1012', 5.1, 1.5, 1.1, 2.5, 11, 22, 1.0, 'CHO-LON/10A/A0000018_NGUYỄN_TUẤN_LỢI_1012_5.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000019', '1013', 8.5, 2.5, 3.0, 3.0, 18, 22, 1.0, 'CHO-LON/10A/A0000019_NGUYỄN_NGỌC_KIỀU_DIỄM_MY_1013_8.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000020', '1014', 8.25, 2.5, 2.75, 3.0, 18, 22, 1.0, 'CHO-LON/10A/A0000020_NGÔ_NHẤT_THỤC_MỸ_1014_8.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000021', '1014', 9.75, 2.75, 4.0, 3.0, 21, 22, 1.0, 'CHO-LON/10A/A0000021_PHAN_THÀNH_NAM_1014_9.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000022', '1014', 5.85, 1.5, 1.85, 2.5, 12, 22, 1.0, 'CHO-LON/10A/A0000022_NGUYỄN_BẢO_NGỌC_1014_5.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000023', '1013', 7.0, 2.25, 2.25, 2.5, 15, 22, 1.0, 'CHO-LON/10A/A0000023_ĐỖ_THỊ_QUỲNH_NHƯ_1013_7.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000024', '1012', 8.25, 2.75, 3.0, 2.5, 18, 22, 1.0, 'CHO-LON/10A/A0000024_CHÂU_NHUẬN_PHÁT_1012_8.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000025', '1011', 9.0, 2.75, 3.25, 3.0, 20, 22, 1.0, 'CHO-LON/10A/A0000025_TẠ_THIỆU_PHONG_1011_9.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000026', '1014', 9.25, 3.0, 3.25, 3.0, 21, 22, 1.0, 'CHO-LON/10A/A0000026_TRƯƠNG_ÍCH_PHÚ_1014_9.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000027', '1013', 8.75, 2.75, 3.0, 3.0, 19, 22, 1.0, 'CHO-LON/10A/A0000027_CHÂU_HUỲNH_NHƯ_QUỲNH_1013_8.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000028', '1011', 9.25, 2.75, 3.5, 3.0, 20, 22, 1.0, 'CHO-LON/10A/A0000028_CHUNG_ANH_TÀI_1011_9.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000029', '1012', 7.75, 2.5, 2.75, 2.5, 17, 22, 1.0, 'CHO-LON/10A/A0000029_TÔ_KIẾN_THÀNH_1012_7.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000030', '1011', 7.25, 2.0, 2.25, 3.0, 15, 22, 1.0, 'CHO-LON/10A/A0000030_HÀ_VĂN_CÔNG_THUẬN_1011_7.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000031', '1014', 4.85, 1.25, 1.6, 2.0, 10, 22, 1.0, 'CHO-LON/10A/A0000031_NGUYỄN_THỊ_MINH_THƯ_1014_4.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000032', '', -1, 0, 0, 0, 0, 22, 0.0, '', 'VẮNG / THIẾU BÀI QUÉT', 'Học sinh vắng thi hoặc không có phiếu quét trong tập bài');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000033', '1011', 7.5, 2.75, 2.25, 2.5, 17, 22, 1.0, 'CHO-LON/10A/A0000033_TRẦN_NGỌC_TRÂM_1011_7.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000034', '', -1, 0, 0, 0, 0, 22, 0.0, '', 'VẮNG / THIẾU BÀI QUÉT', 'Học sinh vắng thi hoặc không có phiếu quét trong tập bài');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000035', '1014', 7.75, 2.5, 3.25, 2.0, 17, 22, 1.0, 'CHO-LON/10A/A0000035_LÊ_MAI_THANH_TRÚC_1014_7.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000036', '1013', 4.1, 1.25, 1.35, 1.5, 8, 22, 1.0, 'CHO-LON/10A/A0000036_ĐỖ_PHÚ_VĂN_1013_4.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000037', '1016', 8.25, 2.25, 3.5, 2.5, 17, 22, 1.0, 'CHO-LON/10C/A0000037_LÊ_MINH_ANH_1016_8.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000038', '1016', 6.6, 2.5, 2.6, 1.5, 15, 22, 1.0, 'CHO-LON/10C/A0000038_A_THANH_BIN_1016_6.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000039', '1016', 7.6, 2.5, 2.6, 2.5, 17, 22, 1.0, 'CHO-LON/10C/A0000039_NGUYỄN_HOÀNG_DŨNG_1016_7.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000040', '', -1, 0, 0, 0, 0, 22, 0.0, '', 'VẮNG / THIẾU BÀI QUÉT', 'Học sinh vắng thi hoặc không có phiếu quét trong tập bài');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000041', '1017', 3.6, 1.25, 1.35, 1.0, 7, 22, 1.0, 'CHO-LON/10C/A0000041_A_VĂN_HOÀNG_1017_3.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000042', '1015', 5.45, 2.25, 1.7, 1.5, 13, 22, 1.0, 'CHO-LON/10C/A0000042_A_LÊ_HÙNG_1015_5.45d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000043', '1017', 7.5, 2.0, 3.5, 2.0, 15, 22, 1.0, 'CHO-LON/10C/A0000043_CAO_NGUYỄN_PHÚC_HUY_1017_7.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000044', '1017', 6.85, 2.5, 1.85, 2.5, 16, 22, 1.0, 'CHO-LON/10C/A0000044_GIANG_GIA_HUY_1017_6.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000045', '', -1, 0, 0, 0, 0, 22, 0.0, '', 'VẮNG / THIẾU BÀI QUÉT', 'Học sinh vắng thi hoặc không có phiếu quét trong tập bài');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000046', '', -1, 0, 0, 0, 0, 22, 0.0, '', 'VẮNG / THIẾU BÀI QUÉT', 'Học sinh vắng thi hoặc không có phiếu quét trong tập bài');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000047', '', -1, 0, 0, 0, 0, 22, 0.0, '', 'VẮNG / THIẾU BÀI QUÉT', 'Học sinh vắng thi hoặc không có phiếu quét trong tập bài');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000048', '1015', 5.75, 1.75, 3.0, 1.0, 11, 22, 1.0, 'CHO-LON/10C/A0000048_NGUYỄN_THIÊN_KIM_1015_5.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000049', '1015', 5.7, 2.0, 1.7, 2.0, 13, 22, 1.0, 'CHO-LON/10C/A0000049_A_LÂN_1015_5.70d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000050', '1016', 7.35, 2.75, 2.6, 2.0, 17, 22, 1.0, 'CHO-LON/10C/A0000050_NGUYỄN_CHÍ_LĨNH_1016_7.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000051', '1017', 7.6, 2.75, 1.85, 3.0, 18, 22, 1.0, 'CHO-LON/10C/A0000051_VÕ_THÀNH_NAM_1017_7.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000052', '1017', 6.85, 2.5, 1.85, 2.5, 16, 22, 1.0, 'CHO-LON/10C/A0000052_LÝ_THIÊN_NGÂN_1017_6.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000053', '1015', 7.5, 1.75, 2.75, 3.0, 15, 22, 1.0, 'CHO-LON/10C/A0000053_HOẮC_HUỆ_NHÀN_1015_7.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000054', '1018', 7.5, 1.75, 3.25, 2.5, 15, 22, 1.0, 'CHO-LON/10C/A0000054_A_PHỤC_1018_7.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000055', '1015', 7.75, 2.5, 2.75, 2.5, 17, 22, 1.0, 'CHO-LON/10C/A0000055_NGUYỄN_MINH_QUÂN_1015_7.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000056', '1018', 8.0, 2.5, 3.0, 2.5, 17, 22, 1.0, 'CHO-LON/10C/A0000056_NGUYỄN_MINH_TÂM_1018_8.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000057', '1015', 8.5, 2.75, 2.75, 3.0, 19, 22, 1.0, 'CHO-LON/10C/A0000057_LÂM_QUỐC_THÁI_1015_8.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000058', '1018', 8.5, 2.75, 2.75, 3.0, 19, 22, 1.0, 'CHO-LON/10C/A0000058_LIÊU_CẨM_THÁI_1018_8.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000059', '', -1, 0, 0, 0, 0, 22, 0.0, '', 'VẮNG / THIẾU BÀI QUÉT', 'Học sinh vắng thi hoặc không có phiếu quét trong tập bài');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000060', '1015', 6.45, 2.25, 1.7, 2.5, 15, 22, 1.0, 'CHO-LON/10C/A0000060_NGUYỄN_TRUNG_THÀNH_1015_6.45d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000061', '1016', 6.0, 2.75, 2.75, 0.5, 14, 22, 1.0, 'CHO-LON/10C/A0000061_A_THEM_1016_6.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000062', '1017', 7.25, 2.5, 2.75, 2.0, 16, 22, 1.0, 'CHO-LON/10C/A0000062_LÊ_HUỲNH_GIA_THIỆN_1017_7.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000063', '1016', 7.6, 3.0, 1.6, 3.0, 19, 22, 1.0, 'CHO-LON/10C/A0000063_NGUYỄN_THANH_THUỶ_1016_7.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000064', '1018', 7.75, 2.75, 2.5, 2.5, 18, 22, 1.0, 'CHO-LON/10C/A0000064_HUỲNH_XUÂN_THY_1018_7.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000065', '1018', 5.75, 1.75, 2.0, 2.0, 12, 22, 1.0, 'CHO-LON/10C/A0000065_NGUYỄN_TRỊNH_HOÀNG_TIẾN_1018_5.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000066', '1016', 10.0, 3.0, 4.0, 3.0, 22, 22, 1.0, 'CHO-LON/10C/A0000066_NGUYỄN_ĐAN_TRƯỜNG_1016_10.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000067', '1018', 6.25, 1.75, 2.0, 2.5, 13, 22, 1.0, 'CHO-LON/10C/A0000067_A_MINH_TÙNG_1018_6.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000068', '1017', 8.25, 2.5, 3.25, 2.5, 18, 22, 1.0, 'CHO-LON/10C/A0000068_PHẠM_THỊ_BÍCH_TUYỀN_1017_8.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000069', '', -1, 0, 0, 0, 0, 22, 0.0, '', 'VẮNG / THIẾU BÀI QUÉT', 'Học sinh vắng thi hoặc không có phiếu quét trong tập bài');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000070', '1111', 5.25, 2.25, 2.0, 1.0, 11, 22, 1.0, 'CHO-LON/11A/A0000070_NGUYỄN_THỊ_NGỌC_ÁNH_1111_5.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000071', '1114', 7.75, 3.0, 2.25, 2.5, 18, 22, 1.0, 'CHO-LON/11A/A0000071_NGUYỄN_QUÝ_DƯƠNG_1114_7.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000072', '1112', 10.0, 3.0, 4.0, 3.0, 22, 22, 1.0, 'CHO-LON/11A/A0000072_HUỲNH_CHÍ_ĐẠT_1112_10.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000073', '1118', 7.25, 3.0, 2.75, 1.5, 17, 22, 1.0, 'CHO-LON/11A/A0000073_NGUYỄN_ĐẮC_GIÀU_1118_7.25d.pdf', 'VALID', 'Thi tại phòng 11C (Bài thi nằm trong tệp scan lớp 11C)');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000074', '', -1, 0, 0, 0, 0, 22, 0.0, '', 'VẮNG / THIẾU BÀI QUÉT', 'Học sinh vắng thi hoặc không có phiếu quét trong tập bài');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000075', '1111', 5.25, 2.5, 2.25, 0.5, 12, 22, 1.0, 'CHO-LON/11A/A0000075_LÊ_ĐÔNG_KHA_1111_5.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000076', '1112', 6.85, 2.5, 1.85, 2.5, 16, 22, 1.0, 'CHO-LON/11A/A0000076_NGUYỄN_VŨ_LONG_1112_6.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000077', '1113', 8.5, 2.0, 4.0, 2.5, 17, 22, 1.0, 'CHO-LON/11A/A0000077_PHÙNG_GIA_LONG_1113_8.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000078', '1112', 9.5, 3.0, 3.5, 3.0, 21, 22, 1.0, 'CHO-LON/11A/A0000078_TRẦN_TRỌNG_MINH_1112_9.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000079', '1111', 8.5, 2.5, 3.0, 3.0, 18, 22, 1.0, 'CHO-LON/11A/A0000079_NGUYỄN_BẢO_NGỌC_1111_8.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000080', '1114', 7.25, 2.75, 2.5, 2.0, 17, 22, 1.0, 'CHO-LON/11A/A0000080_TRẦN_KHÁNH_NGỌC_1114_7.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000081', '1111', 9.5, 3.0, 3.5, 3.0, 21, 22, 1.0, 'CHO-LON/11A/A0000081_NGUYỄN_TRỌNG_NHÂN_1111_9.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000082', '1114', 7.35, 2.75, 2.6, 2.0, 17, 22, 1.0, 'CHO-LON/11A/A0000082_HUỲNH_THỊ_TUYẾT_NHI_1114_7.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000083', '1113', 9.0, 3.0, 3.0, 3.0, 20, 22, 1.0, 'CHO-LON/11A/A0000083_NGUYỄN_HOÀNG_YẾN_NHI_1113_9.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000084', '1112', 7.1, 2.75, 1.85, 2.5, 17, 22, 1.0, 'CHO-LON/11A/A0000084_VÕ_YẾN_NHI_1112_7.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000085', '1111', 4.0, 1.5, 2.0, 0.5, 8, 22, 1.0, 'CHO-LON/11A/A0000085_NGUYỄN_HỒNG_BẢO_NHƯ_1111_4.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000086', '1112', 9.0, 3.0, 3.0, 3.0, 20, 22, 1.0, 'CHO-LON/11A/A0000086_TRẦN_BẢO_NHƯ_1112_9.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000087', '1114', 7.5, 3.0, 2.0, 2.5, 18, 22, 1.0, 'CHO-LON/11A/A0000087_TRẦN_MINH_PHÚC_NHƯ_1114_7.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000088', '1111', 7.1, 2.75, 1.35, 3.0, 17, 22, 1.0, 'CHO-LON/11A/A0000088_NGUYỄN_THANH_TẤN_1111_7.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000089', '1113', 6.2, 3.0, 1.7, 1.5, 16, 22, 1.0, 'CHO-LON/11A/A0000089_PHAN_NGỌC_DIỆU_THIỆN_1113_6.20d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000090', '1113', 8.5, 2.5, 3.0, 3.0, 18, 22, 1.0, 'CHO-LON/11A/A0000090_LÊ_ĐẠI_THỊNH_1113_8.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000091', '1112', 10.0, 3.0, 4.0, 3.0, 22, 22, 1.0, 'CHO-LON/11A/A0000091_PHẠM_GIA_CÁT_NGUYỄN_TIÊN_1112_10.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000092', '1111', 7.35, 2.25, 2.1, 3.0, 16, 22, 1.0, 'CHO-LON/11A/A0000092_TRẦN_LÊ_THUỲ_TIÊN_1111_7.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000093', '1114', 5.1, 2.75, 1.35, 1.0, 13, 22, 1.0, 'CHO-LON/11A/A0000093_NGUYỄN_THẠO_TÍNH_1114_5.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000094', '1113', 10.0, 3.0, 4.0, 3.0, 22, 22, 1.0, 'CHO-LON/11A/A0000094_NGUYỄN_THỊ_BÍCH_TRÂM_1113_10.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000095', '1112', 10.0, 3.0, 4.0, 3.0, 22, 22, 1.0, 'CHO-LON/11A/A0000095_NGUYỄN_MINH_TRÍ_1112_10.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000096', '1114', 10.0, 3.0, 4.0, 3.0, 22, 22, 1.0, 'CHO-LON/11A/A0000096_VŨ_NGUYỄN_THUÝ_VÂN_1114_10.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000097', '1114', 5.95, 2.25, 2.2, 1.5, 14, 22, 1.0, 'CHO-LON/11A/A0000097_GIÀNG_A_VỪ_1114_5.95d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000098', '1113', 10.0, 3.0, 4.0, 3.0, 22, 22, 1.0, 'CHO-LON/11A/A0000098_LÊ_HOÀNG_VY_1113_10.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000099', '1113', 6.0, 2.5, 2.5, 1.0, 14, 22, 1.0, 'CHO-LON/11A/A0000099_NGUYỄN_NGÔ_TRÚC_VY_1113_6.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000100', '1114', 3.95, 2.0, 0.95, 1.0, 10, 22, 1.0, 'CHO-LON/11A/A0000100_NGÔ_THỊ_HOÀNG_YẾN_1114_3.95d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000101', '1111', 8.1, 2.5, 2.6, 3.0, 18, 22, 1.0, 'CHO-LON/11A/A0000101_NGUYỄN_THỊ_HỒNG_YẾN_1111_8.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000102', '1115', 7.25, 2.75, 4.0, 0.5, 16, 22, 1.0, 'CHO-LON/11C/A0000102_LÊ_NGUYỄN_GIA_BẢO_1115_7.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000103', '1116', 7.5, 2.75, 3.25, 1.5, 17, 22, 1.0, 'CHO-LON/11C/A0000103_NGUYỄN_BÌNH_QUỐC_BẢO_1116_7.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000104', '', -1, 0, 0, 0, 0, 22, 0.0, '', 'VẮNG / THIẾU BÀI QUÉT', 'Học sinh vắng thi hoặc không có phiếu quét trong tập bài');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000105', '1117', 7.75, 3.0, 3.25, 1.5, 18, 22, 1.0, 'CHO-LON/11C/A0000105_ĐỖ_CÔNG_ĐẠI_1117_7.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000106', '1115', 7.25, 2.5, 3.25, 1.5, 16, 22, 1.0, 'CHO-LON/11C/A0000106_TRỊNH_THẾ_HIỂN_1115_7.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000107', '', -1, 0, 0, 0, 0, 22, 0.0, '', 'VẮNG / THIẾU BÀI QUÉT', 'Học sinh vắng thi hoặc không có phiếu quét trong tập bài');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000108', '1116', 7.5, 2.5, 4.0, 1.0, 16, 22, 1.0, 'CHO-LON/11C/A0000108_TRỊNH_XUÂN_HUY_HOÀNG_1116_7.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000109', '1117', 8.5, 3.0, 4.0, 1.5, 19, 22, 1.0, 'CHO-LON/11C/A0000109_TRẦN_MINH_KHÔI_1117_8.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000110', '1118', 8.25, 2.75, 4.0, 1.5, 18, 22, 1.0, 'CHO-LON/11C/A0000110_HÀ_NGUYỄN_THÀNH_LONG_1118_8.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000111', '1115', 8.5, 3.0, 4.0, 1.5, 19, 22, 1.0, 'CHO-LON/11C/A0000111_PHAN_HOÀN_PHƯỚC_MINH_1115_8.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000112', '1116', 8.5, 3.0, 4.0, 1.5, 19, 22, 1.0, 'CHO-LON/11C/A0000112_CHÂU_MINH_NAM_1116_8.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000113', '1117', 7.1, 3.0, 2.6, 1.5, 17, 22, 1.0, 'CHO-LON/11C/A0000113_TRỊNH_NHƯ_KIM_NGÂN_1117_7.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000114', '1115', 7.75, 2.75, 3.5, 1.5, 17, 22, 1.0, 'CHO-LON/11C/A0000114_VƯƠNG_VĨNH_PHÚC_1115_7.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000115', '1118', 7.25, 2.5, 3.25, 1.5, 16, 22, 1.0, 'CHO-LON/11C/A0000115_LƯƠNG_PHÚ_QUÍ_1118_7.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000116', '1116', 7.0, 2.0, 4.0, 1.0, 14, 22, 1.0, 'CHO-LON/11C/A0000116_NGUYỄN_HỨA_CÔNG_THÀNH_1116_7.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000117', '1115', 7.0, 3.0, 2.5, 1.5, 16, 22, 1.0, 'CHO-LON/11C/A0000117_HỒNG_NGỌC_THUỶ_1115_7.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000118', '1118', 8.25, 2.75, 4.0, 1.5, 18, 22, 1.0, 'CHO-LON/11C/A0000118_TRẦN_NGUYỄN_HẠ_TRIỀU_1118_8.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000119', '1116', 8.0, 3.0, 3.5, 1.5, 18, 22, 1.0, 'CHO-LON/11C/A0000119_TRẦN_THỊ_HOÀNG_UYÊN_1116_8.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000120', '1117', 8.5, 3.0, 4.0, 1.5, 19, 22, 1.0, 'CHO-LON/11C/A0000120_TÔ_THỊ_MINH_VY_1117_8.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000121', '1213', 7.75, 2.25, 3.5, 2.0, 16, 22, 1.0, 'CHO-LON/12A/A0000121_LẠC_TRÍ_AN_1213_7.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000122', '1213', 9.25, 2.75, 3.5, 3.0, 20, 22, 1.0, 'CHO-LON/12A/A0000122_NGUYỄN_TRẦN_HUY_AN_1213_9.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000123', '1212', 6.75, 2.25, 2.5, 2.0, 14, 22, 1.0, 'CHO-LON/12A/A0000123_ĐÀO_THỊ_KIM_ANH_1212_6.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000124', '1212', 9.5, 3.0, 3.5, 3.0, 21, 22, 1.0, 'CHO-LON/12A/A0000124_LỤC_KIM_ANH_1212_9.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000125', '1211', 8.25, 2.75, 2.5, 3.0, 18, 22, 1.0, 'CHO-LON/12A/A0000125_NGUYỄN_THỊ_KIM_ÁNH_1211_8.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000126', '1214', 8.75, 2.75, 3.5, 2.5, 19, 22, 1.0, 'CHO-LON/12A/A0000126_MÃ_GIA_BẢO_1214_8.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000127', '1212', 6.85, 2.25, 2.6, 2.0, 15, 22, 1.0, 'CHO-LON/12A/A0000127_LÊ_TRẦN_NGỌC_DIỆP_1212_6.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000128', '1212', 9.5, 3.0, 3.5, 3.0, 21, 22, 1.0, 'CHO-LON/12A/A0000128_TRỊNH_KHẢI_ĐỘ_1212_9.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000129', '1214', 2.45, 0.75, 1.2, 0.5, 4, 22, 1.0, 'CHO-LON/12A/A0000129_LÂM_TRÍ_HÀO_1214_2.45d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000130', '1213', 8.5, 2.5, 3.0, 3.0, 18, 22, 1.0, 'CHO-LON/12A/A0000130_HUỲNH_MỸ_HÂN_1213_8.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000131', '1211', 7.25, 2.5, 2.75, 2.0, 16, 22, 1.0, 'CHO-LON/12A/A0000131_PHẠM_NGỌC_HÂN_1211_7.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000132', '1213', 5.6, 1.75, 1.85, 2.0, 12, 22, 1.0, 'CHO-LON/12A/A0000132_TRẦN_NGỌC_BẢO_HÂN_1213_5.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000133', '1212', 2.35, 1.25, 1.1, 0.0, 5, 22, 1.0, 'CHO-LON/12A/A0000133_ĐẶNG_HUY_HOÀNG_1212_2.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000134', '', -1, 0, 0, 0, 0, 22, 0.0, '', 'VẮNG / THIẾU BÀI QUÉT', 'Học sinh vắng thi hoặc không có phiếu quét trong tập bài');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000135', '1214', 8.6, 3.0, 3.1, 2.5, 20, 22, 1.0, 'CHO-LON/12A/A0000135_DƯ_MỸ_KIM_1214_8.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000136', '1211', 6.1, 2.0, 3.1, 1.0, 13, 22, 1.0, 'CHO-LON/12A/A0000136_HỒ_SỸ_KỲ_1211_6.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000137', '1214', 5.75, 2.5, 1.75, 1.5, 13, 22, 1.0, 'CHO-LON/12A/A0000137_PHẠM_NGỌC_LINH_1214_5.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000138', '1213', 7.5, 2.5, 2.5, 2.5, 16, 22, 1.0, 'CHO-LON/12A/A0000138_ĐINH_GIA_LONG_1213_7.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000139', '1214', 8.25, 2.25, 3.5, 2.5, 17, 22, 1.0, 'CHO-LON/12A/A0000139_ĐẶNG_THIÊN_MINH_1214_8.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000140', '1211', 8.6, 3.0, 3.1, 2.5, 20, 22, 1.0, 'CHO-LON/12A/A0000140_NGUYỄN_THỊ_KIM_NGÂN_1211_8.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000141', '1212', 7.75, 2.25, 3.5, 2.0, 16, 22, 1.0, 'CHO-LON/12A/A0000141_LÂM_BẢO_NGỌC_1212_7.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000142', '1213', 6.1, 2.0, 2.6, 1.5, 13, 22, 1.0, 'CHO-LON/12A/A0000142_NGUYỄN_THỊ_MỸ_NGỌC_1213_6.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000143', '1214', 6.6, 1.0, 2.6, 3.0, 12, 22, 1.0, 'CHO-LON/12A/A0000143_ĐỖ_NGỌC_YẾN_NHI_1214_6.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000144', '1211', 5.85, 1.75, 2.1, 2.0, 12, 22, 1.0, 'CHO-LON/12A/A0000144_NGHIÊM_ĐINH_PHÚ_1211_5.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000145', '1214', 8.5, 3.0, 2.5, 3.0, 19, 22, 1.0, 'CHO-LON/12A/A0000145_LƯU_VÂN_PHỤNG_1214_8.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000146', '1211', 6.75, 2.5, 2.25, 2.0, 15, 22, 1.0, 'CHO-LON/12A/A0000146_NGÔ_BỈNH_TÂN_1211_6.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000147', '1211', 8.5, 3.0, 2.5, 3.0, 20, 22, 1.0, 'CHO-LON/12A/A0000147_TRẦN_KIM_THÀNH_1211_8.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000148', '1214', 9.0, 3.0, 3.5, 2.5, 20, 22, 1.0, 'CHO-LON/12A/A0000148_HUỲNH_THỊ_THANH_THẢO_1214_9.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000149', '', -1, 0, 0, 0, 0, 22, 0.0, '', 'VẮNG / THIẾU BÀI QUÉT', 'Học sinh vắng thi hoặc không có phiếu quét trong tập bài');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000150', '1212', 5.1, 1.0, 2.1, 2.0, 9, 22, 1.0, 'CHO-LON/12A/A0000150_TRỊNH_MINH_THIỆN_1212_5.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000151', '1212', 4.35, 0.5, 1.85, 2.0, 7, 22, 1.0, 'CHO-LON/12A/A0000151_ĐINH_THỊ_NHƯ_TIÊN_1212_4.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000152', '1214', 7.5, 2.5, 3.5, 1.5, 16, 22, 1.0, 'CHO-LON/12A/A0000152_NGUYỄN_THỊ_THUỶ_TIỀN_1214_7.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000153', '1213', 8.75, 2.75, 3.5, 2.5, 19, 22, 1.0, 'CHO-LON/12A/A0000153_VÕ_MỘNG_TRẦM_1213_8.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000154', '1211', 9.25, 2.75, 3.5, 3.0, 20, 22, 1.0, 'CHO-LON/12A/A0000154_LÊ_BÙI_THỊ_BẢO_TRÂN_1211_9.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000155', '1212', 9.25, 2.75, 3.5, 3.0, 20, 22, 1.0, 'CHO-LON/12A/A0000155_TRƯƠNG_BẢO_TRÂN_1212_9.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000156', '1211', 3.35, 1.5, 1.35, 0.5, 7, 22, 1.0, 'CHO-LON/12A/A0000156_PHẠM_ĐÀO_THIÊN_ƯNG_1211_3.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000157', '1211', 8.25, 2.75, 2.5, 3.0, 18, 22, 1.0, 'CHO-LON/12A/A0000157_NGUYỄN_TƯỜNG_MINH_VI_1211_8.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000158', '1213', 6.35, 0.75, 2.6, 3.0, 11, 22, 1.0, 'CHO-LON/12A/A0000158_VƯƠNG_GIA_VY_1213_6.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000159', '1213', 10.0, 3.0, 4.0, 3.0, 22, 22, 1.0, 'CHO-LON/12A/A0000159_LẠC_NGỌC_YẾN_1213_10.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000160', '1217', 7.75, 2.0, 3.25, 2.5, 16, 22, 1.0, 'CHO-LON/12C/A0000160_NGUYỄN_QUỐC_ANH_1217_7.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000161', '1216', 9.25, 2.25, 4.0, 3.0, 19, 22, 1.0, 'CHO-LON/12C/A0000161_LƯU_TIỂU_BÌNH_1216_9.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000162', '1215', 9.5, 3.0, 4.0, 2.5, 21, 22, 1.0, 'CHO-LON/12C/A0000162_HUỲNH_MINH_CHÂU_1215_9.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000163', '1218', 8.75, 2.75, 3.5, 2.5, 19, 22, 1.0, 'CHO-LON/12C/A0000163_TẠ_MỸ_DUNG_1218_8.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000164', '1217', 9.75, 2.75, 4.0, 3.0, 21, 22, 1.0, 'CHO-LON/12C/A0000164_NGUYỄN_THỊ_THUỲ_DƯƠNG_1217_9.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000165', '1215', 9.5, 3.0, 4.0, 2.5, 21, 22, 1.0, 'CHO-LON/12C/A0000165_TRƯƠNG_MINH_HẢI_1215_9.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000166', '1218', 9.5, 3.0, 3.5, 3.0, 21, 22, 1.0, 'CHO-LON/12C/A0000166_ÔN_TÙNG_HY_1218_9.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000167', '1217', 8.75, 2.25, 3.5, 3.0, 18, 22, 1.0, 'CHO-LON/12C/A0000167_ĐÀO_PHƯỚC_KHANG_1217_8.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000168', '1216', 9.75, 2.75, 4.0, 3.0, 21, 22, 1.0, 'CHO-LON/12C/A0000168_BÙI_QUANG_KHÁNH_1216_9.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000169', '1217', 7.1, 3.0, 1.1, 3.0, 18, 22, 1.0, 'CHO-LON/12C/A0000169_LƯU_GIA_KỲ_1217_7.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000170', '1215', 9.0, 2.5, 4.0, 2.5, 19, 22, 1.0, 'CHO-LON/12C/A0000170_BÙI_QUỐC_LINH_1215_9.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000171', '1218', 8.75, 3.0, 2.75, 3.0, 20, 22, 1.0, 'CHO-LON/12C/A0000171_NGUYỄN_NGỌC_PHƯƠNG_LINH_1218_8.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000172', '1215', 10.0, 3.0, 4.0, 3.0, 22, 22, 1.0, 'CHO-LON/12C/A0000172_HOÀNG_LÊ_TRÀ_MY_1215_10.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000173', '1217', 9.75, 2.75, 4.0, 3.0, 21, 22, 1.0, 'CHO-LON/12C/A0000173_BÙI_XUÂN_NAM_1217_9.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000174', '1218', 9.5, 3.0, 3.5, 3.0, 21, 22, 1.0, 'CHO-LON/12C/A0000174_LÝ_THANH_NGÂN_1218_9.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000175', '1218', 6.5, 2.75, 2.75, 1.0, 15, 22, 1.0, 'CHO-LON/12C/A0000175_NGUYỄN_THANH_NGỌC_1218_6.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000176', '1215', 8.25, 3.0, 2.75, 2.5, 19, 22, 1.0, 'CHO-LON/12C/A0000176_NGUYỄN_PHAN_BẠCH_NGUYÊN_1215_8.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000177', '1216', 8.75, 2.25, 4.0, 2.5, 18, 22, 1.0, 'CHO-LON/12C/A0000177_VÕ_THIỆN_NHÂN_1216_8.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000178', '1215', 10.0, 3.0, 4.0, 3.0, 22, 22, 1.0, 'CHO-LON/12C/A0000178_NGUYỄN_THỊ_NHƯNG_1215_10.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000179', '1218', 5.6, 2.25, 1.35, 2.0, 13, 22, 1.0, 'CHO-LON/12C/A0000179_BÙI_VĂN_PHÁT_1218_5.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000180', '1216', 5.75, 2.75, 2.0, 1.0, 14, 22, 1.0, 'CHO-LON/12C/A0000180_LÊ_ĐÌNH_PHÚC_1216_5.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000181', '1217', 6.25, 2.25, 3.0, 1.0, 13, 22, 1.0, 'CHO-LON/12C/A0000181_TRẦN_THIÊN_PHÚC_1217_6.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000182', '1218', 6.5, 2.0, 3.0, 1.5, 13, 22, 1.0, 'CHO-LON/12C/A0000182_TRƯƠNG_VĂN_VĨNH_PHÚC_1218_6.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000183', '1215', 8.25, 2.75, 4.0, 1.5, 18, 22, 1.0, 'CHO-LON/12C/A0000183_HUỲNH_HOÀNG_PHƯỚC_1215_8.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000184', '1218', 7.0, 2.5, 2.0, 2.5, 16, 22, 1.0, 'CHO-LON/12C/A0000184_PHẠM_ĐĂNG_SINH_1218_7.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000185', '1215', 6.25, 2.5, 2.75, 1.0, 14, 22, 1.0, 'CHO-LON/12C/A0000185_ĐỖ_NGỌC_ANH_TÀI_1215_6.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000186', '1216', 9.5, 2.5, 4.0, 3.0, 20, 22, 1.0, 'CHO-LON/12C/A0000186_TRƯƠNG_QUỐC_THÁI_1216_9.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000187', '1217', 3.0, 0.75, 1.25, 1.0, 5, 22, 1.0, 'CHO-LON/12C/A0000187_NGUỴ_HẢI_THÀNH_1217_3.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000188', '1216', 7.75, 2.25, 3.0, 2.5, 16, 22, 1.0, 'CHO-LON/12C/A0000188_NGUYỄN_NGỌC_BẢO_TRÂN_1216_7.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000189', '1217', 7.0, 2.0, 2.0, 3.0, 15, 22, 1.0, 'CHO-LON/12C/A0000189_NGUYỄN_NGỌC_MỸ_TRÂN_1217_7.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000190', '1216', 9.5, 3.0, 4.0, 2.5, 21, 22, 1.0, 'CHO-LON/12C/A0000190_LÊ_HẠNH_UYÊN_1216_9.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000191', '1216', 10.0, 3.0, 4.0, 3.0, 22, 22, 1.0, 'CHO-LON/12C/A0000191_TRƯƠNG_VỈ_VĂN_1216_10.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (2, 1, 'A0000192', '1215', 10.0, 3.0, 4.0, 3.0, 22, 22, 1.0, 'CHO-LON/12C/A0000192_PHẠM_QUỐC_VŨ_1215_10.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000163', '1215', 5.75, 2.0, 1.75, 2.0, 12, 22, 0.949, 'AN-DONG/12A5/12000163_NGUYEN_CHAU_BAO_AN_1215_5.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000164', '1212', 6.85, 2.25, 2.6, 2.0, 15, 22, 0.949, 'AN-DONG/12A5/12000164_NGUYEN_HOAI_BAO_1212_6.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000165', '1218', 9.0, 2.5, 4.0, 2.5, 19, 22, 0.942, 'AN-DONG/12A5/12000165_TRAN_NGOC_MINH_CHAU_1218_9.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000166', '1214', 6.1, 1.75, 1.85, 2.5, 13, 22, 0.957, 'AN-DONG/12A5/12000166_TRAN_Y_MINH_CUONG_1214_6.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000167', '1213', 3.75, 1.25, 1.5, 1.0, 7, 22, 0.948, 'AN-DONG/12A5/12000167_NGUYEN_MY_DUNG_1213_3.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000168', '1217', 7.25, 2.25, 3.5, 1.5, 15, 22, 0.952, 'AN-DONG/12A5/12000168_TRAN_TRI_DUC_1217_7.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000169', '1218', 5.6, 1.75, 1.85, 2.0, 12, 22, 0.959, 'AN-DONG/12A5/12000169_HUYNH_NHAT_HAO_1218_5.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000170', '1211', 6.25, 2.25, 1.5, 2.5, 14, 22, 0.958, 'AN-DONG/12A5/12000170_TRUONG_TUAN_HAO_1211_6.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000171', '1212', 6.25, 2.25, 3.0, 1.0, 13, 22, 0.939, 'AN-DONG/12A5/12000171_LY_GIA_HAN_1212_6.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000172', '1216', 7.75, 2.75, 3.0, 2.0, 17, 22, 0.957, 'AN-DONG/12A5/12000172_DU_TRAN_GIA_HUY_1216_7.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000173', '1216', 8.25, 2.25, 3.5, 2.5, 17, 22, 0.96, 'AN-DONG/12A5/12000173_TRAN_QUOC_HUY_1216_8.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000174', '1215', 9.25, 2.75, 3.5, 3.0, 20, 22, 0.951, 'AN-DONG/12A5/12000174_CHAU_VAN_KHAI_1215_9.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000175', '1216', 6.0, 2.25, 2.25, 1.5, 13, 22, 0.95, 'AN-DONG/12A5/12000175_NGUYEN_PHUC_PHAN_KHANG_1216_6.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000176', '1218', 9.25, 2.75, 4.0, 2.5, 20, 22, 0.952, 'AN-DONG/12A5/12000176_TRAN_NGUYEN_MINH_KHANG_1218_9.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000177', '1213', 5.75, 2.25, 2.0, 1.5, 12, 22, 0.961, 'AN-DONG/12A5/12000177_TRINH_BAO_KHANG_1213_5.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000178', '1217', 5.75, 2.25, 1.5, 2.0, 13, 22, 0.961, 'AN-DONG/12A5/12000178_DO_QUOC_DANG_KHOA_1217_5.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000179', '1217', 7.5, 2.75, 2.25, 2.5, 17, 22, 0.943, 'AN-DONG/12A5/12000179_NGUYEN_ANH_KHOI_1217_7.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000180', '1211', 2.6, 1.5, 1.1, 0.0, 6, 22, 0.953, 'AN-DONG/12A5/12000180_TRAN_ANH_KHOI_1211_2.60d.pdf', 'VALID', 'Khôi phục kết quả đã được thầy xác nhận (trước lần chấm lại 07/11 10:12) – 2026-11-07 12:57:43');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000181', '1215', 9.75, 2.75, 4.0, 3.0, 21, 22, 0.954, 'AN-DONG/12A5/12000181_VO_THI_NHUT_LINH_1215_9.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000182', '1213', 8.35, 2.75, 3.1, 2.5, 19, 22, 0.95, 'AN-DONG/12A5/12000182_NGUYEN_LE_TAN_LOC_1213_8.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000183', '1216', 5.35, 1.25, 2.1, 2.0, 10, 22, 0.955, 'AN-DONG/12A5/12000183_GIANG_TUAN_LOI_1216_5.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000184', '1212', 6.35, 2.25, 2.6, 1.5, 14, 22, 0.951, 'AN-DONG/12A5/12000184_LE_THI_TUYET_MAI_1212_6.35d.pdf', 'VALID', 'Khôi phục kết quả đã được thầy xác nhận (trước lần chấm lại 07/11 10:12) – 2026-11-07 12:57:43');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000185', '1215', 9.0, 3.0, 3.5, 2.5, 20, 22, 0.948, 'AN-DONG/12A5/12000185_TA_GIA_MAN_1215_9.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000186', '1214', 5.85, 2.25, 2.1, 1.5, 13, 22, 0.965, 'AN-DONG/12A5/12000186_CHUNG_NGOC_DIEM_MY_1214_5.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000187', '1212', 3.6, 1.75, 1.85, 0.0, 8, 22, 0.831, 'AN-DONG/12A5/12000187_TRAN_HUU_NAM_1212_3.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000188', '1211', 10.0, 3.0, 4.0, 3.0, 22, 22, 0.933, 'AN-DONG/12A5/12000188_DUONG_BICH_NGOC_1211_10.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000189', '1211', 5.5, 2.5, 2.0, 1.0, 12, 22, 0.953, 'AN-DONG/12A5/12000189_LUU_TUYET_NGOC_1211_5.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000190', '1217', 5.35, 1.75, 1.1, 2.5, 12, 22, 0.94, 'AN-DONG/12A5/12000190_NGUYEN_PHUC_NGUYEN_1217_5.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000191', '1216', 5.6, 2.5, 2.1, 1.0, 13, 22, 0.945, 'AN-DONG/12A5/12000191_VU_LY_YEN_NHI_1216_5.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000192', '1215', 5.6, 1.25, 1.85, 2.5, 11, 22, 0.952, 'AN-DONG/12A5/12000192_NUD_RU_HA_NI_1215_5.60d.pdf', 'VALID', 'INVALID_STUDENT_ID; EMPTY_RESPONSE; FAINT_SINGLE_MARK; SLOT_CONFLICT');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000193', '1218', 6.1, 1.75, 2.35, 2.0, 13, 22, 0.961, 'AN-DONG/12A5/12000193_NGUYEN_MINH_BAO_PHI_1218_6.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000194', '1213', 8.5, 2.5, 3.5, 2.5, 18, 22, 0.961, 'AN-DONG/12A5/12000194_HUYNH_NGUYEN_NHU_QUYNH_1213_8.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000195', '1214', 6.6, 2.5, 2.6, 1.5, 15, 22, 0.955, 'AN-DONG/12A5/12000195_NGUYEN_THI_DIEM_QUYNH_1214_6.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000196', '1212', 8.75, 2.75, 3.0, 3.0, 19, 22, 0.947, 'AN-DONG/12A5/12000196_HUYNH_NGOC_THIEN_THAO_1212_8.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000197', '1218', 9.5, 2.5, 4.0, 3.0, 20, 22, 0.956, 'AN-DONG/12A5/12000197_LE_KIM_PHUONG_THAO_1218_9.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000198', '1213', 8.5, 2.75, 3.25, 2.5, 19, 22, 0.959, 'AN-DONG/12A5/12000198_PHAN_HUYNH_TRAM_1213_8.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000199', '1214', 8.5, 2.5, 3.5, 2.5, 18, 22, 0.956, 'AN-DONG/12A5/12000199_DOAN_KIM_PHUONG_TRINH_1214_8.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000200', '1214', 4.5, 1.75, 1.75, 1.0, 9, 22, 0.946, 'AN-DONG/12A5/12000200_LAM_THANH_TRUC_1214_4.50d.pdf', 'VALID', 'EMPTY_RESPONSE; SLOT_CONFLICT');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000201', '1217', 9.25, 2.25, 4.0, 3.0, 19, 22, 0.951, 'AN-DONG/12A5/12000201_MAI_NHAT_KHANH_VY_1217_9.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000202', '1211', 7.25, 2.25, 3.0, 2.0, 15, 22, 0.957, 'AN-DONG/12A5/12000202_LUONG_LE_YEN_1211_7.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000121', '1215', 6.5, 2.25, 2.75, 1.5, 14, 22, 0.966, 'AN-DONG/12A4/12000121_LE_DOAN_BAO_ANH_1215_6.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000122', '1216', 8.0, 2.0, 3.5, 2.5, 16, 22, 0.953, 'AN-DONG/12A4/12000122_TRAN_TUAN_ANH_1216_8.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000123', '1218', 7.25, 2.25, 2.5, 2.5, 16, 22, 0.952, 'AN-DONG/12A4/12000123_TRAN_THU_HOAI_BANG_1218_7.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000124', '1214', 2.6, 1.0, 1.6, 0.0, 5, 22, 0.948, 'AN-DONG/12A4/12000124_VO_HUYNH_THIEN_DI_1214_2.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000125', '1211', 8.75, 2.75, 3.0, 3.0, 19, 22, 0.962, 'AN-DONG/12A4/12000125_TRAN_THI_BICH_HAO_1211_8.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000126', '1218', 8.75, 2.25, 3.5, 3.0, 18, 22, 0.964, 'AN-DONG/12A4/12000126_DINH_HUA_GIA_HAN_1218_8.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000127', '1211', 4.75, 1.75, 1.5, 1.5, 10, 22, 0.961, 'AN-DONG/12A4/12000127_HUYNH_GIA_HAN_1211_4.75d.pdf', 'VALID', 'EMPTY_RESPONSE; SLOT_CONFLICT; FAINT_SINGLE_MARK');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000128', '1217', 8.25, 2.75, 4.0, 1.5, 18, 22, 0.958, 'AN-DONG/12A4/12000128_TRAN_GIA_HAN_1217_8.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000129', '1211', 4.25, 2.0, 1.75, 0.5, 9, 22, 0.966, 'AN-DONG/12A4/12000129_TRAN_KHANH_HUY_1211_4.25d.pdf', 'VALID', 'EMPTY_RESPONSE; NON_CONTIGUOUS; SLOT_CONFLICT; LIGHT_MARK');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000130', '1213', 5.25, 1.75, 2.0, 1.5, 10, 22, 0.967, 'AN-DONG/12A4/12000130_NGUYEN_TUAN_HUU_1213_5.25d.pdf', 'VALID', 'EMPTY_RESPONSE; SLOT_CONFLICT');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000131', '1216', 3.25, 1.75, 1.5, 0.0, 7, 22, 0.949, 'AN-DONG/12A4/12000131_HO_AN_LAC_1216_3.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000132', '1211', 5.5, 2.0, 1.5, 2.0, 12, 22, 0.961, 'AN-DONG/12A4/12000132_NGO_QUOC_LONG_1211_5.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000133', '1215', 4.5, 1.5, 1.5, 1.5, 10, 22, 0.96, 'AN-DONG/12A4/12000133_PHAM_KHANH_LONG_1215_4.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000134', '1218', 7.0, 2.25, 2.75, 2.0, 15, 22, 0.949, 'AN-DONG/12A4/12000134_LE_TAN_LOC_1218_7.00d.pdf', 'VALID', 'EMPTY_RESPONSE; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000135', '1214', 3.35, 1.25, 2.1, 0.0, 6, 22, 0.96, 'AN-DONG/12A4/12000135_NGUYEN_DU_GIA_MAN_1214_3.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000136', '1212', 4.0, 1.25, 2.75, 0.0, 7, 22, 0.953, 'AN-DONG/12A4/12000136_LE_NHAT_ANH_MINH_1212_4.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000137', '1217', 5.25, 2.0, 1.75, 1.5, 12, 22, 0.955, 'AN-DONG/12A4/12000137_NGUYEN_NGOC_KIM_NGAN_1217_5.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000138', '1213', 3.85, 2.0, 0.85, 1.0, 10, 22, 0.96, 'AN-DONG/12A4/12000138_NGUYEN_TRAN_KIM_NGAN_1213_3.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000139', '1218', 6.25, 2.25, 2.0, 2.0, 13, 22, 0.949, 'AN-DONG/12A4/12000139_PHAM_TRAN_KIM_NGAN_1218_6.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000140', '1216', 6.0, 1.75, 3.25, 1.0, 12, 22, 0.96, 'AN-DONG/12A4/12000140_TON_NGUYEN_DONG_NGHI_1216_6.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000141', '1215', 7.75, 3.0, 2.25, 2.5, 18, 22, 0.956, 'AN-DONG/12A4/12000141_NGUYEN_KIM_NGOC_1215_7.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000142', '1214', 7.25, 2.75, 3.0, 1.5, 16, 22, 0.96, 'AN-DONG/12A4/12000142_QUACH_CHAN_NGUYEN_1214_7.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000143', '1216', 7.75, 2.5, 2.75, 2.5, 17, 22, 0.951, 'AN-DONG/12A4/12000143_VU_HUYNH_THI_YEN_NHI_1216_7.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000144', '1212', 9.75, 2.75, 4.0, 3.0, 21, 22, 0.966, 'AN-DONG/12A4/12000144_NGUYEN_HUYNH_KHANH_NHU_1212_9.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000145', '1215', 7.75, 2.25, 4.0, 1.5, 16, 22, 0.955, 'AN-DONG/12A4/12000145_TRAN_VAN_PHAT_1215_7.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000146', '1214', 4.35, 1.75, 2.1, 0.5, 9, 22, 0.968, 'AN-DONG/12A4/12000146_NGUYEN_THANH_PHU_1214_4.35d.pdf', 'VALID', 'EMPTY_RESPONSE; FAINT_SINGLE_MARK; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000147', '1213', 2.25, 1.0, 1.25, 0.0, 4, 22, 0.958, 'AN-DONG/12A4/12000147_NGUYEN_HOANG_PHUC_1213_2.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000148', '1212', 7.0, 2.75, 2.75, 1.5, 16, 22, 0.956, 'AN-DONG/12A4/12000148_TRAN_NGUYEN_TUYET_PHUONG_1212_7.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000149', '1211', 9.0, 2.5, 3.5, 3.0, 19, 22, 0.955, 'AN-DONG/12A4/12000149_TRAN_TU_QUYEN_1211_9.00d.pdf', 'VALID', 'EMPTY_RESPONSE; FAINT_SINGLE_MARK; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000150', '1213', 3.25, 1.5, 1.25, 0.5, 7, 22, 0.967, 'AN-DONG/12A4/12000150_PHAN_TAN_SANG_1213_3.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000151', '1217', 6.5, 2.0, 2.5, 2.0, 13, 22, 0.956, 'AN-DONG/12A4/12000151_TO_THI_THANH_THAO_1217_6.50d.pdf', 'VALID', 'EMPTY_RESPONSE; FAINT_SINGLE_MARK; LIGHT_MARK; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000152', '1212', 8.5, 2.25, 3.25, 3.0, 18, 22, 0.933, 'AN-DONG/12A4/12000152_MA_VAN_THIEN_1212_8.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000153', '1216', 6.1, 2.25, 2.35, 1.5, 14, 22, 0.959, 'AN-DONG/12A4/12000153_HO_NGUYEN_ANH_THU_1216_6.10d.pdf', 'VALID', 'EMPTY_RESPONSE; SLOT_CONFLICT; FAINT_SINGLE_MARK');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000154', '1215', 3.75, 1.75, 1.5, 0.5, 8, 22, 0.964, 'AN-DONG/12A4/12000154_TRAN_THI_ANH_THU_1215_3.75d.pdf', 'VALID', 'EMPTY_RESPONSE; SLOT_CONFLICT; FAINT_SINGLE_MARK');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000155', '1217', 6.25, 2.0, 2.25, 2.0, 13, 22, 0.958, 'AN-DONG/12A4/12000155_NGUYEN_NGOC_BAO_TRAN_1217_6.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000156', '1213', 6.0, 1.75, 2.75, 1.5, 12, 22, 0.959, 'AN-DONG/12A4/12000156_NGUYEN_KHA_TRI_1213_6.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000157', '1217', 8.5, 3.0, 3.5, 2.0, 19, 22, 0.957, 'AN-DONG/12A4/12000157_TRAN_NGOC_THANH_TUAN_1217_8.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000158', '1214', 4.35, 2.25, 1.6, 0.5, 10, 22, 0.955, 'AN-DONG/12A4/12000158_NGUYEN_PHAM_THANH_VAN_1214_4.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000159', '1218', 8.0, 2.25, 2.75, 3.0, 17, 22, 0.968, 'AN-DONG/12A4/12000159_NGUYEN_NGOC_TUONG_VI_1218_8.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000160', '1212', 8.75, 2.25, 4.0, 2.5, 18, 22, 0.965, 'AN-DONG/12A4/12000160_TRAN_QUOC_VIET_1212_8.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000161', '1211', 6.1, 2.0, 2.1, 2.0, 13, 22, 0.954, 'AN-DONG/12A4/12000161_TRAN_HOANG_QUANG_VINH_1211_6.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000162', '1212', 8.75, 2.25, 3.5, 3.0, 18, 22, 0.959, 'AN-DONG/12A4/12000162_TRUONG_Y_VY_1212_8.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000081', '1215', 6.0, 2.5, 1.5, 2.0, 14, 22, 0.954, 'AN-DONG/12A3/12000081_QUACH_TRIEU_AN_1215_6.00d.pdf', 'VALID', 'EMPTY_RESPONSE; SLOT_CONFLICT');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000082', '1211', 6.25, 3.0, 1.75, 1.5, 15, 22, 0.95, 'AN-DONG/12A3/12000082_BANH_DIEU_ANH_1211_6.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000083', '1212', 5.85, 2.25, 2.6, 1.0, 13, 22, 0.958, 'AN-DONG/12A3/12000083_NGUYEN_LE_CONG_DANH_1212_5.85d.pdf', 'VALID', 'AMBIGUOUS_EXAM_CODE; MULTIPLE_MARK; EMPTY_RESPONSE');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000084', '1211', 4.75, 2.25, 2.0, 0.5, 11, 22, 0.923, 'AN-DONG/12A3/12000084_NGUYEN_TIEN_DAT_1211_4.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000085', '1216', 6.0, 1.75, 2.75, 1.5, 12, 22, 0.949, 'AN-DONG/12A3/12000085_NGUYEN_DAC_HAI_DANG_1216_6.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000086', '1216', 4.35, 1.75, 2.1, 0.5, 9, 22, 0.961, 'AN-DONG/12A3/12000086_LUONG_HUYNH_GIANG_1216_4.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000087', '1217', 6.35, 1.75, 2.6, 2.0, 13, 22, 0.964, 'AN-DONG/12A3/12000087_NGUYEN_THI_THU_HANG_1217_6.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000088', '1216', 2.7, 1.25, 1.45, 0.0, 6, 22, 0.948, 'AN-DONG/12A3/12000088_NGUYEN_THI_NGOC_HUE_1216_2.70d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000089', '1213', 8.25, 2.25, 4.0, 2.0, 17, 22, 0.959, 'AN-DONG/12A3/12000089_HA_GIA_HUY_1213_8.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000090', '1217', 7.0, 3.0, 3.0, 1.0, 16, 22, 0.952, 'AN-DONG/12A3/12000090_LE_KIM_HUYEN_1217_7.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000091', '1214', 2.75, 1.25, 1.5, 0.0, 5, 22, 0.951, 'AN-DONG/12A3/12000091_VO_TUAN_KHAI_1214_2.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000092', '1216', 9.0, 2.5, 3.5, 3.0, 19, 22, 0.954, 'AN-DONG/12A3/12000092_PHAN_KHANG_1216_9.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000093', '1217', 9.5, 2.5, 4.0, 3.0, 20, 22, 0.951, 'AN-DONG/12A3/12000093_PHAN_VO_KIM_KHANH_1217_9.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000094', '1215', 8.5, 2.5, 4.0, 2.0, 18, 22, 0.955, 'AN-DONG/12A3/12000094_NGUYEN_MAI_LAN_1215_8.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000095', '1218', 7.5, 2.5, 3.5, 1.5, 16, 22, 0.949, 'AN-DONG/12A3/12000095_TRAN_NHAT_KHANH_LINH_1218_7.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000096', '1212', 6.6, 2.5, 2.6, 1.5, 15, 22, 0.948, 'AN-DONG/12A3/12000096_HANG_DAT_LUAN_1212_6.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000097', '1212', 8.75, 2.75, 4.0, 2.0, 19, 22, 0.956, 'AN-DONG/12A3/12000097_NGUYEN_DUY_MANH_1212_8.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000098', '1211', 7.75, 2.75, 3.0, 2.0, 17, 22, 0.951, 'AN-DONG/12A3/12000098_BUI_NHAT_MINH_1211_7.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000099', '1211', 8.75, 2.75, 3.0, 3.0, 19, 22, 0.95, 'AN-DONG/12A3/12000099_CAO_KIM_NGAN_1211_8.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000100', '1212', 6.85, 2.25, 2.1, 2.5, 15, 22, 0.955, 'AN-DONG/12A3/12000100_KIEU_NGUYEN_HOANG_NGOC_1212_6.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000101', '1218', 8.0, 2.5, 3.0, 2.5, 17, 22, 0.957, 'AN-DONG/12A3/12000101_CAO_NGOC_NHI_1218_8.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000102', '1217', 4.5, 1.5, 1.5, 1.5, 9, 22, 0.954, 'AN-DONG/12A3/12000102_LAM_TAM_NHI_1217_4.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000103', '1217', 9.25, 2.75, 3.5, 3.0, 20, 22, 0.957, 'AN-DONG/12A3/12000103_NGUYEN_DOAN_PHUONG_NHI_1217_9.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000104', '1218', 8.1, 3.0, 2.1, 3.0, 19, 22, 0.952, 'AN-DONG/12A3/12000104_NGUYEN_THI_THANH_NHU_1218_8.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000105', '1211', 8.75, 2.75, 3.5, 2.5, 19, 22, 0.945, 'AN-DONG/12A3/12000105_PHAN_ANH_PHUC_1211_8.75d.pdf', 'VALID', 'MULTIPLE_MARK; EMPTY_RESPONSE; SLOT_CONFLICT');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000106', '1214', 5.0, 2.25, 2.75, 0.0, 11, 22, 0.962, 'AN-DONG/12A3/12000106_TRUONG_HUE_PHUONG_1214_5.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000107', '1213', 10.0, 3.0, 4.0, 3.0, 22, 22, 0.951, 'AN-DONG/12A3/12000107_TRAN_PHU_QUY_1213_10.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000108', '1218', 7.35, 2.25, 2.6, 2.5, 16, 22, 0.956, 'AN-DONG/12A3/12000108_NGUYEN_THI_MY_TAM_1218_7.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000109', '1213', 7.5, 2.5, 3.0, 2.0, 16, 22, 0.959, 'AN-DONG/12A3/12000109_TRAN_UYEN_TAY_1213_7.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000110', '1213', 5.25, 1.5, 2.25, 1.5, 10, 22, 0.945, 'AN-DONG/12A3/12000110_NGUYEN_HOANG_NHA_THY_1213_5.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000111', '1212', 8.25, 3.0, 2.75, 2.5, 19, 22, 0.0, 'AN-DONG/12A3/12000111_NGUYEN_HOANG_SON_TIEN_1212_8.25d.pdf', 'VALID', 'Khôi phục kết quả đã được thầy xác nhận (trước lần chấm lại 07/11 10:12) – 2026-11-07 12:57:43');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000112', '1216', 9.75, 2.75, 4.0, 3.0, 21, 22, 0.963, 'AN-DONG/12A3/12000112_LAI_TRI_TIN_1216_9.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000113', '1215', 7.1, 2.25, 2.35, 2.5, 16, 22, 0.952, 'AN-DONG/12A3/12000113_NGUYEN_DAM_HONG_TRANG_1215_7.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000114', '1215', 2.1, 0.75, 0.85, 0.5, 4, 22, 0.956, 'AN-DONG/12A3/12000114_NGUYEN_HUYNH_ANH_TRAM_1215_2.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000115', '1218', 5.25, 2.25, 2.0, 1.0, 12, 22, 0.947, 'AN-DONG/12A3/12000115_NGUYEN_NGOC_QUYNH_TRAM_1218_5.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000116', '1214', 5.0, 1.5, 2.5, 1.0, 9, 22, 0.951, 'AN-DONG/12A3/12000116_PHAM_NGUYEN_HOAN_TRAN_1214_5.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000117', '1213', 3.5, 1.25, 0.75, 1.5, 8, 22, 0.959, 'AN-DONG/12A3/12000117_NGUYEN_LE_THANH_TRUC_1213_3.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000118', '1214', 5.5, 2.0, 1.5, 2.0, 13, 22, 0.958, 'AN-DONG/12A3/12000118_NGUYEN_NGOC_PHUONG_VI_1214_5.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000119', '1214', 6.75, 2.5, 2.75, 1.5, 15, 22, 0.96, 'AN-DONG/12A3/12000119_HUYNH_THUY_VY_1214_6.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000120', '1215', 2.85, 1.5, 0.85, 0.5, 7, 22, 0.948, 'AN-DONG/12A3/12000120_NGUYEN_THANH_TUONG_VY_1215_2.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000042', '1211', 7.25, 2.5, 2.75, 2.0, 16, 22, 0.95, 'AN-DONG/12A2/12000042_LU_NGUYEN_KHANH_AN_1211_7.25d.pdf', 'VALID', 'EMPTY_RESPONSE; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000043', '1217', 7.25, 2.25, 3.0, 2.0, 15, 22, 0.958, 'AN-DONG/12A2/12000043_PHAN_LAM_QUYNH_ANH_1217_7.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000044', '1213', 10.0, 3.0, 4.0, 3.0, 22, 22, 0.925, 'AN-DONG/12A2/12000044_VU_GIA_AN_1213_10.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000045', '1214', 4.85, 2.25, 2.1, 0.5, 11, 22, 0.943, 'AN-DONG/12A2/12000045_NGO_THIEN_HOAI_BAO_1214_4.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000046', '1216', 8.5, 3.0, 4.0, 1.5, 19, 22, 0.958, 'AN-DONG/12A2/12000046_TRAN_NGOC_BAO_1216_8.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000047', '1216', 9.75, 2.75, 4.0, 3.0, 21, 22, 0.91, 'AN-DONG/12A2/12000047_LUONG_NGOC_DIEM_1216_9.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000048', '1216', 8.75, 2.25, 4.0, 2.5, 18, 22, 0.961, 'AN-DONG/12A2/12000048_TRAN_THUY_DUONG_1216_8.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000049', '1212', 8.75, 2.75, 3.5, 2.5, 19, 22, 0.963, 'AN-DONG/12A2/12000049_CHAU_TRUONG_DAT_1212_8.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000050', '1214', 7.1, 2.5, 2.6, 2.0, 16, 22, 0.953, 'AN-DONG/12A2/12000050_NGUYEN_THANH_DAT_1214_7.10d.pdf', 'VALID', 'EMPTY_RESPONSE; SLOT_CONFLICT; LIGHT_MARK; FAINT_SINGLE_MARK; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000051', '1218', 6.6, 2.0, 2.6, 2.0, 14, 22, 0.96, 'AN-DONG/12A2/12000051_NGUYEN_LE_NGOC_HAN_1218_6.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000052', '1215', 6.25, 1.75, 2.5, 2.0, 13, 22, 0.951, 'AN-DONG/12A2/12000052_NGUYEN_MINH_HOANG_1215_6.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000053', '1211', 9.0, 3.0, 3.5, 2.5, 20, 22, 0.927, 'AN-DONG/12A2/12000053_NGUYEN_PHAN_MINH_HUY_1211_9.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000054', '1216', 9.0, 2.5, 4.0, 2.5, 19, 22, 0.96, 'AN-DONG/12A2/12000054_NGUYEN_NGOC_HUYNH_1216_9.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000055', '1211', 8.75, 2.75, 3.5, 2.5, 19, 22, 0.96, 'AN-DONG/12A2/12000055_LY_THE_HUONG_1211_8.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000056', '1211', 8.5, 3.0, 3.0, 2.5, 19, 22, 0.943, 'AN-DONG/12A2/12000056_NGUYEN_BUI_NGAN_KHANH_1211_8.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000057', '1218', 7.25, 2.0, 2.75, 2.5, 15, 22, 0.958, 'AN-DONG/12A2/12000057_NGUYEN_VAN_KHANH_1218_7.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000058', '1212', 6.6, 2.0, 2.1, 2.5, 14, 22, 0.96, 'AN-DONG/12A2/12000058_NGO_ANH_KIET_1212_6.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000059', '1217', 4.0, 1.5, 2.0, 0.5, 8, 22, 0.932, 'AN-DONG/12A2/12000059_HO_NGUYEN_HAI_LAM_1217_4.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000060', '1213', 9.5, 2.5, 4.0, 3.0, 20, 22, 0.962, 'AN-DONG/12A2/12000060_LAM_GIA_LINH_1213_9.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000061', '1217', 9.25, 2.75, 3.5, 3.0, 20, 22, 0.957, 'AN-DONG/12A2/12000061_LE_KIM_LOAN_1217_9.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000062', '1215', 10.0, 3.0, 4.0, 3.0, 22, 22, 0.954, 'AN-DONG/12A2/12000062_HA_THI_TUYET_MAI_1215_10.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000063', '1213', 6.75, 2.25, 2.5, 2.0, 14, 22, 0.955, 'AN-DONG/12A2/12000063_LE_PHAN_KIM_NGAN_1213_6.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000064', '1218', 8.5, 2.25, 3.25, 3.0, 18, 22, 0.93, 'AN-DONG/12A2/12000064_NGUYEN_THI_THANH_NGAN_1218_8.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000065', '1214', 7.35, 2.25, 3.1, 2.0, 16, 22, 0.957, 'AN-DONG/12A2/12000065_NGUYEN_HOANG_DONG_NGHI_1214_7.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000066', '1212', 8.25, 2.25, 4.0, 2.0, 17, 22, 0.946, 'AN-DONG/12A2/12000066_LAM_THIEN_NHI_1212_8.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000067', '1214', 8.75, 2.25, 3.5, 3.0, 18, 22, 0.951, 'AN-DONG/12A2/12000067_NGUYEN_HAI_PHI_1214_8.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000068', '1216', 7.6, 2.5, 2.6, 2.5, 17, 22, 0.955, 'AN-DONG/12A2/12000068_NGUYEN_CAO_MY_PHUONG_1216_7.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000069', '1218', 5.25, 1.75, 2.0, 1.5, 11, 22, 0.947, 'AN-DONG/12A2/12000069_HO_NGUYEN_NHU_QUYNH_1218_5.25d.pdf', 'VALID', 'EMPTY_RESPONSE; FAINT_SINGLE_MARK; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000070', '1212', 5.25, 1.75, 2.0, 1.5, 11, 22, 0.952, 'AN-DONG/12A2/12000070_LE_NHU_QUYNH_1212_5.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000071', '1212', 8.75, 2.25, 4.0, 2.5, 18, 22, 0.953, 'AN-DONG/12A2/12000071_TRAN_NGOC_THAO_1212_8.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000072', '1215', 10.0, 3.0, 4.0, 3.0, 22, 22, 0.951, 'AN-DONG/12A2/12000072_TRAN_NGUYEN_QUOC_THANG_1215_10.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000073', '1211', 8.75, 2.75, 4.0, 2.0, 19, 22, 0.95, 'AN-DONG/12A2/12000073_PHAN_NGOC_MINH_THIEN_1211_8.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000074', '1213', 9.5, 3.0, 4.0, 2.5, 21, 22, 0.958, 'AN-DONG/12A2/12000074_PHAN_VO_MINH_TIEN_1213_9.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000075', '1215', 6.75, 2.25, 2.5, 2.0, 14, 22, 0.951, 'AN-DONG/12A2/12000075_VO_HOANG_UYEN_TRANG_1215_6.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000076', '1217', 9.5, 3.0, 3.5, 3.0, 21, 22, 0.96, 'AN-DONG/12A2/12000076_LE_BAO_TRAN_1217_9.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000077', '1215', 10.0, 3.0, 4.0, 3.0, 22, 22, 0.953, 'AN-DONG/12A2/12000077_LUU_BINH_TRI_1215_10.00d.pdf', 'VALID', 'EMPTY_RESPONSE; MULTIPLE_MARK');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000078', '1217', 7.25, 2.75, 3.0, 1.5, 16, 22, 0.957, 'AN-DONG/12A2/12000078_NGUYEN_NGOC_TRUC_1217_7.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000079', '1218', 7.0, 2.5, 3.0, 1.5, 15, 22, 0.963, 'AN-DONG/12A2/12000079_NGUYEN_HOANG_YEN_VY_1218_7.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000080', '1214', 9.75, 2.75, 4.0, 3.0, 21, 22, 0.954, 'AN-DONG/12A2/12000080_NGUYEN_NGOC_TUONG_VY_1214_9.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000001', '1215', 9.0, 3.0, 3.5, 2.5, 20, 22, 0.951, 'AN-DONG/12A1/12000001_MAI_HONG_AN_1215_9.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000002', '1214', 10.0, 3.0, 4.0, 3.0, 22, 22, 0.959, 'AN-DONG/12A1/12000002_TO_HOAI_AN_1214_10.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000003', '1214', 9.25, 2.75, 4.0, 2.5, 20, 22, 0.919, 'AN-DONG/12A1/12000003_LY_GIA_BAO_1214_9.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000004', '1213', 4.1, 2.0, 1.6, 0.5, 9, 22, 0.945, 'AN-DONG/12A1/12000004_PHAN_THIEN_BAO_1213_4.10d.pdf', 'VALID', 'EMPTY_RESPONSE; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000005', '1211', 10.0, 3.0, 4.0, 3.0, 22, 22, 0.962, 'AN-DONG/12A1/12000005_NGUYEN_THI_NGOC_CHAU_1211_10.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000006', '1212', 8.5, 2.5, 3.5, 2.5, 18, 22, 0.956, 'AN-DONG/12A1/12000006_PHAM_HO_MINH_CHI_1212_8.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000007', '1215', 9.0, 3.0, 4.0, 2.0, 20, 22, 0.953, 'AN-DONG/12A1/12000007_PHUNG_CAO_ANH_DUNG_1215_9.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000008', '1218', 9.5, 3.0, 3.5, 3.0, 21, 22, 0.958, 'AN-DONG/12A1/12000008_PHAM_XUAN_DAO_1218_9.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000009', '1212', 8.75, 2.75, 3.5, 2.5, 19, 22, 0.939, 'AN-DONG/12A1/12000009_DANH_NGUYEN_HOAN_DAT_1212_8.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000010', '1211', 9.25, 2.75, 4.0, 2.5, 20, 22, 0.948, 'AN-DONG/12A1/12000010_CHAU_MINH_HAI_1211_9.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000011', '1214', 7.0, 2.0, 2.5, 2.5, 14, 22, 0.955, 'AN-DONG/12A1/12000011_HUYNH_GIA_HAN_1214_7.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000012', '1211', 8.75, 2.75, 3.5, 2.5, 19, 22, 0.948, 'AN-DONG/12A1/12000012_HUYNH_QUOC_HIEP_1211_8.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000013', '1217', 6.0, 2.0, 2.5, 1.5, 12, 22, 0.966, 'AN-DONG/12A1/12000013_DANG_PHUC_HUY_HOANG_1217_6.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000014', '1213', 5.0, 1.75, 2.25, 1.0, 10, 22, 0.955, 'AN-DONG/12A1/12000014_DO_TAN_HUNG_1213_5.00d.pdf', 'VALID', 'EMPTY_RESPONSE; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000015', '1216', 6.75, 2.25, 2.5, 2.0, 14, 22, 0.947, 'AN-DONG/12A1/12000015_TRAN_LONG_HY_1216_6.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000016', '1214', 9.0, 2.5, 4.0, 2.5, 19, 22, 0.921, 'AN-DONG/12A1/12000016_TRUONG_BAO_KHA_1214_9.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000017', '1218', 7.5, 2.5, 3.5, 1.5, 16, 22, 0.957, 'AN-DONG/12A1/12000017_MAI_HONG_KHANG_1218_7.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000018', '1218', 9.75, 2.75, 4.0, 3.0, 21, 22, 0.925, 'AN-DONG/12A1/12000018_NGUYEN_MAI_KHANH_1218_9.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000019', '1218', 5.95, 2.25, 1.7, 2.0, 14, 22, 0.96, 'AN-DONG/12A1/12000019_NGUYEN_NGOC_PHUONG_LINH_1218_5.95d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000020', '1211', 8.75, 2.25, 3.5, 3.0, 18, 22, 0.95, 'AN-DONG/12A1/12000020_HUYNH_CHIEM_DAI_MY_1211_8.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000021', '1213', 10.0, 3.0, 4.0, 3.0, 22, 22, 0.949, 'AN-DONG/12A1/12000021_LE_TUAN_NGHIA_1213_10.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000022', '1211', 6.25, 2.5, 2.75, 1.0, 14, 22, 0.954, 'AN-DONG/12A1/12000022_LE_THI_QUE_NHI_1211_6.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000023', '1215', 7.0, 2.5, 3.0, 1.5, 15, 22, 0.957, 'AN-DONG/12A1/12000023_TRAN_BAO_NHU_1215_7.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000024', '1211', 9.75, 2.75, 4.0, 3.0, 21, 22, 0.957, 'AN-DONG/12A1/12000024_TRUONG_THANH_PHONG_1211_9.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000025', '1217', 9.0, 3.0, 3.5, 2.5, 20, 22, 0.943, 'AN-DONG/12A1/12000025_NGUYEN_NGOC_PHUC_1217_9.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000026', '1212', 10.0, 3.0, 4.0, 3.0, 22, 22, 0.923, 'AN-DONG/12A1/12000026_TRUONG_NHU_QUYNH_1212_10.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000027', '1213', 9.25, 2.75, 4.0, 2.5, 20, 22, 0.954, 'AN-DONG/12A1/12000027_TRAN_BAO_SAN_1213_9.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000028', '1216', 9.0, 2.5, 4.0, 2.5, 19, 22, 0.959, 'AN-DONG/12A1/12000028_TRAN_QUY_SANG_1216_9.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000029', '1216', 8.75, 2.75, 3.5, 2.5, 19, 22, 0.952, 'AN-DONG/12A1/12000029_HA_THANH_SON_1216_8.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000030', '1215', 8.0, 2.5, 3.5, 2.0, 17, 22, 0.954, 'AN-DONG/12A1/12000030_NGUYEN_HA_PHUOC_THEM_1215_8.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000031', '1212', 9.0, 2.5, 3.5, 3.0, 19, 22, 0.952, 'AN-DONG/12A1/12000031_NGUYEN_MAI_BAO_THY_1212_9.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000032', '1217', 9.75, 2.75, 4.0, 3.0, 21, 22, 0.95, 'AN-DONG/12A1/12000032_NGUYEN_PHAM_BAO_THY_1217_9.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000033', '1216', 6.75, 1.75, 3.5, 1.5, 13, 22, 0.945, 'AN-DONG/12A1/12000033_PHAN_QUOC_MINH_TINH_1216_6.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000034', '1216', 7.25, 1.75, 3.5, 2.0, 14, 22, 0.947, 'AN-DONG/12A1/12000034_NGUYEN_TRONG_TOAN_1216_7.25d.pdf', 'VALID', 'MULTIPLE_MARK; EMPTY_RESPONSE');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000035', '1217', 9.75, 2.75, 4.0, 3.0, 21, 22, 0.957, 'AN-DONG/12A1/12000035_TA_NGUYEN_QUANG_TUAN_1217_9.75d.pdf', 'VALID', 'EMPTY_RESPONSE; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000036', '1213', 7.5, 2.5, 3.0, 2.0, 16, 22, 0.901, 'AN-DONG/12A1/12000036_NGUYEN_THANH_TUNG_1213_7.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000037', '1212', 8.5, 3.0, 4.0, 1.5, 19, 22, 0.944, 'AN-DONG/12A1/12000037_DAO_PHAM_BICH_TUYEN_1212_8.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000038', '1218', 7.25, 1.75, 2.5, 3.0, 14, 22, 0.957, 'AN-DONG/12A1/12000038_HUYNH_NHA_TUYET_1218_7.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000039', '1217', 8.0, 2.5, 3.5, 2.0, 17, 22, 0.966, 'AN-DONG/12A1/12000039_NGUYEN_QUOC_VU_1217_8.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000040', '1215', 8.25, 2.75, 3.5, 2.0, 18, 22, 0.957, 'AN-DONG/12A1/12000040_NGUYEN_HUYNH_PHUONG_VY_1215_8.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000041', '1214', 7.0, 2.0, 3.5, 1.5, 14, 22, 0.955, 'AN-DONG/12A1/12000041_NGUYEN_PHAN_NGOC_VY_1214_7.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000375', '1211', 5.0, 2.0, 2.0, 1.0, 10, 22, 0.91, 'AN-DONG/12A10/12000375_TRAN_GIA_BAO_1211_5.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000376', '1216', 4.35, 1.25, 2.1, 1.0, 8, 22, 0.889, 'AN-DONG/12A10/12000376_LE_NGUYEN_BOI_BOI_1216_4.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000377', '1214', 6.0, 1.5, 3.0, 1.5, 11, 22, 0.951, 'AN-DONG/12A10/12000377_TRAN_LE_DUAN_1214_6.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000378', '1215', 3.6, 2.0, 1.6, 0.0, 9, 22, 0.946, 'AN-DONG/12A10/12000378_LY_QUOC_DAT_1215_3.60d.pdf', 'VALID', 'Khôi phục kết quả đã được thầy xác nhận (trước lần chấm lại 07/11 10:12) – 2026-11-07 12:57:43');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000379', '1212', 8.0, 2.5, 4.0, 1.5, 17, 22, 0.949, 'AN-DONG/12A10/12000379_HA_HAI_DANG_1212_8.00d.pdf', 'VALID', 'MULTIPLE_MARK; EMPTY_RESPONSE; FAINT_SINGLE_MARK');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000380', '1211', 7.0, 2.5, 3.5, 1.0, 15, 22, 0.957, 'AN-DONG/12A10/12000380_TRAN_NHAT_HAO_1211_7.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000381', '1214', 5.75, 2.25, 2.5, 1.0, 12, 22, 0.949, 'AN-DONG/12A10/12000381_HUYNH_NGOC_HAN_1214_5.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000382', '1216', 3.6, 1.75, 1.35, 0.5, 8, 22, 0.956, 'AN-DONG/12A10/12000382_TRAN_THIEN_HOA_1216_3.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000383', '1218', 3.45, 1.5, 1.45, 0.5, 8, 22, 0.95, 'AN-DONG/12A10/12000383_TRAN_VAN_QUOC_HOANG_1218_3.45d.pdf', 'VALID', 'EMPTY_RESPONSE; SLOT_CONFLICT');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000384', '1218', 7.5, 2.5, 3.0, 2.0, 16, 22, 0.954, 'AN-DONG/12A10/12000384_NGUYEN_LONG_KHANG_1218_7.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000385', '1213', 4.5, 2.0, 2.0, 0.5, 10, 22, 0.971, 'AN-DONG/12A10/12000385_NGUYEN_BAO_KHANH_1213_4.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000386', '1217', 7.5, 3.0, 3.0, 1.5, 17, 22, 0.958, 'AN-DONG/12A10/12000386_TRUONG_NHA_KY_1217_7.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000387', '1213', 7.75, 2.25, 3.0, 2.5, 16, 22, 0.954, 'AN-DONG/12A10/12000387_LUU_NGUYEN_HOANG_LONG_1213_7.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000388', '1216', 9.0, 2.5, 3.5, 3.0, 19, 22, 0.959, 'AN-DONG/12A10/12000388_QUACH_KIM_NGAN_1216_9.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000389', '1215', 7.5, 2.0, 3.0, 2.5, 15, 22, 0.954, 'AN-DONG/12A10/12000389_VO_PHUONG_NGHI_1215_7.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000390', '1211', 7.5, 2.75, 2.75, 2.0, 17, 22, 0.943, 'AN-DONG/12A10/12000390_NGUYEN_HONG_BAO_NGOC_1211_7.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000391', '1216', 8.0, 2.5, 4.0, 1.5, 17, 22, 0.947, 'AN-DONG/12A10/12000391_TRAN_HOANG_NHU_NGOC_1216_8.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000392', '1214', 4.5, 1.75, 1.75, 1.0, 9, 22, 0.954, 'AN-DONG/12A10/12000392_HUYNH_MINH_NHAT_1214_4.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000393', '1213', 4.85, 2.0, 1.85, 1.0, 11, 22, 0.953, 'AN-DONG/12A10/12000393_LA_TUYET_NHI_1213_4.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000394', '1218', 6.5, 1.75, 2.75, 2.0, 13, 22, 0.952, 'AN-DONG/12A10/12000394_LE_NGOC_NHI_1218_6.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000395', '1218', 6.75, 1.75, 3.5, 1.5, 13, 22, 0.947, 'AN-DONG/12A10/12000395_PHAM_NGOC_NHI_1218_6.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000396', '1215', 7.25, 2.25, 3.0, 2.0, 15, 22, 0.955, 'AN-DONG/12A10/12000396_LAM_CAM_PHONG_1215_7.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000397', '1217', 2.6, 1.0, 1.6, 0.0, 5, 22, 0.957, 'AN-DONG/12A10/12000397_DIEP_GIA_PHU_1217_2.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000398', '1217', 4.0, 2.0, 1.5, 0.5, 9, 22, 0.958, 'AN-DONG/12A10/12000398_TRAN_THANH_TAM_1217_4.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000399', '1215', 5.75, 2.25, 3.0, 0.5, 12, 22, 0.97, 'AN-DONG/12A10/12000399_NGUYEN_LE_KIM_THOA_1215_5.75d.pdf', 'VALID', 'MULTIPLE_MARK; EMPTY_RESPONSE');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000400', '1212', 7.0, 2.25, 2.75, 2.0, 15, 22, 0.965, 'AN-DONG/12A10/12000400_BUI_MANH_TIEN_1212_7.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000401', '1217', 9.25, 2.75, 3.5, 3.0, 20, 22, 0.96, 'AN-DONG/12A10/12000401_TRAN_NGUYEN_HUYNH_TRANG_1217_9.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000402', '1212', 6.25, 2.25, 3.0, 1.0, 13, 22, 0.959, 'AN-DONG/12A10/12000402_HO_NGUYEN_MAI_TRAM_1212_6.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000403', '1211', 7.25, 2.25, 3.5, 1.5, 15, 22, 0.96, 'AN-DONG/12A10/12000403_NGUYEN_NGOC_TRAN_1211_7.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000404', '1211', 7.5, 2.0, 4.0, 1.5, 15, 22, 0.963, 'AN-DONG/12A10/12000404_HUYNH_MINH_TRIET_1211_7.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000405', '1213', 7.75, 2.75, 4.0, 1.0, 17, 22, 0.958, 'AN-DONG/12A10/12000405_PHAM_NGOC_TRONG_1213_7.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000406', '1214', 8.5, 3.0, 3.0, 2.5, 19, 22, 0.964, 'AN-DONG/12A10/12000406_DAO_NGOC_THANH_TRUC_1214_8.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000407', '1218', 6.0, 2.0, 2.0, 2.0, 13, 22, 0.957, 'AN-DONG/12A10/12000407_NGUYEN_LE_MINH_TUYET_1218_6.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000408', '1214', 5.25, 1.5, 2.25, 1.5, 10, 22, 0.957, 'AN-DONG/12A10/12000408_NGUYEN_DAM_PHUONG_UYEN_1214_5.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000409', '1215', 7.0, 2.5, 2.5, 2.0, 16, 22, 0.955, 'AN-DONG/12A10/12000409_PHAM_THANH_VAN_1215_7.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000410', '1213', 6.5, 2.5, 3.0, 1.0, 14, 22, 0.963, 'AN-DONG/12A10/12000410_LU_MINH_VU_1213_6.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000411', '1211', 4.75, 1.5, 2.25, 1.0, 9, 22, 0.961, 'AN-DONG/12A10/12000411_DO_LE_TRIEU_VY_1211_4.75d.pdf', 'VALID', 'EMPTY_RESPONSE; NON_CONTIGUOUS; FAINT_SINGLE_MARK');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000412', '1217', 9.5, 3.0, 4.0, 2.5, 21, 22, 0.964, 'AN-DONG/12A10/12000412_DO_THUY_YEN_VY_1217_9.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000413', '1212', 7.5, 2.5, 3.5, 1.5, 16, 22, 0.958, 'AN-DONG/12A10/12000413_NGUYEN_NGOC_MINH_VY_1212_7.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000414', '1212', 5.35, 1.5, 2.35, 1.5, 11, 22, 0.958, 'AN-DONG/12A10/12000414_PHAM_NGUYEN_TUONG_VY_1212_5.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000415', '1216', 8.25, 1.75, 4.0, 2.5, 16, 22, 0.965, 'AN-DONG/12A10/12000415_TRAN_VO_HAI_VY_1216_8.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000330', '1213', 5.1, 2.0, 2.1, 1.0, 11, 22, 0.963, 'AN-DONG/12A9/12000330_BUI_NGOC_VAN_ANH_1213_5.10d.pdf', 'VALID', 'EMPTY_RESPONSE; FAINT_SINGLE_MARK; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000331', '1216', 8.25, 2.75, 4.0, 1.5, 18, 22, 0.957, 'AN-DONG/12A9/12000331_NGUYEN_TRAN_NHU_CAC_1216_8.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000332', '1214', 8.25, 2.75, 3.0, 2.5, 18, 22, 0.961, 'AN-DONG/12A9/12000332_TRAN_NGOC_BAO_CHAU_1214_8.25d.pdf', 'VALID', 'EMPTY_RESPONSE; FAINT_SINGLE_MARK');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000333', '1214', 6.75, 2.5, 2.75, 1.5, 15, 22, 0.955, 'AN-DONG/12A9/12000333_PHUNG_MINH_DUY_1214_6.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000334', '1214', 6.25, 2.5, 2.25, 1.5, 14, 22, 0.962, 'AN-DONG/12A9/12000334_PHAM_THIEN_DANG_1214_6.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000335', '1217', 5.35, 2.0, 1.85, 1.5, 12, 22, 0.968, 'AN-DONG/12A9/12000335_NGUYEN_NGOC_QUYNH_GIANG_1217_5.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000336', '1218', 4.5, 2.5, 2.0, 0.0, 11, 22, 0.95, 'AN-DONG/12A9/12000336_TRAN_NGOC_GIA_HAN_1218_4.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000337', '1211', 2.5, 1.25, 1.25, 0.0, 5, 22, 0.945, 'AN-DONG/12A9/12000337_NGUYEN_TRUNG_HIEU_1211_2.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000338', '1212', 7.1, 2.5, 3.1, 1.5, 16, 22, 0.961, 'AN-DONG/12A9/12000338_LA_MY_KHANH_1212_7.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000340', '1212', 6.1, 2.0, 2.1, 2.0, 13, 22, 0.959, 'AN-DONG/12A9/12000340_NGUYEN_DANG_KHOA_1212_6.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000341', '1214', 4.1, 2.0, 1.6, 0.5, 9, 22, 0.957, 'AN-DONG/12A9/12000341_VO_THI_TRUC_LINH_1214_4.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000342', '1213', 6.25, 2.0, 2.25, 2.0, 13, 22, 0.967, 'AN-DONG/12A9/12000342_NGUYEN_XUAN_MAI_1213_6.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000343', '1212', 3.5, 1.25, 1.75, 0.5, 6, 22, 0.967, 'AN-DONG/12A9/12000343_LE_NGOC_MINH_1212_3.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000344', '1216', 5.75, 2.0, 2.25, 1.5, 12, 22, 0.958, 'AN-DONG/12A9/12000344_PHAN_LE_THAO_MY_1216_5.75d.pdf', 'VALID', 'EMPTY_RESPONSE; SLOT_CONFLICT; FAINT_SINGLE_MARK');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000345', '1215', 5.75, 2.25, 1.5, 2.0, 13, 22, 0.956, 'AN-DONG/12A9/12000345_HUYNH_THI_KIM_NGAN_1215_5.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000346', '1212', 6.85, 2.25, 3.1, 1.5, 15, 22, 0.951, 'AN-DONG/12A9/12000346_TRAN_PHUC_KIM_NGAN_1212_6.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000347', '1213', 8.25, 2.75, 3.5, 2.0, 18, 22, 0.964, 'AN-DONG/12A9/12000347_LE_NGOC_1213_8.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000348', '1215', 9.5, 2.5, 4.0, 3.0, 20, 22, 0.963, 'AN-DONG/12A9/12000348_TRAN_BAO_NGOC_1215_9.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000349', '1217', 5.75, 1.5, 2.25, 2.0, 11, 22, 0.958, 'AN-DONG/12A9/12000349_VO_HONG_BAO_NGOC_1217_5.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000350', '1212', 4.25, 2.0, 1.75, 0.5, 10, 22, 0.959, 'AN-DONG/12A9/12000350_LE_THI_THAO_NGUYEN_1212_4.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000351', '1218', 5.85, 2.25, 2.1, 1.5, 13, 22, 0.962, 'AN-DONG/12A9/12000351_QUACH_BAO_NHI_1218_5.85d.pdf', 'VALID', 'MULTIPLE_MARK; EMPTY_RESPONSE');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000352', '1213', 8.75, 2.25, 3.5, 3.0, 18, 22, 0.956, 'AN-DONG/12A9/12000352_DO_NGUYEN_QUYNH_NHU_1213_8.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000353', '1216', 4.25, 2.0, 1.25, 1.0, 10, 22, 0.958, 'AN-DONG/12A9/12000353_NGUYEN_VINH_PHUC_1216_4.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000354', '1213', 6.0, 2.25, 2.75, 1.0, 13, 22, 0.966, 'AN-DONG/12A9/12000354_NGUYEN_NGOC_UYEN_PHUONG_1213_6.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000355', '1213', 3.85, 1.0, 1.85, 1.0, 7, 22, 0.957, 'AN-DONG/12A9/12000355_NGUYEN_TRAN_THANH_QUANG_1213_3.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000356', '1212', 5.85, 2.25, 2.1, 1.5, 13, 22, 0.967, 'AN-DONG/12A9/12000356_HUYNH_ANH_QUAN_1212_5.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000357', '1218', 5.1, 2.25, 1.85, 1.0, 12, 22, 0.964, 'AN-DONG/12A9/12000357_HUA_MINH_QUAN_1218_5.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000358', '1215', 1.7, 0.5, 0.7, 0.5, 3, 22, 0.959, 'AN-DONG/12A9/12000358_NGUYEN_VAN_PHAT_TAI_1215_1.70d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000359', '1218', 5.75, 1.75, 2.5, 1.5, 12, 22, 0.963, 'AN-DONG/12A9/12000359_LE_TRAN_THIEN_TAM_1218_5.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000360', '1211', 5.5, 2.5, 2.0, 1.0, 13, 22, 0.95, 'AN-DONG/12A9/12000360_HUYNH_NGOC_THANH_THAO_1211_5.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000361', '1216', 4.75, 2.25, 2.0, 0.5, 11, 22, 0.966, 'AN-DONG/12A9/12000361_NGUYEN_THANH_THAO_1216_4.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000362', '1217', 9.25, 2.25, 4.0, 3.0, 19, 22, 0.956, 'AN-DONG/12A9/12000362_HUYNH_THI_CAM_THU_1217_9.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000363', '1211', 7.5, 2.5, 3.0, 2.0, 16, 22, 0.941, 'AN-DONG/12A9/12000363_PHAM_THUAN_TRI_TIN_1211_7.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000364', '1217', 5.25, 1.25, 2.5, 1.5, 10, 22, 0.962, 'AN-DONG/12A9/12000364_PHAN_NGUYEN_THANH_TIN_1217_5.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000365', '1211', 9.75, 2.75, 4.0, 3.0, 21, 22, 0.951, 'AN-DONG/12A9/12000365_HA_PHUONG_TRANG_1211_9.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000366', '1216', 2.2, 1.25, 0.95, 0.0, 5, 22, 0.955, 'AN-DONG/12A9/12000366_TRAN_NGOC_THUY_TRANG_1216_2.20d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000367', '1214', 6.25, 2.25, 3.0, 1.0, 13, 22, 0.967, 'AN-DONG/12A9/12000367_TRAN_NGOC_THUY_TRAM_1214_6.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000368', '1211', 5.5, 1.75, 2.25, 1.5, 11, 22, 0.965, 'AN-DONG/12A9/12000368_NGUYEN_LE_BAO_TRAN_1211_5.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000369', '1218', 5.85, 2.5, 1.85, 1.5, 14, 22, 0.958, 'AN-DONG/12A9/12000369_TRAN_KHA_TU_1218_5.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000370', '1214', 7.0, 2.0, 3.0, 2.0, 14, 22, 0.968, 'AN-DONG/12A9/12000370_TANG_THANH_TUYEN_1214_7.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000371', '1211', 6.5, 2.25, 2.75, 1.5, 14, 22, 0.962, 'AN-DONG/12A9/12000371_NGUYEN_NGOC_CAT_TUONG_1211_6.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000372', '1215', 5.25, 2.0, 1.75, 1.5, 11, 22, 0.967, 'AN-DONG/12A9/12000372_PHAN_NGOC_MINH_VI_1215_5.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000373', '1217', 4.6, 1.75, 1.35, 1.5, 11, 22, 0.967, 'AN-DONG/12A9/12000373_DO_HUYNH_PHUONG_VY_1217_4.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000374', '1215', 6.0, 1.5, 3.0, 1.5, 11, 22, 0.958, 'AN-DONG/12A9/12000374_TRAN_BAO_VY_1215_6.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000288', '1214', 6.0, 1.75, 2.75, 1.5, 12, 22, 0.959, 'AN-DONG/12A8/12000288_PHAM_QUYNH_ANH_1214_6.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000289', '1217', 6.75, 2.75, 2.5, 1.5, 15, 22, 0.957, 'AN-DONG/12A8/12000289_TA_GIA_AN_1217_6.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000290', '1214', 3.6, 2.0, 1.1, 0.5, 9, 22, 0.947, 'AN-DONG/12A8/12000290_NGUYEN_HUYNH_GIA_BAO_1214_3.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000291', '1212', 8.0, 2.5, 4.0, 1.5, 17, 22, 0.956, 'AN-DONG/12A8/12000291_NGUYEN_NGOC_GIA_BAO_1212_8.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000292', '1212', 9.5, 2.5, 4.0, 3.0, 20, 22, 0.962, 'AN-DONG/12A8/12000292_LAM_NGOC_CHAU_1212_9.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000293', '1212', 5.6, 1.75, 1.85, 2.0, 12, 22, 0.958, 'AN-DONG/12A8/12000293_BUI_NGOC_DIEP_1212_5.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000294', '1213', 9.25, 2.75, 4.0, 2.5, 20, 22, 0.965, 'AN-DONG/12A8/12000294_BANH_TUYET_DUYEN_1213_9.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000295', '1216', 8.25, 2.5, 2.75, 3.0, 18, 22, 0.954, 'AN-DONG/12A8/12000295_LAM_NHU_HIEN_1216_8.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000296', '1216', 6.25, 2.25, 2.5, 1.5, 13, 22, 0.963, 'AN-DONG/12A8/12000296_DANG_PHAN_ANH_HONG_1216_6.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000297', '1215', 6.6, 2.75, 1.85, 2.0, 16, 22, 0.97, 'AN-DONG/12A8/12000297_BUI_QUOC_HUY_1215_6.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000298', '1212', 7.75, 2.75, 3.5, 1.5, 17, 22, 0.96, 'AN-DONG/12A8/12000298_TRUONG_MINH_KHOI_1212_7.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000299', '1215', 5.75, 2.5, 2.25, 1.0, 13, 22, 0.966, 'AN-DONG/12A8/12000299_NGUYEN_NGOC_HOANG_KIM_1215_5.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000300', '1214', 5.6, 2.25, 2.35, 1.0, 13, 22, 0.975, 'AN-DONG/12A8/12000300_LY_HOANG_LINH_1214_5.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000301', '1217', 9.0, 2.5, 4.0, 2.5, 19, 22, 0.967, 'AN-DONG/12A8/12000301_NGU_NGOC_LINH_1217_9.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000302', '1212', 4.5, 1.5, 2.0, 1.0, 9, 22, 0.966, 'AN-DONG/12A8/12000302_UNG_THUY_THANH_MAI_1212_4.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000303', '1211', 7.5, 2.75, 2.75, 2.0, 17, 22, 0.958, 'AN-DONG/12A8/12000303_DINH_THU_NGAN_1211_7.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000304', '1213', 6.75, 2.25, 2.5, 2.0, 14, 22, 0.956, 'AN-DONG/12A8/12000304_LE_LUONG_QUE_NGOC_1213_6.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000305', '1217', 4.5, 1.25, 1.75, 1.5, 9, 22, 0.833, 'AN-DONG/12A8/12000305_NGUYEN_THANH_THAO_NGOC_1217_5.50d.pdf', 'REPLACED', 'Trùng SBD (giữ bài 5.50đ tại 202611020124.pdf#page=43, thay thế bài 4.50đ)');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000306', '1215', 7.25, 2.25, 3.0, 2.0, 15, 22, 0.971, 'AN-DONG/12A8/12000306_BUI_THANH_NGUYEN_1215_7.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000307', '1216', 4.5, 2.0, 1.0, 1.5, 11, 22, 0.957, 'AN-DONG/12A8/12000307_DINH_THIEN_NHAN_1216_4.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000308', '1216', 5.25, 2.0, 2.75, 0.5, 11, 22, 0.966, 'AN-DONG/12A8/12000308_HUYNH_THANH_NHAN_1216_5.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000309', '1218', 8.5, 2.0, 4.0, 2.5, 17, 22, 0.967, 'AN-DONG/12A8/12000309_DUONG_BAO_NHI_1218_8.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000310', '1211', 8.5, 2.5, 3.5, 2.5, 18, 22, 0.955, 'AN-DONG/12A8/12000310_DANG_NGOC_LINH_NHU_1211_8.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000311', '1213', 8.75, 2.25, 3.5, 3.0, 18, 22, 0.963, 'AN-DONG/12A8/12000311_LAI_THI_TAM_NHU_1213_8.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000312', '1218', 4.35, 1.75, 1.6, 1.0, 9, 22, 0.956, 'AN-DONG/12A8/12000312_BACH_GIA_PHU_1218_4.35d.pdf', 'VALID', 'MULTIPLE_MARK; EMPTY_RESPONSE; SLOT_CONFLICT');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000313', '1213', 8.0, 2.75, 2.75, 2.5, 18, 22, 0.966, 'AN-DONG/12A8/12000313_TRAN_BAO_PHUC_1213_8.00d.pdf', 'VALID', 'EMPTY_RESPONSE; SLOT_CONFLICT');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000314', '1215', 3.85, 1.5, 0.85, 1.5, 9, 22, 0.965, 'AN-DONG/12A8/12000314_TRAN_NGOC_PHUNG_1215_3.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000315', '1217', 8.25, 2.25, 3.5, 2.5, 17, 22, 0.964, 'AN-DONG/12A8/12000315_HA_MY_PHUONG_1217_8.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000316', '1218', 5.0, 1.75, 2.25, 1.0, 10, 22, 0.963, 'AN-DONG/12A8/12000316_LE_NHU_QUYNH_1218_5.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000317', '1211', 5.25, 2.0, 1.75, 1.5, 12, 22, 0.961, 'AN-DONG/12A8/12000317_TO_NHU_QUYNH_1211_5.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000318', '1214', 5.6, 2.0, 2.1, 1.5, 12, 22, 0.955, 'AN-DONG/12A8/12000318_TRAN_MINH_THANG_1214_5.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000319', '1218', 3.35, 1.75, 1.6, 0.0, 8, 22, 0.967, 'AN-DONG/12A8/12000319_TRAN_NGUYEN_MAI_THI_1218_3.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000320', '1215', 7.5, 2.5, 2.5, 2.5, 16, 22, 0.967, 'AN-DONG/12A8/12000320_NGUYEN_CHI_THIEN_1215_7.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000321', '1218', 7.75, 2.75, 3.5, 1.5, 17, 22, 0.949, 'AN-DONG/12A8/12000321_TRAN_THAI_THIEN_1218_7.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000322', '1213', 6.25, 2.0, 2.75, 1.5, 13, 22, 0.952, 'AN-DONG/12A8/12000322_TRAN_THI_DIEU_THY_1213_6.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000323', '1214', 7.85, 2.75, 3.1, 2.0, 18, 22, 0.957, 'AN-DONG/12A8/12000323_PHAN_NGUYEN_THUY_TRAM_1214_7.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000324', '1211', 6.0, 1.75, 3.25, 1.0, 12, 22, 0.965, 'AN-DONG/12A8/12000324_NGUYEN_MINH_TUAN_1211_6.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000325', '1217', 6.25, 1.75, 3.0, 1.5, 12, 22, 0.955, 'AN-DONG/12A8/12000325_VU_MINH_TUAN_1217_6.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000326', '1211', 9.25, 2.75, 3.5, 3.0, 20, 22, 0.96, 'AN-DONG/12A8/12000326_PHAM_DO_TUONG_VI_1211_9.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000327', '1216', 4.6, 2.5, 1.6, 0.5, 11, 22, 0.966, 'AN-DONG/12A8/12000327_NGUYEN_PHUOC_VINH_1216_4.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000328', '1212', 7.75, 2.75, 3.5, 1.5, 17, 22, 0.968, 'AN-DONG/12A8/12000328_TRAN_TRUONG_PHUONG_VY_1212_7.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000329', '1211', 8.5, 3.0, 3.0, 2.5, 19, 22, 0.954, 'AN-DONG/12A8/12000329_VO_GIA_VY_1211_8.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000305', '1217', 5.5, 1.25, 1.75, 2.5, 11, 22, 0.957, 'AN-DONG/12A8/12000305_NGUYEN_THANH_THAO_NGOC_1217_5.50d.pdf', 'VALID', 'EMPTY_RESPONSE; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000246', '1215', 6.25, 2.0, 2.25, 2.0, 13, 22, 0.959, 'AN-DONG/12A7/12000246_LE_NGOC_BAO_ANH_1215_6.25d.pdf', 'VALID', 'Khôi phục kết quả đã được thầy xác nhận (trước lần chấm lại 07/11 10:12) – 2026-11-07 12:57:43');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000247', '1211', 7.5, 2.25, 3.25, 2.0, 16, 22, 0.944, 'AN-DONG/12A7/12000247_DAM_PHAM_THIEN_BAO_1211_7.50d.pdf', 'VALID', 'Khôi phục kết quả đã được thầy xác nhận (trước lần chấm lại 07/11 10:12) – 2026-11-07 12:57:43');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000248', '1216', 7.0, 2.25, 2.25, 2.5, 15, 22, 0.965, 'AN-DONG/12A7/12000248_HUYNH_GIA_BAO_1216_7.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000249', '1216', 7.5, 2.75, 2.75, 2.0, 17, 22, 0.961, 'AN-DONG/12A7/12000249_LUONG_THU_BINH_1216_7.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000250', '1213', 9.5, 3.0, 4.0, 2.5, 21, 22, 0.963, 'AN-DONG/12A7/12000250_NGUYEN_BI_BON_1213_9.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000251', '1218', 8.5, 2.5, 3.0, 3.0, 18, 22, 0.961, 'AN-DONG/12A7/12000251_NGUYEN_KIM_DUNG_1218_8.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000252', '1218', 8.75, 2.75, 4.0, 2.0, 19, 22, 0.952, 'AN-DONG/12A7/12000252_TRAN_HUE_HANG_1218_8.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000253', '1217', 9.75, 2.75, 4.0, 3.0, 21, 22, 0.96, 'AN-DONG/12A7/12000253_TRUONG_BAO_HAN_1217_9.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000254', '1213', 8.75, 2.75, 3.0, 3.0, 19, 22, 0.96, 'AN-DONG/12A7/12000254_VO_XUAN_HIEN_1213_8.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000255', '1212', 5.5, 2.25, 2.25, 1.0, 12, 22, 0.96, 'AN-DONG/12A7/12000255_KHUONG_MY_HOA_1212_5.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000256', '1214', 3.1, 1.0, 1.1, 1.0, 6, 22, 0.968, 'AN-DONG/12A7/12000256_HONG_TU_KY_1214_3.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000257', '1212', 5.85, 2.5, 1.85, 1.5, 14, 22, 0.961, 'AN-DONG/12A7/12000257_CHENH_TRI_LAM_1212_5.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000258', '1217', 10.0, 3.0, 4.0, 3.0, 22, 22, 0.954, 'AN-DONG/12A7/12000258_NGO_KIM_LIEN_1217_10.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000259', '1216', 8.0, 2.25, 3.25, 2.5, 17, 22, 0.97, 'AN-DONG/12A7/12000259_HUA_MY_LINH_1216_8.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000260', '1215', 7.5, 2.25, 2.75, 2.5, 16, 22, 0.913, 'AN-DONG/12A7/12000260_QUACH_AI_LINH_1215_7.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000261', '1213', 8.75, 2.75, 3.5, 2.5, 19, 22, 0.957, 'AN-DONG/12A7/12000261_TRUONG_PHUNG_LINH_1213_8.75d.pdf', 'VALID', 'MULTIPLE_MARK; EMPTY_RESPONSE');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000262', '1218', 6.75, 2.5, 2.25, 2.0, 15, 22, 0.964, 'AN-DONG/12A7/12000262_TANG_THI_XUAN_MAI_1218_6.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000263', '1211', 8.5, 2.5, 3.5, 2.5, 18, 22, 0.961, 'AN-DONG/12A7/12000263_DANG_THI_TRA_MY_1211_8.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000264', '1218', 8.5, 2.5, 3.5, 2.5, 18, 22, 0.96, 'AN-DONG/12A7/12000264_TRUONG_HAN_NA_1218_8.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000265', '1212', 7.25, 2.5, 2.25, 2.5, 16, 22, 0.957, 'AN-DONG/12A7/12000265_LAM_NHAT_NAM_1212_7.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000266', '1216', 5.85, 2.0, 1.85, 2.0, 13, 22, 0.957, 'AN-DONG/12A7/12000266_NGUYEN_KHANH_NGAN_1216_5.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000267', '1215', 9.0, 2.75, 3.25, 3.0, 20, 22, 0.921, 'AN-DONG/12A7/12000267_VUONG_HONG_NGAN_1215_9.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000268', '1214', 9.5, 3.0, 3.5, 3.0, 21, 22, 0.965, 'AN-DONG/12A7/12000268_LANG_MINH_NGUYET_1214_9.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000269', '1217', 6.5, 1.5, 3.0, 2.0, 12, 22, 0.956, 'AN-DONG/12A7/12000269_DANG_MINH_NHAT_1217_6.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000270', '1215', 9.25, 2.75, 3.5, 3.0, 20, 22, 0.938, 'AN-DONG/12A7/12000270_GIANG_QUYNH_NGOC_NHI_1215_9.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000271', '1214', 8.25, 2.25, 3.5, 2.5, 17, 22, 0.958, 'AN-DONG/12A7/12000271_TRIEU_MAN_NHI_1214_8.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000272', '1212', 9.75, 2.75, 4.0, 3.0, 21, 22, 0.961, 'AN-DONG/12A7/12000272_TRINH_TUYET_NHI_1212_9.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000273', '1211', 7.5, 2.5, 3.0, 2.0, 16, 22, 0.906, 'AN-DONG/12A7/12000273_HUYNH_THI_PHI_PHUNG_1211_7.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000274', '1212', 9.0, 3.0, 4.0, 2.0, 20, 22, 0.959, 'AN-DONG/12A7/12000274_DIEP_VINH_QUANG_1212_9.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000275', '1214', 5.5, 2.25, 1.75, 1.5, 12, 22, 0.962, 'AN-DONG/12A7/12000275_TRUONG_MY_QUYEN_1214_5.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000276', '1215', 4.35, 1.75, 0.6, 2.0, 11, 22, 0.963, 'AN-DONG/12A7/12000276_TRUONG_UYEN_SANG_1215_4.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000277', '1214', 8.75, 2.75, 3.0, 3.0, 19, 22, 0.96, 'AN-DONG/12A7/12000277_TRAN_NGUYEN_DAN_THANH_1214_8.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000278', '1217', 7.0, 2.5, 2.0, 2.5, 16, 22, 0.958, 'AN-DONG/12A7/12000278_NGO_QUOC_THINH_1217_7.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000279', '1211', 3.05, 2.25, 0.3, 0.5, 10, 22, 0.916, 'AN-DONG/12A7/12000279_LAM_THANH_THU_1211_3.05d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000280', '1211', 6.75, 2.5, 2.25, 2.0, 15, 22, 0.953, 'AN-DONG/12A7/12000280_NGUYEN_THI_NGOC_TRAM_1211_6.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000281', '1216', 6.75, 2.25, 3.0, 1.5, 14, 22, 0.966, 'AN-DONG/12A7/12000281_VO_HOANG_BAO_TRAN_1216_6.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000282', '1213', 8.75, 2.75, 4.0, 2.0, 19, 22, 0.96, 'AN-DONG/12A7/12000282_VO_NGOC_TUYEN_1213_8.75d.pdf', 'VALID', 'EMPTY_RESPONSE; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000283', '1213', 10.0, 3.0, 4.0, 3.0, 22, 22, 0.927, 'AN-DONG/12A7/12000283_NGUYEN_THI_NGOC_TUYET_1213_10.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000284', '1217', 8.25, 2.75, 3.0, 2.5, 18, 22, 0.955, 'AN-DONG/12A7/12000284_HO_TUAN_VI_1217_8.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000285', '1218', 7.5, 2.5, 3.0, 2.0, 16, 22, 0.966, 'AN-DONG/12A7/12000285_DAM_QUOC_VINH_1218_7.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000286', '1211', 9.75, 2.75, 4.0, 3.0, 21, 22, 0.969, 'AN-DONG/12A7/12000286_NGU_CHI_VINH_1211_9.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000287', '1212', 4.5, 1.5, 2.5, 0.5, 8, 22, 0.97, 'AN-DONG/12A7/12000287_DIEU_HOANG_YEN_1212_4.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000203', '1217', 3.35, 1.25, 1.6, 0.5, 7, 22, 0.958, 'AN-DONG/12A6/12000203_HO_HOAI_AN_1217_3.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000204', '1212', 5.0, 2.25, 2.25, 0.5, 11, 22, 0.961, 'AN-DONG/12A6/12000204_NGUYEN_HOAI_AN_1212_5.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000205', '1213', 5.25, 2.25, 1.5, 1.5, 13, 22, 0.959, 'AN-DONG/12A6/12000205_VO_TU_ANH_1213_5.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000206', '1216', 4.5, 2.0, 2.0, 0.5, 10, 22, 0.959, 'AN-DONG/12A6/12000206_VO_TUYET_ANH_1216_4.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000207', '1211', 5.5, 1.5, 3.0, 1.0, 10, 22, 0.964, 'AN-DONG/12A6/12000207_VO_GIA_AN_1211_5.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000208', '1213', 7.0, 2.5, 3.0, 1.5, 15, 22, 0.967, 'AN-DONG/12A6/12000208_NGUYEN_THAI_BAO_1213_7.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000209', '1213', 3.1, 1.75, 0.85, 0.5, 8, 22, 0.957, 'AN-DONG/12A6/12000209_TRAN_THI_TUYET_DIEM_1213_3.10d.pdf', 'VALID', 'EMPTY_RESPONSE; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000210', '1211', 5.5, 2.0, 3.0, 0.5, 11, 22, 0.958, 'AN-DONG/12A6/12000210_TRAN_THI_MY_DUNG_1211_5.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000211', '1218', 5.6, 2.0, 2.6, 1.0, 12, 22, 0.962, 'AN-DONG/12A6/12000211_NGUYEN_DUC_DUY_1218_5.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000212', '1218', 7.0, 2.0, 2.5, 2.5, 15, 22, 0.962, 'AN-DONG/12A6/12000212_HUYNH_TUAN_HAO_1218_7.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000213', '1213', 7.0, 2.5, 3.0, 1.5, 15, 22, 0.962, 'AN-DONG/12A6/12000213_NGO_GIA_HAN_1213_7.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000214', '1212', 3.85, 2.0, 1.85, 0.0, 9, 22, 0.958, 'AN-DONG/12A6/12000214_BUI_QUOC_HUY_1212_3.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000215', '1216', 3.85, 2.25, 1.6, 0.0, 9, 22, 0.968, 'AN-DONG/12A6/12000215_NGUYEN_TUAN_KIET_1216_3.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000216', '1213', 5.25, 1.75, 3.5, 0.0, 10, 22, 0.95, 'AN-DONG/12A6/12000216_DAO_KIM_LUONG_1213_5.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000217', '1212', 4.25, 2.0, 1.75, 0.5, 9, 22, 0.96, 'AN-DONG/12A6/12000217_LE_THI_NGOC_MAI_1212_4.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000218', '1213', 5.5, 2.25, 2.25, 1.0, 12, 22, 0.964, 'AN-DONG/12A6/12000218_DINH_QUANG_MINH_1213_5.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000219', '1215', 6.0, 1.75, 2.25, 2.0, 12, 22, 0.97, 'AN-DONG/12A6/12000219_HUYNH_TRUONG_BAO_NGOC_1215_6.00d.pdf', 'VALID', 'EMPTY_RESPONSE; MULTIPLE_MARK');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000220', '1218', 3.35, 1.0, 1.85, 0.5, 6, 22, 0.959, 'AN-DONG/12A6/12000220_NGUYEN_BAO_NGOC_1218_3.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000221', '1212', 2.5, 1.25, 1.25, 0.0, 5, 22, 0.959, 'AN-DONG/12A6/12000221_NGUYEN_LE_HUU_NHAN_1212_2.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000222', '1214', 3.95, 2.25, 1.2, 0.5, 10, 22, 0.946, 'AN-DONG/12A6/12000222_TRAN_DUC_NHAN_1214_3.95d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000223', '1211', 6.0, 2.0, 3.5, 0.5, 12, 22, 0.96, 'AN-DONG/12A6/12000223_TONG_THIEU_NGUYEN_NHAT_1211_6.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000224', '1212', 6.85, 2.5, 1.85, 2.5, 16, 22, 0.965, 'AN-DONG/12A6/12000224_LA_NGOC_QUYNH_NHI_1212_6.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000225', '1214', 4.6, 1.5, 2.1, 1.0, 9, 22, 0.964, 'AN-DONG/12A6/12000225_NGUYEN_THI_YEN_NHI_1214_4.60d.pdf', 'VALID', 'EMPTY_RESPONSE; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000226', '1217', 6.5, 2.5, 3.5, 0.5, 14, 22, 0.958, 'AN-DONG/12A6/12000226_DOAN_YEN_NHU_1217_6.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000227', '1215', 5.75, 1.5, 2.75, 1.5, 11, 22, 0.96, 'AN-DONG/12A6/12000227_NGUYEN_XUAN_PHAT_1215_5.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000228', '1215', 7.25, 2.25, 3.5, 1.5, 15, 22, 0.955, 'AN-DONG/12A6/12000228_HANG_TU_PHUONG_1215_7.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000229', '1215', 7.25, 2.5, 2.75, 2.0, 16, 22, 0.958, 'AN-DONG/12A6/12000229_NGUYEN_VAN_MINH_QUAN_1215_7.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000230', '1214', 5.1, 2.25, 1.85, 1.0, 12, 22, 0.963, 'AN-DONG/12A6/12000230_HUYNH_NGOC_NHA_QUYEN_1214_5.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000231', '1211', 8.25, 2.25, 3.0, 3.0, 17, 22, 0.954, 'AN-DONG/12A6/12000231_NGUYEN_VO_NHU_QUYNH_1211_8.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000232', '1211', 2.0, 1.0, 1.0, 0.0, 4, 22, 0.964, 'AN-DONG/12A6/12000232_HO_NGOC_SON_1211_2.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000233', '1216', 3.35, 2.0, 1.35, 0.0, 8, 22, 0.963, 'AN-DONG/12A6/12000233_NGUYEN_QUACH_GIA_THIEN_1216_3.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000234', '1216', 5.1, 2.0, 1.1, 2.0, 12, 22, 0.961, 'AN-DONG/12A6/12000234_NGUYEN_QUANG_THINH_1216_5.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000235', '1217', 4.0, 1.0, 1.5, 1.5, 8, 22, 0.961, 'AN-DONG/12A6/12000235_CHAC_GIA_THUAN_1217_4.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000236', '1215', 7.5, 2.0, 3.0, 2.5, 15, 22, 0.964, 'AN-DONG/12A6/12000236_NGUYEN_NGOC_MINH_THUY_1215_7.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000237', '1212', 3.5, 1.5, 2.0, 0.0, 7, 22, 0.957, 'AN-DONG/12A6/12000237_MAI_NGUYEN_HOAI_THUONG_1212_3.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000238', '1214', 5.0, 1.75, 2.75, 0.5, 10, 22, 0.964, 'AN-DONG/12A6/12000238_HUYNH_CHIEM_DAI_TIEN_1214_5.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000239', '1211', 7.0, 2.5, 3.0, 1.5, 15, 22, 0.955, 'AN-DONG/12A6/12000239_NGUYEN_THANH_TUYEN_1211_7.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000240', '1216', 5.0, 1.75, 2.25, 1.0, 10, 22, 0.962, 'AN-DONG/12A6/12000240_NGUYEN_THI_THANH_TUYEN_1216_5.00d.pdf', 'VALID', 'MULTIPLE_MARK; EMPTY_RESPONSE');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000241', '1217', 7.25, 2.75, 2.0, 2.5, 16, 22, 0.959, 'AN-DONG/12A6/12000241_NGUYEN_TRUONG_THANH_VINH_1217_7.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000242', '1218', 2.6, 1.0, 1.1, 0.5, 5, 22, 0.961, 'AN-DONG/12A6/12000242_HUYNH_DUONG_KHANH_VY_1218_2.60d.pdf', 'VALID', 'EMPTY_RESPONSE; SLOT_CONFLICT');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000243', '1217', 5.25, 1.5, 2.75, 1.0, 10, 22, 0.959, 'AN-DONG/12A6/12000243_LE_LAM_TUONG_VY_1217_5.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '12000245', '1214', 6.1, 2.0, 2.6, 1.5, 13, 22, 0.964, 'AN-DONG/12A6/12000245_TA_AU_LAC_VY_1214_6.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000390', '1017', 10.0, 3.0, 4.0, 3.0, 22, 22, 0.948, 'AN-DONG/10TN/10000390_TRAN_HOANG_ANH_1017_10.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000391', '1016', 7.75, 2.75, 3.0, 2.0, 17, 22, 0.956, 'AN-DONG/10TN/10000391_PHAN_GIA_BAO_1016_7.75d.pdf', 'VALID', 'MULTIPLE_MARK; EMPTY_RESPONSE');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000392', '1012', 5.75, 2.25, 2.5, 1.0, 13, 22, 0.953, 'AN-DONG/10TN/10000392_HUYNH_NGOC_PHUONG_DUNG_1012_5.75d.pdf', 'VALID', 'MULTIPLE_MARK; EMPTY_RESPONSE');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000393', '1012', 6.5, 2.5, 3.0, 1.0, 14, 22, 0.948, 'AN-DONG/10TN/10000393_TRAN_DINH_HAI_DANG_1012_6.50d.pdf', 'VALID', 'Khôi phục kết quả đã được thầy xác nhận (trước lần chấm lại 07/11 10:12) – 2026-11-07 12:57:43');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000394', '1014', 5.95, 2.75, 1.2, 2.0, 15, 22, 0.966, 'AN-DONG/10TN/10000394_DUONG_THI_HUE_HIEU_1014_5.95d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000395', '1011', 6.25, 1.5, 3.25, 1.5, 12, 22, 0.936, 'AN-DONG/10TN/10000395_DANG_LE_HOANG_1011_6.25d.pdf', 'VALID', 'EMPTY_RESPONSE; MULTIPLE_MARK');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000396', '1015', 8.0, 2.5, 2.5, 3.0, 18, 22, 0.955, 'AN-DONG/10TN/10000396_NGUYEN_THI_THU_HONG_1015_8.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000397', '1011', 8.5, 2.25, 3.25, 3.0, 18, 22, 0.961, 'AN-DONG/10TN/10000397_TRAN_NGUYEN_SINH_HUNG_1011_8.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000398', '1013', 5.25, 1.5, 2.25, 1.5, 10, 22, 0.943, 'AN-DONG/10TN/10000398_TRUONG_HUU_KHANG_1013_5.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000399', '1016', 6.1, 2.5, 2.1, 1.5, 14, 22, 0.962, 'AN-DONG/10TN/10000399_LAM_QUOC_KHANH_1016_6.10d.pdf', 'VALID', 'EMPTY_RESPONSE; MULTIPLE_MARK; FAINT_SINGLE_MARK; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000400', '1012', 8.0, 3.0, 2.5, 2.5, 18, 22, 0.963, 'AN-DONG/10TN/10000400_NGUYEN_HUU_KHANH_1012_8.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000401', '1015', 5.35, 2.25, 1.6, 1.5, 12, 22, 0.955, 'AN-DONG/10TN/10000401_TRAN_BAO_KHOA_1015_5.35d.pdf', 'VALID', 'EMPTY_RESPONSE; SLOT_CONFLICT; FAINT_SINGLE_MARK');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000402', '1015', 5.5, 1.75, 1.75, 2.0, 11, 22, 0.957, 'AN-DONG/10TN/10000402_DANG_DANG_KHOI_1015_5.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000403', '1015', 5.5, 2.0, 2.0, 1.5, 12, 22, 0.96, 'AN-DONG/10TN/10000403_LE_MINH_KHOI_1015_5.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000404', '1017', 5.6, 2.0, 2.6, 1.0, 12, 22, 0.947, 'AN-DONG/10TN/10000404_TRAN_DANG_KHOI_1017_5.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000405', '1011', 6.35, 2.75, 1.6, 2.0, 16, 22, 0.962, 'AN-DONG/10TN/10000405_VU_HONG_LAM_1011_6.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000406', '1011', 8.5, 2.5, 3.5, 2.5, 18, 22, 0.959, 'AN-DONG/10TN/10000406_NGUYEN_KIEU_MY_1011_8.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000407', '1013', 9.0, 3.0, 4.0, 2.0, 20, 22, 0.957, 'AN-DONG/10TN/10000407_CAO_HOAI_BAO_NGOC_1013_9.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000408', '1014', 8.75, 2.75, 3.5, 2.5, 19, 22, 0.957, 'AN-DONG/10TN/10000408_HA_BAO_NHI_1014_8.75d.pdf', 'VALID', 'MULTIPLE_MARK; EMPTY_RESPONSE; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000409', '1018', 9.0, 3.0, 3.0, 3.0, 20, 22, 0.966, 'AN-DONG/10TN/10000409_LE_HUYNH_PHUONG_NHI_1018_9.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000410', '1014', 8.75, 3.0, 3.25, 2.5, 20, 22, 0.958, 'AN-DONG/10TN/10000410_HY_HOC_NHU_1014_8.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000411', '1013', 6.85, 2.5, 1.85, 2.5, 16, 22, 0.955, 'AN-DONG/10TN/10000411_LY_NGOC_BAO_NHU_1013_6.85d.pdf', 'VALID', 'EMPTY_RESPONSE; MULTIPLE_MARK; SLOT_CONFLICT');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000412', '1016', 4.6, 1.75, 1.35, 1.5, 10, 22, 0.947, 'AN-DONG/10TN/10000412_NGUYEN_QUYNH_NHU_1016_4.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000413', '1018', 8.35, 2.75, 3.1, 2.5, 19, 22, 0.959, 'AN-DONG/10TN/10000413_NGUYEN_TRAN_BAO_NHU_1018_8.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000414', '1012', 7.5, 2.75, 2.75, 2.0, 17, 22, 0.961, 'AN-DONG/10TN/10000414_LE_TRAN_CONG_PHU_1012_7.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000415', '1013', 9.0, 3.0, 4.0, 2.0, 20, 22, 0.954, 'AN-DONG/10TN/10000415_THAI_GIA_PHUC_1013_9.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000416', '1012', 6.5, 2.75, 2.75, 1.0, 15, 22, 0.954, 'AN-DONG/10TN/10000416_NGUYEN_HOAI_PHUONG_1012_6.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000417', '1013', 5.85, 2.25, 1.6, 2.0, 14, 22, 0.963, 'AN-DONG/10TN/10000417_HO_KIM_QUI_1013_5.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000418', '1016', 5.5, 2.0, 3.0, 0.5, 11, 22, 0.957, 'AN-DONG/10TN/10000418_HUYNH_THI_NGOC_TAM_1016_5.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000419', '1016', 6.6, 2.5, 2.6, 1.5, 15, 22, 0.958, 'AN-DONG/10TN/10000419_NGUYEN_QUANG_THAI_1016_6.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000420', '1014', 7.0, 2.25, 2.75, 2.0, 15, 22, 0.963, 'AN-DONG/10TN/10000420_NGUYEN_GIA_THANH_1014_7.00d.pdf', 'VALID', 'EMPTY_RESPONSE; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000421', '1017', 6.0, 2.75, 2.75, 0.5, 14, 22, 0.951, 'AN-DONG/10TN/10000421_DANH_NGUYEN_KIM_THI_1017_6.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000422', '1018', 5.85, 2.75, 1.6, 1.5, 14, 22, 0.96, 'AN-DONG/10TN/10000422_TRAN_HOANG_ANH_THU_1018_5.85d.pdf', 'VALID', 'AMBIGUOUS_EXAM_CODE; MULTIPLE_MARK; EMPTY_RESPONSE; FAINT_SINGLE_MARK');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000423', '1018', 7.5, 2.25, 2.75, 2.5, 16, 22, 0.951, 'AN-DONG/10TN/10000423_NGUYEN_TRAN_NGOC_TRINH_1018_7.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000424', '1017', 6.5, 2.5, 2.5, 1.5, 15, 22, 0.964, 'AN-DONG/10TN/10000424_TRAN_NGOC_THANH_TRUC_1017_6.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000425', '1011', 4.35, 1.25, 1.1, 2.0, 9, 22, 0.958, 'AN-DONG/10TN/10000425_TRAN_MINH_TUAN_1011_4.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000426', '1014', 9.25, 2.75, 4.0, 2.5, 20, 22, 0.955, 'AN-DONG/10TN/10000426_LY_GIA_VINH_1014_9.25d.pdf', 'VALID', 'MULTIPLE_MARK; EMPTY_RESPONSE');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000427', '1015', 9.0, 2.5, 3.5, 3.0, 19, 22, 0.935, 'AN-DONG/10TN/10000427_LE_NGUYEN_THIEN_Y_1015_9.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000513', '1011', 4.0, 1.5, 2.0, 0.5, 8, 22, 0.964, 'AN-DONG/10A12/10000513_DOAN_GIA_BAO_1011_4.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000514', '1012', 3.85, 1.75, 2.1, 0.0, 8, 22, 0.959, 'AN-DONG/10A12/10000514_LE_NGUYEN_GIA_BAO_1012_3.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000515', '1018', 9.25, 2.75, 3.5, 3.0, 20, 22, 0.961, 'AN-DONG/10A12/10000515_KHUU_KIM_HOANG_DIEU_1018_9.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000516', '1015', 9.0, 3.0, 3.5, 2.5, 20, 22, 0.973, 'AN-DONG/10A12/10000516_NGUYEN_THUY_DUONG_1015_9.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000517', '1015', 4.25, 2.0, 1.75, 0.5, 9, 22, 0.945, 'AN-DONG/10A12/10000517_PHAM_THAI_MINH_DANG_1015_4.25d.pdf', 'VALID', 'EMPTY_RESPONSE; SLOT_CONFLICT');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000518', '1016', 7.75, 3.0, 2.75, 2.0, 18, 22, 0.958, 'AN-DONG/10A12/10000518_NGUYEN_THUY_HAN_1016_7.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000519', '1012', 8.25, 2.75, 3.0, 2.5, 18, 22, 0.949, 'AN-DONG/10A12/10000519_QUAN_GIA_HAN_1012_8.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000520', '1013', 8.25, 2.5, 3.25, 2.5, 18, 22, 0.955, 'AN-DONG/10A12/10000520_TIEU_LY_GIA_HAN_1013_8.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000521', '1013', 8.25, 2.75, 2.5, 3.0, 18, 22, 0.959, 'AN-DONG/10A12/10000521_NGUYEN_THANH_HIEN_1013_8.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000522', '1016', 7.75, 3.0, 3.25, 1.5, 18, 22, 0.919, 'AN-DONG/10A12/10000522_MACH_GIA_HUE_1016_7.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000523', '1012', 5.25, 2.5, 2.25, 0.5, 12, 22, 0.961, 'AN-DONG/10A12/10000523_DIEP_TU_HUNG_1012_5.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000524', '1018', 8.35, 2.75, 3.1, 2.5, 19, 22, 0.96, 'AN-DONG/10A12/10000524_TRAN_GIA_HUNG_1018_8.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000525', '1011', 7.25, 2.5, 2.25, 2.5, 16, 22, 0.962, 'AN-DONG/10A12/10000525_NGUY_THUC_KHANH_1011_7.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000526', '1018', 7.5, 2.0, 3.5, 2.0, 15, 22, 0.961, 'AN-DONG/10A12/10000526_TRUONG_DAN_AI_KHANH_1018_7.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000527', '1017', 6.0, 2.25, 2.75, 1.0, 13, 22, 0.966, 'AN-DONG/10A12/10000527_NGUYEN_QUOC_MINH_KHOI_1017_6.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000528', '1018', 9.0, 3.0, 3.0, 3.0, 20, 22, 0.956, 'AN-DONG/10A12/10000528_DO_HOANG_KIM_1018_9.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000529', '1016', 3.85, 1.75, 1.6, 0.5, 9, 22, 0.96, 'AN-DONG/10A12/10000529_THUONG_GIA_LINH_1016_3.85d.pdf', 'VALID', 'EMPTY_RESPONSE; MULTIPLE_MARK');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000530', '1017', 5.5, 2.25, 1.25, 2.0, 13, 22, 0.97, 'AN-DONG/10A12/10000530_TRAN_LE_BOI_LINH_1017_5.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000531', '1015', 8.25, 2.25, 3.5, 2.5, 17, 22, 0.956, 'AN-DONG/10A12/10000531_MACH_GIA_MAN_1015_8.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000532', '1011', 4.1, 2.0, 0.6, 1.5, 11, 22, 0.953, 'AN-DONG/10A12/10000532_PHAM_QUOC_MINH_1011_4.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000533', '1014', 4.35, 2.25, 1.1, 1.0, 11, 22, 0.961, 'AN-DONG/10A12/10000533_TRUONG_NGOC_BINH_MINH_1014_4.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000534', '1014', 8.75, 3.0, 3.25, 2.5, 20, 22, 0.956, 'AN-DONG/10A12/10000534_LE_HONG_MY_1014_8.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000535', '1014', 8.25, 2.5, 3.25, 2.5, 18, 22, 0.956, 'AN-DONG/10A12/10000535_HUYNH_GIA_NGHI_1014_8.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000536', '1013', 8.0, 2.5, 3.0, 2.5, 18, 22, 0.963, 'AN-DONG/10A12/10000536_NGUYEN_ANH_NGUYEN_1013_8.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000537', '1012', 10.0, 3.0, 4.0, 3.0, 22, 22, 0.968, 'AN-DONG/10A12/10000537_PHAM_TRONG_NGUYEN_1012_10.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000538', '1013', 6.75, 2.75, 3.0, 1.0, 15, 22, 0.967, 'AN-DONG/10A12/10000538_TANG_HIEU_NHI_1013_6.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000539', '1013', 8.5, 3.0, 3.0, 2.5, 19, 22, 0.961, 'AN-DONG/10A12/10000539_VO_THI_TUYET_NHI_1013_8.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000540', '1016', 5.25, 1.75, 1.5, 2.0, 11, 22, 0.956, 'AN-DONG/10A12/10000540_DUONG_THI_AN_NHIEN_1016_5.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000541', '1017', 4.75, 2.0, 1.25, 1.5, 11, 22, 0.954, 'AN-DONG/10A12/10000541_NGUYEN_NGOC_THAO_NHU_1017_4.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000542', '1013', 7.5, 2.25, 2.75, 2.5, 16, 22, 0.959, 'AN-DONG/10A12/10000542_DANG_VAN_NINH_1013_7.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000543', '1011', 2.6, 1.75, 0.85, 0.0, 7, 22, 0.959, 'AN-DONG/10A12/10000543_TIEU_PHONG_1011_2.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000544', '1014', 8.75, 2.25, 4.0, 2.5, 18, 22, 0.959, 'AN-DONG/10A12/10000544_CHUNG_HONG_PHUONG_1014_8.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000545', '1014', 3.25, 1.25, 2.0, 0.0, 6, 22, 0.968, 'AN-DONG/10A12/10000545_NGUYEN_BA_TAI_1014_3.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000546', '1015', 4.5, 2.0, 2.0, 0.5, 10, 22, 0.962, 'AN-DONG/10A12/10000546_PHAN_MINH_THONG_1015_4.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000547', '1012', 8.75, 2.75, 3.0, 3.0, 19, 22, 0.959, 'AN-DONG/10A12/10000547_LUU_NGUYEN_HOANG_THU_1012_8.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000548', '1017', 5.25, 1.75, 3.0, 0.5, 10, 22, 0.967, 'AN-DONG/10A12/10000548_NGUYEN_HAO_ANH_THU_1017_5.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000549', '1012', 7.0, 1.75, 2.25, 3.0, 14, 22, 0.952, 'AN-DONG/10A12/10000549_NGUYEN_VU_THANH_TRUC_1012_7.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000550', '1016', 6.75, 2.25, 2.5, 2.0, 14, 22, 0.953, 'AN-DONG/10A12/10000550_HA_TU_TU_1016_6.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000551', '1011', 4.0, 2.0, 2.0, 0.0, 9, 22, 0.96, 'AN-DONG/10A12/10000551_LE_THANH_TUAN_1011_4.00d.pdf', 'VALID', 'EMPTY_RESPONSE; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000552', '1017', 4.0, 1.75, 1.25, 1.0, 9, 22, 0.962, 'AN-DONG/10A12/10000552_SON_NGOC_MAI_UYEN_1017_4.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000553', '1011', 8.5, 2.75, 3.25, 2.5, 19, 22, 0.923, 'AN-DONG/10A12/10000553_NGUYEN_KHANH_VI_1011_8.50d.pdf', 'VALID', 'EMPTY_RESPONSE; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000554', '1014', 7.25, 2.5, 2.75, 2.0, 16, 22, 0.959, 'AN-DONG/10A12/10000554_LAM_THUY_VY_1014_7.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000555', '1018', 8.1, 3.0, 2.6, 2.5, 19, 22, 0.97, 'AN-DONG/10A12/10000555_NGUYEN_NGOC_TUONG_VY_1018_8.10d.pdf', 'VALID', 'EMPTY_RESPONSE; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000556', '1015', 7.75, 3.0, 2.75, 2.0, 18, 22, 0.963, 'AN-DONG/10A12/10000556_LE_CHUNG_NHU_Y_1015_7.75d.pdf', 'VALID', 'EMPTY_RESPONSE; FAINT_SINGLE_MARK; SLOT_CONFLICT; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000469', '1015', 4.5, 2.25, 1.75, 0.5, 11, 22, 0.957, 'AN-DONG/10A11/10000469_PHAM_THI_NGOC_ANH_1015_4.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000470', '1012', 4.6, 1.75, 1.35, 1.5, 10, 22, 0.943, 'AN-DONG/10A11/10000470_QUAN_GIA_BOI_1012_4.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000471', '1014', 3.25, 1.25, 1.5, 0.5, 6, 22, 0.959, 'AN-DONG/10A11/10000471_TRAN_KIM_CHAU_1014_3.25d.pdf', 'VALID', 'EMPTY_RESPONSE; MULTIPLE_MARK');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000472', '1011', 8.75, 3.0, 3.25, 2.5, 20, 22, 0.954, 'AN-DONG/10A11/10000472_TANG_TON_MY_DUYEN_1011_8.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000473', '1016', 7.0, 2.5, 3.0, 1.5, 15, 22, 0.954, 'AN-DONG/10A11/10000473_HOAC_KHANH_DAT_1016_7.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000474', '1012', 4.85, 1.75, 1.6, 1.5, 10, 22, 0.972, 'AN-DONG/10A11/10000474_TRAN_GIA_HAO_1012_4.85d.pdf', 'VALID', 'EMPTY_RESPONSE; SLOT_CONFLICT; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000475', '1012', 4.5, 2.0, 1.5, 1.0, 10, 22, 0.964, 'AN-DONG/10A11/10000475_DUONG_NGUYET_HIEN_1012_4.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000476', '1017', 3.35, 1.75, 1.1, 0.5, 8, 22, 0.945, 'AN-DONG/10A11/10000476_NGUYEN_TUAN_HUY_1017_3.35d.pdf', 'VALID', 'EMPTY_RESPONSE; MULTIPLE_MARK');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000477', '1017', 5.6, 2.0, 2.6, 1.0, 12, 22, 0.956, 'AN-DONG/10A11/10000477_HUYNH_TAN_KHANG_1017_5.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000478', '1015', 9.25, 3.0, 3.25, 3.0, 21, 22, 0.965, 'AN-DONG/10A11/10000478_PHAM_DUY_KHANG_1015_9.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000479', '1014', 3.75, 1.0, 1.75, 1.0, 7, 22, 0.963, 'AN-DONG/10A11/10000479_TRAN_DAO_KHANG_1014_3.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000480', '1017', 2.6, 1.0, 1.1, 0.5, 5, 22, 0.969, 'AN-DONG/10A11/10000480_TRAN_TU_KHANG_1017_2.60d.pdf', 'VALID', 'EMPTY_RESPONSE; FAINT_SINGLE_MARK; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000481', '1015', 2.85, 1.0, 1.85, 0.0, 5, 22, 0.956, 'AN-DONG/10A11/10000481_TRAN_TUAN_KHANH_1015_2.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000482', '1013', 8.75, 2.75, 3.5, 2.5, 19, 22, 0.958, 'AN-DONG/10A11/10000482_TU_VU_DUY_KHANH_1013_8.75d.pdf', 'VALID', 'MULTIPLE_MARK; EMPTY_RESPONSE; SLOT_CONFLICT');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000483', '1011', 3.5, 1.75, 1.25, 0.5, 9, 22, 0.943, 'AN-DONG/10A11/10000483_BUI_NGUYEN_DANG_KHOI_1011_3.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000484', '1018', 2.7, 1.5, 0.7, 0.5, 7, 22, 0.949, 'AN-DONG/10A11/10000484_NGUYEN_TRUNG_KIEN_1018_2.70d.pdf', 'VALID', 'EMPTY_RESPONSE; MULTIPLE_MARK');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000485', '1013', 5.0, 1.75, 1.75, 1.5, 11, 22, 0.968, 'AN-DONG/10A11/10000485_NGUYEN_BA_TUNG_LAM_1013_5.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000486', '1011', 3.5, 1.25, 1.75, 0.5, 6, 22, 0.959, 'AN-DONG/10A11/10000486_LIEU_NGOC_TU_LINH_1011_3.50d.pdf', 'VALID', 'Khôi phục kết quả đã được thầy xác nhận (trước lần chấm lại 07/11 10:12) – 2026-11-07 12:57:43');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000487', '1013', 3.6, 2.25, 0.85, 0.5, 10, 22, 0.946, 'AN-DONG/10A11/10000487_LE_TAN_LOC_1013_3.60d.pdf', 'VALID', 'EMPTY_RESPONSE; SLOT_CONFLICT; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000488', '1011', 2.75, 1.5, 1.25, 0.0, 7, 22, 0.962, 'AN-DONG/10A11/10000488_LAM_GIA_MAN_1011_2.75d.pdf', 'VALID', 'EMPTY_RESPONSE; FAINT_SINGLE_MARK; LIGHT_MARK; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000489', '1014', 4.85, 1.25, 3.1, 0.5, 9, 22, 0.961, 'AN-DONG/10A11/10000489_NGUYEN_HOAI_BAO_NAM_1014_4.85d.pdf', 'VALID', 'EMPTY_RESPONSE; SLOT_CONFLICT');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000490', '1014', 7.75, 2.5, 3.25, 2.0, 17, 22, 0.966, 'AN-DONG/10A11/10000490_TA_NGOC_BAO_NGHI_1014_7.75d.pdf', 'VALID', 'EMPTY_RESPONSE; SLOT_CONFLICT; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000491', '1013', 3.75, 1.0, 2.25, 0.5, 7, 22, 0.959, 'AN-DONG/10A11/10000491_TANG_TUYET_NGHI_1013_3.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000492', '1011', 8.5, 3.0, 3.5, 2.0, 19, 22, 0.955, 'AN-DONG/10A11/10000492_PHAM_THI_THANH_NHAN_1011_8.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000493', '1018', 5.5, 2.25, 2.25, 1.0, 12, 22, 0.956, 'AN-DONG/10A11/10000493_LA_HAN_NHI_1018_5.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000494', '1013', 7.0, 2.25, 2.75, 2.0, 15, 22, 0.962, 'AN-DONG/10A11/10000494_TU_HAO_NHIEN_1013_7.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000495', '1018', 6.0, 1.5, 2.5, 2.0, 12, 22, 0.944, 'AN-DONG/10A11/10000495_NGUYEN_NGOC_NHU_1018_6.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000496', '1016', 5.0, 2.0, 2.5, 0.5, 10, 22, 0.954, 'AN-DONG/10A11/10000496_NGUYEN_PHAM_TAN_PHUC_1016_5.00d.pdf', 'VALID', 'EMPTY_RESPONSE; MULTIPLE_MARK');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000497', '1016', 6.0, 2.0, 2.5, 1.5, 12, 22, 0.957, 'AN-DONG/10A11/10000497_LE_HOANG_UYEN_PHUONG_1016_6.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000498', '1012', 5.35, 2.75, 1.6, 1.0, 14, 22, 0.948, 'AN-DONG/10A11/10000498_NGO_TRAN_PHUONG_QUYNH_1012_5.35d.pdf', 'VALID', 'EMPTY_RESPONSE; MULTIPLE_MARK');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000499', '1018', 5.25, 2.0, 1.75, 1.5, 11, 22, 0.963, 'AN-DONG/10A11/10000499_NGUYEN_NHU_QUYNH_1018_5.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000500', '1011', 3.1, 2.0, 1.1, 0.0, 8, 22, 0.957, 'AN-DONG/10A11/10000500_NGUYEN_TUAN_TAI_1011_3.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000501', '1016', 6.5, 2.75, 1.75, 2.0, 15, 22, 0.958, 'AN-DONG/10A11/10000501_NGUYEN_THI_THANH_THAO_1016_6.50d.pdf', 'VALID', 'EMPTY_RESPONSE; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000502', '1016', 2.5, 1.25, 1.25, 0.0, 5, 22, 0.962, 'AN-DONG/10A11/10000502_NGUYEN_HAO_THIEN_1016_2.50d.pdf', 'VALID', 'MULTIPLE_MARK; EMPTY_RESPONSE');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000503', '1017', 5.0, 2.75, 1.25, 1.0, 13, 22, 0.951, 'AN-DONG/10A11/10000503_NGUYEN_DONG_THUY_1017_5.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000504', '1014', 3.7, 2.0, 1.7, 0.0, 9, 22, 0.963, 'AN-DONG/10A11/10000504_NGUYEN_THI_HOAI_THU_1014_3.70d.pdf', 'VALID', 'Giáo viên duyệt tay: phần 2 câu 4 ý B tô 2 ô loại, phần 3 câu 6 không tô câu nào loại -> 3.70đ');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000505', '1014', 4.25, 1.5, 2.75, 0.0, 8, 22, 0.953, 'AN-DONG/10A11/10000505_NGUYEN_XUAN_TRANG_1014_4.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000506', '1013', 6.25, 2.25, 3.0, 1.0, 13, 22, 0.942, 'AN-DONG/10A11/10000506_LY_TO_HUYEN_TRAN_1013_6.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000507', '1017', 6.5, 2.5, 2.5, 1.5, 15, 22, 0.95, 'AN-DONG/10A11/10000507_NGO_QUANG_TRIEU_1017_6.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000508', '1015', 3.85, 1.75, 1.1, 1.0, 9, 22, 0.949, 'AN-DONG/10A11/10000508_HUA_KHAI_TRINH_1015_3.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000509', '1015', 3.75, 1.0, 1.75, 1.0, 6, 22, 0.959, 'AN-DONG/10A11/10000509_TRAN_LE_QUANG_TRUONG_1015_3.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000510', '1012', 2.1, 0.75, 1.35, 0.0, 3, 22, 0.959, 'AN-DONG/10A11/10000510_HUYNH_THANH_TUYEN_1012_2.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000511', '1012', 7.25, 2.25, 3.5, 1.5, 15, 22, 0.953, 'AN-DONG/10A11/10000511_NGUYEN_NGUYEN_TUYET_VY_1012_7.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000512', '1018', 9.25, 3.0, 3.25, 3.0, 21, 22, 0.93, 'AN-DONG/10A11/10000512_NGUYEN_DANG_HUONG_XUAN_1018_9.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000428', '1011', 2.25, 1.0, 1.25, 0.0, 4, 22, 0.953, 'AN-DONG/10A10/10000428_LUONG_NGOC_ANH_1011_2.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000429', '1011', 1.85, 1.0, 0.85, 0.0, 4, 22, 0.945, 'AN-DONG/10A10/10000429_PHAM_CAO_CUONG_1011_1.85d.pdf', 'VALID', 'FAINT_SINGLE_MARK; EMPTY_RESPONSE; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000430', '1018', 4.25, 0.75, 3.5, 0.0, 6, 22, 0.961, 'AN-DONG/10A10/10000430_DUONG_DAI_DUNG_1018_4.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000431', '1014', 3.2, 1.75, 1.45, 0.0, 8, 22, 0.956, 'AN-DONG/10A10/10000431_NGUYEN_CHI_DUNG_1014_3.20d.pdf', 'VALID', 'MULTIPLE_MARK; EMPTY_RESPONSE');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000432', '1013', 2.1, 1.0, 1.1, 0.0, 4, 22, 0.956, 'AN-DONG/10A10/10000432_VU_NGOC_THUY_HANG_1013_2.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000433', '1015', 6.5, 2.0, 2.0, 2.5, 14, 22, 0.963, 'AN-DONG/10A10/10000433_DO_HOANG_GIA_HAN_1015_6.50d.pdf', 'VALID', 'EMPTY_RESPONSE; MULTIPLE_MARK');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000434', '1013', 2.85, 1.0, 1.85, 0.0, 5, 22, 0.958, 'AN-DONG/10A10/10000434_TRUONG_TRONG_HIEU_1013_2.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000435', '1018', 2.1, 0.5, 1.6, 0.0, 2, 22, 0.961, 'AN-DONG/10A10/10000435_MACH_TIEN_HUNG_1018_2.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000436', '1012', 2.75, 0.75, 2.0, 0.0, 4, 22, 0.964, 'AN-DONG/10A10/10000436_TRAN_GIA_HUNG_1012_2.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000437', '1017', 1.85, 1.0, 0.85, 0.0, 4, 22, 0.964, 'AN-DONG/10A10/10000437_HA_ANH_KHAI_1017_1.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000438', '1014', 1.85, 1.0, 0.85, 0.0, 4, 22, 0.962, 'AN-DONG/10A10/10000438_DOAN_HUY_KHANG_1014_1.85d.pdf', 'VALID', 'EMPTY_RESPONSE; SLOT_CONFLICT; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000439', '1016', 4.35, 2.25, 1.1, 1.0, 11, 22, 0.96, 'AN-DONG/10A10/10000439_LE_NAM_KHIEM_1016_4.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000440', '1018', 3.85, 1.5, 1.85, 0.5, 8, 22, 0.95, 'AN-DONG/10A10/10000440_PHU_MY_LINH_1018_3.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000441', '1014', 3.75, 1.25, 2.5, 0.0, 7, 22, 0.966, 'AN-DONG/10A10/10000441_NGUYEN_HA_MY_1014_3.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000442', '1017', 4.1, 2.0, 1.6, 0.5, 10, 22, 0.964, 'AN-DONG/10A10/10000442_LE_HOANG_MY_1017_4.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000443', '1016', 8.25, 2.25, 3.0, 3.0, 18, 22, 0.953, 'AN-DONG/10A10/10000443_MAI_NHAT_KHANH_NHI_1016_8.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000444', '1011', 3.0, 1.0, 1.5, 0.5, 5, 22, 0.966, 'AN-DONG/10A10/10000444_TRINH_DUONG_YEN_NHI_1011_3.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000445', '1018', 3.5, 0.75, 2.25, 0.5, 5, 22, 0.955, 'AN-DONG/10A10/10000445_TRINH_HUYNH_HUU_QUANG_1018_3.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000446', '1012', 5.0, 2.5, 1.5, 1.0, 12, 22, 0.958, 'AN-DONG/10A10/10000446_TRAN_NGOC_QUE_1012_5.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000447', '1016', 2.2, 1.25, 0.95, 0.0, 5, 22, 0.961, 'AN-DONG/10A10/10000447_PHAM_XUAN_QUYNH_1016_2.20d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000448', '1014', 4.6, 2.0, 2.6, 0.0, 10, 22, 0.967, 'AN-DONG/10A10/10000448_NGUYEN_VAN_SANG_1014_4.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000449', '1017', 3.6, 2.25, 0.85, 0.5, 10, 22, 0.948, 'AN-DONG/10A10/10000449_LAM_TUAN_THANH_1017_3.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000450', '1012', 2.6, 1.0, 1.6, 0.0, 5, 22, 0.951, 'AN-DONG/10A10/10000450_TRINH_KY_THANH_1012_2.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000451', '1015', 2.0, 0.75, 1.25, 0.0, 3, 22, 0.958, 'AN-DONG/10A10/10000451_LUU_THANH_THAO_1015_2.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000452', '1018', 5.25, 2.0, 2.75, 0.5, 11, 22, 0.95, 'AN-DONG/10A10/10000452_HANG_NGOC_MINH_THU_1018_5.25d.pdf', 'VALID', 'EMPTY_RESPONSE; SLOT_CONFLICT');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000453', '1014', 2.35, 1.25, 1.1, 0.0, 5, 22, 0.961, 'AN-DONG/10A10/10000453_TRINH_NGOC_ANH_THU_1014_2.35d.pdf', 'VALID', 'AMBIGUOUS_STUDENT_ID; MULTIPLE_MARK; EMPTY_RESPONSE');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000454', '1016', 3.25, 0.75, 2.0, 0.5, 4, 22, 0.951, 'AN-DONG/10A10/10000454_PHAM_NGOC_THUONG_1016_3.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000455', '1015', 3.25, 1.0, 1.75, 0.5, 5, 22, 0.958, 'AN-DONG/10A10/10000455_LY_TRONG_TIN_1015_3.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000456', '1013', 6.1, 1.75, 2.35, 2.0, 13, 22, 0.954, 'AN-DONG/10A10/10000456_HO_NGOC_HOAI_TRANG_1013_6.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000457', '1011', 1.75, 0.5, 1.25, 0.0, 2, 22, 0.953, 'AN-DONG/10A10/10000457_NGUYEN_THI_THUY_TRANG_1011_1.75d.pdf', 'VALID', 'EMPTY_RESPONSE; MULTIPLE_MARK; SLOT_CONFLICT');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000458', '1016', 9.5, 2.5, 4.0, 3.0, 20, 22, 0.959, 'AN-DONG/10A10/10000458_GIANG_MY_TRAN_1016_9.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000459', '1011', 5.5, 2.5, 2.0, 1.0, 13, 22, 0.963, 'AN-DONG/10A10/10000459_NGUYEN_TRAN_THANH_TRUC_1011_5.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000460', '1013', 3.5, 0.75, 2.75, 0.0, 5, 22, 0.959, 'AN-DONG/10A10/10000460_TRAN_PHAN_NGOC_THANH_TRUC_1013_3.50d.pdf', 'VALID', 'AMBIGUOUS_STUDENT_ID; LIGHT_MARK; EMPTY_RESPONSE');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000461', '1011', 4.5, 2.0, 2.0, 0.5, 10, 22, 0.963, 'AN-DONG/10A10/10000461_TRAN_NGUYEN_TIEN_TRUNG_1011_4.50d.pdf', 'VALID', 'EMPTY_RESPONSE; FAINT_SINGLE_MARK; NON_CONTIGUOUS; ERASURE');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000462', '1012', 7.6, 2.5, 2.6, 2.5, 17, 22, 0.965, 'AN-DONG/10A10/10000462_CAO_NGOC_ANH_TUYET_1012_7.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000463', '1015', 3.5, 1.5, 2.0, 0.0, 7, 22, 0.957, 'AN-DONG/10A10/10000463_HUYNH_LAN_VI_1015_3.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000464', '1013', 5.35, 2.0, 2.35, 1.0, 12, 22, 0.956, 'AN-DONG/10A10/10000464_LE_KHANH_VY_1013_5.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000465', '1017', 2.1, 0.75, 1.35, 0.0, 3, 22, 0.953, 'AN-DONG/10A10/10000465_NGUYEN_PHUONG_BAO_VY_1017_2.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000466', '1012', 5.85, 2.0, 2.35, 1.5, 13, 22, 0.962, 'AN-DONG/10A10/10000466_NGUYEN_THI_NGOC_VY_1012_5.85d.pdf', 'VALID', 'EMPTY_RESPONSE; MULTIPLE_MARK');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000467', '1017', 3.5, 1.5, 2.0, 0.0, 6, 22, 0.95, 'AN-DONG/10A10/10000467_TRUONG_NONG_TUYET_VY_1017_3.50d.pdf', 'VALID', 'Khôi phục kết quả đã được thầy xác nhận (trước lần chấm lại 07/11 10:12) – 2026-11-07 12:57:43');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000468', '1015', 5.5, 2.0, 2.0, 1.5, 12, 22, 0.949, 'AN-DONG/10A10/10000468_NGUYEN_TRAN_KIM_XUAN_1015_5.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000346', '1012', 9.25, 2.75, 3.5, 3.0, 20, 22, 0.959, 'AN-DONG/10A9/10000346_NGUYEN_VI_VI_AN_1012_9.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000347', '1018', 8.5, 2.5, 4.0, 2.0, 18, 22, 0.96, 'AN-DONG/10A9/10000347_NGUYEN_HOANG_PHUONG_ANH_1018_8.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000348', '1017', 7.0, 2.75, 2.75, 1.5, 16, 22, 0.958, 'AN-DONG/10A9/10000348_TRAN_THI_QUYNH_ANH_1017_7.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000349', '1013', 4.35, 1.25, 1.1, 2.0, 9, 22, 0.956, 'AN-DONG/10A9/10000349_VU_QUYNH_ANH_1013_4.35d.pdf', 'VALID', 'EMPTY_RESPONSE; FAINT_SINGLE_MARK; MULTIPLE_MARK');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000350', '1018', 6.75, 1.5, 2.25, 3.0, 13, 22, 0.956, 'AN-DONG/10A9/10000350_DOAN_GIA_BAO_1018_6.75d.pdf', 'VALID', 'EMPTY_RESPONSE; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000351', '1016', 8.75, 2.5, 3.25, 3.0, 19, 22, 0.958, 'AN-DONG/10A9/10000351_TA_QUOC_DUY_1016_8.75d.pdf', 'VALID', 'EMPTY_RESPONSE; SLOT_CONFLICT; FAINT_SINGLE_MARK');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000352', '1011', 6.25, 2.0, 2.75, 1.5, 13, 22, 0.956, 'AN-DONG/10A9/10000352_NGUYEN_THANH_DAT_1011_6.25d.pdf', 'VALID', 'MULTIPLE_MARK; EMPTY_RESPONSE; FAINT_SINGLE_MARK; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000353', '1011', 9.25, 3.0, 3.25, 3.0, 21, 22, 0.961, 'AN-DONG/10A9/10000353_TRAN_TIEN_DAT_1011_9.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000354', '1015', 8.0, 2.5, 3.5, 2.0, 17, 22, 0.962, 'AN-DONG/10A9/10000354_TANG_THANH_HIEN_1015_8.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000355', '1015', 8.25, 3.0, 2.25, 3.0, 19, 22, 0.959, 'AN-DONG/10A9/10000355_PHAM_HOANG_HIEU_1015_8.25d.pdf', 'VALID', 'EMPTY_RESPONSE; MULTIPLE_MARK');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000356', '1018', 9.0, 3.0, 3.0, 3.0, 20, 22, 0.956, 'AN-DONG/10A9/10000356_NHAN_THUY_XUAN_HONG_1018_9.00d.pdf', 'VALID', 'MULTIPLE_MARK; EMPTY_RESPONSE');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000357', '1017', 4.0, 1.75, 1.25, 1.0, 9, 22, 0.962, 'AN-DONG/10A9/10000357_NGUYEN_GIA_HUY_1017_4.00d.pdf', 'VALID', 'AMBIGUOUS_STUDENT_ID; LIGHT_MARK; MULTIPLE_MARK; EMPTY_RESPONSE');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000358', '1018', 9.0, 3.0, 3.0, 3.0, 20, 22, 0.96, 'AN-DONG/10A9/10000358_NGUYEN_HOANG_KHANG_1018_9.00d.pdf', 'VALID', 'MULTIPLE_MARK; EMPTY_RESPONSE');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000359', '1014', 9.0, 3.0, 4.0, 2.0, 20, 22, 0.946, 'AN-DONG/10A9/10000359_TRAN_PHUC_KHANG_1014_9.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000360', '1013', 8.25, 2.75, 2.5, 3.0, 18, 22, 0.969, 'AN-DONG/10A9/10000360_NGO_PHAM_THIEN_KIM_1013_8.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000361', '1014', 9.25, 2.75, 3.5, 3.0, 20, 22, 0.964, 'AN-DONG/10A9/10000361_NGUYEN_THIEN_KIM_1014_9.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000362', '1013', 6.5, 2.0, 3.5, 1.0, 13, 22, 0.952, 'AN-DONG/10A9/10000362_TRUONG_NGOC_TRUC_LINH_1013_6.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000363', '1017', 9.75, 2.75, 4.0, 3.0, 21, 22, 0.958, 'AN-DONG/10A9/10000363_HUYNH_TAN_LOC_1017_9.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000364', '1016', 5.5, 2.0, 2.5, 1.0, 11, 22, 0.952, 'AN-DONG/10A9/10000364_CHAU_HUE_MAN_1016_5.50d.pdf', 'VALID', 'EMPTY_RESPONSE; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000365', '1015', 9.0, 2.5, 3.5, 3.0, 19, 22, 0.953, 'AN-DONG/10A9/10000365_DIEP_QUOC_MINH_1015_9.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000366', '1017', 9.5, 3.0, 4.0, 2.5, 21, 22, 0.958, 'AN-DONG/10A9/10000366_BUI_THI_KIM_NGAN_1017_9.50d.pdf', 'VALID', 'EMPTY_RESPONSE; MULTIPLE_MARK; SLOT_CONFLICT');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000367', '1016', 6.75, 2.0, 2.75, 2.0, 14, 22, 0.951, 'AN-DONG/10A9/10000367_NGO_BAO_NGAN_1016_6.75d.pdf', 'VALID', 'EMPTY_RESPONSE; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000368', '1014', 8.0, 1.75, 3.25, 3.0, 16, 22, 0.959, 'AN-DONG/10A9/10000368_CHUNG_MY_NGOC_1014_8.00d.pdf', 'VALID', 'EMPTY_RESPONSE; MULTIPLE_MARK; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000370', '1011', 6.25, 3.0, 2.75, 0.5, 15, 22, 0.959, 'AN-DONG/10A9/10000370_TRAN_DANG_NGUYEN_1011_6.25d.pdf', 'VALID', 'AMBIGUOUS_STUDENT_ID; MULTIPLE_MARK; AMBIGUOUS_EXAM_CODE; EMPTY_RESPONSE; ERASURE; FAINT_SINGLE_MARK; SLOT_CONFLICT');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000371', '1012', 9.25, 2.75, 3.5, 3.0, 20, 22, 0.96, 'AN-DONG/10A9/10000371_LE_THANH_NHAN_1012_9.25d.pdf', 'VALID', 'EMPTY_RESPONSE; MULTIPLE_MARK; ERASURE');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000372', '1011', 8.75, 2.75, 3.0, 3.0, 19, 22, 0.958, 'AN-DONG/10A9/10000372_HOANG_YEN_NHI_1011_8.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000373', '1015', 8.0, 2.5, 3.5, 2.0, 17, 22, 0.958, 'AN-DONG/10A9/10000373_LE_NGUYEN_NGOC_NHI_1015_8.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000374', '1012', 4.5, 2.0, 1.5, 1.0, 10, 22, 0.943, 'AN-DONG/10A9/10000374_NGUYEN_MANH_PHAT_1012_4.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000375', '1011', 7.1, 2.75, 1.85, 2.5, 17, 22, 0.958, 'AN-DONG/10A9/10000375_TRAN_TRI_PHU_1011_7.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000376', '1015', 7.75, 3.0, 2.75, 2.0, 18, 22, 0.958, 'AN-DONG/10A9/10000376_LE_NGUYEN_NHU_QUYNH_1015_7.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000377', '1012', 9.25, 2.75, 3.5, 3.0, 20, 22, 0.953, 'AN-DONG/10A9/10000377_DO_MINH_TAM_1012_9.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000378', '1017', 9.0, 3.0, 3.0, 3.0, 20, 22, 0.958, 'AN-DONG/10A9/10000378_HUYNH_PHUONG_THUY_1017_9.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000379', '1014', 8.25, 2.25, 3.5, 2.5, 17, 22, 0.964, 'AN-DONG/10A9/10000379_HUYNH_NGOC_MINH_THU_1014_8.25d.pdf', 'VALID', 'EMPTY_RESPONSE; SLOT_CONFLICT');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000380', '1014', 9.75, 2.75, 4.0, 3.0, 21, 22, 0.962, 'AN-DONG/10A9/10000380_NGUYEN_HOANG_THY_1014_9.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000381', '1012', 8.5, 2.75, 2.75, 3.0, 19, 22, 0.96, 'AN-DONG/10A9/10000381_CAO_NGOC_TIEN_1012_8.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000382', '1011', 7.25, 2.5, 2.25, 2.5, 16, 22, 0.962, 'AN-DONG/10A9/10000382_HUYNH_THUY_TIEN_1011_7.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000383', '1013', 7.25, 3.0, 3.25, 1.0, 17, 22, 0.955, 'AN-DONG/10A9/10000383_NGUYEN_THANH_TIEN_1013_7.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000384', '1018', 7.75, 2.5, 2.75, 2.5, 17, 22, 0.954, 'AN-DONG/10A9/10000384_VAN_DANG_NGOC_TRAN_1018_7.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000385', '1016', 8.75, 3.0, 3.25, 2.5, 20, 22, 0.945, 'AN-DONG/10A9/10000385_TRAN_NGOC_THANH_TRUC_1016_8.75d.pdf', 'VALID', 'EMPTY_RESPONSE; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000386', '1014', 4.85, 1.5, 2.35, 1.0, 10, 22, 0.957, 'AN-DONG/10A9/10000386_TRAN_GIA_TUE_1014_4.85d.pdf', 'VALID', 'EMPTY_RESPONSE; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000387', '1013', 6.75, 2.5, 2.75, 1.5, 15, 22, 0.961, 'AN-DONG/10A9/10000387_LAM_DIEM_UYEN_1013_6.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000388', '1016', 7.1, 1.0, 3.1, 3.0, 13, 22, 0.93, 'AN-DONG/10A9/10000388_PHU_DON_VAN_1016_7.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000389', '1013', 9.25, 2.75, 4.0, 2.5, 20, 22, 0.964, 'AN-DONG/10A9/10000389_NGUYEN_PHI_VAN_1013_9.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000303', '1016', 4.5, 2.25, 1.75, 0.5, 11, 22, 0.967, 'AN-DONG/10A8/10000303_TRUONG_KHANH_BANG_1016_4.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000304', '1013', 7.25, 2.5, 2.75, 2.0, 16, 22, 0.959, 'AN-DONG/10A8/10000304_BUI_NGOC_KHANH_CHUYEN_1013_7.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000305', '1012', 6.75, 2.25, 3.0, 1.5, 14, 22, 0.958, 'AN-DONG/10A8/10000305_PHUNG_BOI_DINH_1012_6.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000306', '1018', 6.25, 2.5, 2.75, 1.0, 14, 22, 0.946, 'AN-DONG/10A8/10000306_TRAN_VI_DAT_1018_6.25d.pdf', 'VALID', 'EMPTY_RESPONSE; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000307', '1018', 7.0, 2.5, 2.5, 2.0, 15, 22, 0.954, 'AN-DONG/10A8/10000307_VO_NGUYEN_DANG_1018_7.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000308', '1015', 5.1, 2.75, 1.35, 1.0, 13, 22, 0.956, 'AN-DONG/10A8/10000308_TRUONG_NGOC_HAN_1015_5.10d.pdf', 'VALID', 'MULTIPLE_MARK; EMPTY_RESPONSE; SLOT_CONFLICT');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000309', '1017', 5.1, 2.25, 1.85, 1.0, 12, 22, 0.951, 'AN-DONG/10A8/10000309_DO_QUYNH_HOA_1017_5.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000310', '1015', 8.5, 3.0, 3.0, 2.5, 19, 22, 0.962, 'AN-DONG/10A8/10000310_LAM_DO_NHAT_HUY_1015_8.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000311', '1011', 5.75, 1.75, 3.0, 1.0, 11, 22, 0.962, 'AN-DONG/10A8/10000311_TRAN_MINH_HUY_1011_5.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000312', '1013', 3.6, 2.0, 1.1, 0.5, 9, 22, 0.949, 'AN-DONG/10A8/10000312_TRAN_QUOC_HUY_1013_3.60d.pdf', 'VALID', 'Khôi phục kết quả đã được thầy xác nhận (trước lần chấm lại 07/11 10:12) – 2026-11-07 12:57:43');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000313', '1018', 5.25, 2.5, 1.75, 1.0, 12, 22, 0.955, 'AN-DONG/10A8/10000313_NGUYEN_HOANG_BAO_HUNG_1018_5.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000314', '1017', 9.25, 3.0, 3.25, 3.0, 21, 22, 0.96, 'AN-DONG/10A8/10000314_PHAM_NGUYEN_BAO_KHANH_1017_9.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000315', '1017', 8.25, 2.75, 3.5, 2.0, 18, 22, 0.96, 'AN-DONG/10A8/10000315_DAO_ANH_KHOI_1017_8.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000316', '1013', 2.25, 1.0, 1.25, 0.0, 4, 22, 0.942, 'AN-DONG/10A8/10000316_LUU_PHAM_CONG_NGUYEN_KHOI_1013_2.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000317', '1014', 7.25, 2.25, 3.5, 1.5, 15, 22, 0.954, 'AN-DONG/10A8/10000317_TRAN_NGO_MINH_KHOI_1014_7.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000318', '1012', 7.75, 2.75, 2.5, 2.5, 17, 22, 0.964, 'AN-DONG/10A8/10000318_TRAN_NGUYEN_QUYNH_LAM_1012_7.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000319', '1011', 7.25, 2.75, 2.0, 2.5, 17, 22, 0.959, 'AN-DONG/10A8/10000319_NGUYEN_HOANG_KHANH_LINH_1011_7.25d.pdf', 'VALID', 'AMBIGUOUS_STUDENT_ID; LIGHT_MARK; EMPTY_RESPONSE; ERASURE; FAINT_SINGLE_MARK');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000320', '1014', 3.75, 1.5, 1.75, 0.5, 8, 22, 0.96, 'AN-DONG/10A8/10000320_TRUONG_HONG_LOAN_1014_3.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000321', '1011', 6.0, 2.25, 2.75, 1.0, 13, 22, 0.963, 'AN-DONG/10A8/10000321_NGUYEN_CAO_KIM_MAI_1011_6.00d.pdf', 'VALID', 'EMPTY_RESPONSE; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000322', '1014', 3.6, 1.5, 2.1, 0.0, 7, 22, 0.965, 'AN-DONG/10A8/10000322_TU_NGUYEN_HOANG_MINH_1014_3.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000323', '1012', 4.2, 2.0, 0.7, 1.5, 11, 22, 0.958, 'AN-DONG/10A8/10000323_TRAN_KHOI_MY_1012_4.20d.pdf', 'VALID', 'MULTIPLE_MARK; EMPTY_RESPONSE');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000324', '1012', 2.35, 1.25, 1.1, 0.0, 5, 22, 0.959, 'AN-DONG/10A8/10000324_BUI_DIEP_TO_NGAN_1012_2.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000325', '1013', 6.6, 3.0, 2.6, 1.0, 16, 22, 0.961, 'AN-DONG/10A8/10000325_VU_THI_TUYET_NHUNG_1013_6.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000326', '1015', 8.5, 3.0, 3.0, 2.5, 19, 22, 0.949, 'AN-DONG/10A8/10000326_NGUYEN_PHAM_HONG_PHAN_1015_8.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000327', '1015', 5.25, 2.25, 2.0, 1.0, 12, 22, 0.96, 'AN-DONG/10A8/10000327_TANG_TOAN_PHONG_1015_5.25d.pdf', 'VALID', 'EMPTY_RESPONSE; SLOT_CONFLICT; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000328', '1016', 6.75, 2.5, 2.75, 1.5, 15, 22, 0.96, 'AN-DONG/10A8/10000328_NGUYEN_HOANG_QUAN_1016_6.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000329', '1018', 4.5, 1.25, 2.25, 1.0, 8, 22, 0.954, 'AN-DONG/10A8/10000329_NGUYEN_HOANG_KHANH_QUYEN_1018_4.50d.pdf', 'VALID', 'EMPTY_RESPONSE; SLOT_CONFLICT; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000330', '1016', 4.25, 1.75, 1.5, 1.0, 9, 22, 0.964, 'AN-DONG/10A8/10000330_HUYNH_QUYNH_TAM_1016_4.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000331', '1012', 5.75, 2.5, 2.75, 0.5, 13, 22, 0.955, 'AN-DONG/10A8/10000331_KIM_GIA_THINH_1012_5.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000332', '1016', 8.35, 2.75, 2.6, 3.0, 19, 22, 0.961, 'AN-DONG/10A8/10000332_NGUYEN_VU_THINH_1016_8.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000333', '1011', 7.0, 2.75, 2.25, 2.0, 16, 22, 0.957, 'AN-DONG/10A8/10000333_VU_PHUONG_THUY_1011_7.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000334', '1013', 1.6, 0.75, 0.85, 0.0, 3, 22, 0.947, 'AN-DONG/10A8/10000334_DAM_PHAM_ANH_THU_1013_1.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000335', '1011', 6.75, 2.0, 2.75, 2.0, 14, 22, 0.96, 'AN-DONG/10A8/10000335_DO_NGUYEN_AN_THY_1011_6.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000336', '1018', 4.1, 2.25, 1.35, 0.5, 10, 22, 0.955, 'AN-DONG/10A8/10000336_NGUYEN_NGOC_UYEN_THY_1018_4.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000337', '1013', 8.0, 3.0, 3.0, 2.0, 18, 22, 0.961, 'AN-DONG/10A8/10000337_NGUYEN_NGOC_UYEN_THY_1013_8.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000338', '1012', 8.25, 3.0, 2.25, 3.0, 19, 22, 0.956, 'AN-DONG/10A8/10000338_TRAN_NGOC_THY_1012_8.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000339', '1011', 6.6, 2.75, 1.85, 2.0, 16, 22, 0.949, 'AN-DONG/10A8/10000339_NGO_KIM_TIEN_1011_6.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000340', '1017', 2.6, 1.25, 1.35, 0.0, 5, 22, 0.959, 'AN-DONG/10A8/10000340_NGUYEN_TRAN_BAO_TRAM_1017_2.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000341', '1016', 7.5, 3.0, 3.5, 1.0, 17, 22, 0.962, 'AN-DONG/10A8/10000341_DIEN_THI_THANH_TRUC_1016_7.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000342', '1014', 8.0, 2.5, 3.0, 2.5, 18, 22, 0.96, 'AN-DONG/10A8/10000342_TRUONG_HOAI_THANH_TRUC_1014_8.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000343', '1017', 5.45, 2.0, 1.45, 2.0, 13, 22, 0.959, 'AN-DONG/10A8/10000343_HOANG_ANH_TUAN_1017_5.45d.pdf', 'VALID', 'EMPTY_RESPONSE; FAINT_SINGLE_MARK; NON_CONTIGUOUS; SLOT_CONFLICT');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000344', '1015', 9.0, 2.5, 3.5, 3.0, 19, 22, 0.949, 'AN-DONG/10A8/10000344_TRAN_NGOC_MINH_TUYEN_1015_9.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000345', '1014', 8.0, 3.0, 3.5, 1.5, 18, 22, 0.82, 'AN-DONG/10A8/10000345_NGUYEN_THIENG_Y_1014_8.00d.pdf', 'VALID', 'EMPTY_RESPONSE; SLOT_CONFLICT');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000260', '1016', 2.85, 1.75, 1.1, 0.0, 7, 22, 0.967, 'AN-DONG/10A7/10000260_LAM_GIA_AN_1016_2.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000261', '1018', 2.35, 1.0, 1.35, 0.0, 4, 22, 0.964, 'AN-DONG/10A7/10000261_VANG_PHAN_HUU_AN_1018_2.35d.pdf', 'VALID', 'EMPTY_RESPONSE; MULTIPLE_MARK');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000262', '1018', 3.6, 1.75, 1.35, 0.5, 8, 22, 0.963, 'AN-DONG/10A7/10000262_PHAM_QUACH_BAO_CHAU_1018_3.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000263', '1011', 4.0, 2.25, 1.75, 0.0, 9, 22, 0.944, 'AN-DONG/10A7/10000263_NGO_QUOC_CUONG_1011_4.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000264', '1012', 2.45, 1.5, 0.95, 0.0, 6, 22, 0.953, 'AN-DONG/10A7/10000264_HUYNH_NGOC_DUYEN_1012_2.45d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000265', '1014', 9.5, 2.5, 4.0, 3.0, 20, 22, 0.915, 'AN-DONG/10A7/10000265_NGUYEN_NGOC_BAO_HAN_1014_9.50d.pdf', 'VALID', 'EMPTY_RESPONSE; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000266', '1014', 9.25, 2.75, 3.5, 3.0, 20, 22, 0.946, 'AN-DONG/10A7/10000266_NGUYEN_GIA_HUNG_1014_9.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000267', '1017', 4.6, 2.0, 2.1, 0.5, 10, 22, 0.95, 'AN-DONG/10A7/10000267_NGUYEN_DOAN_MINH_KHANG_1017_4.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000268', '1013', 7.6, 2.5, 2.6, 2.5, 17, 22, 0.954, 'AN-DONG/10A7/10000268_NGUYEN_TRONG_KHANG_1013_7.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000269', '1012', 3.1, 1.5, 1.6, 0.0, 7, 22, 0.948, 'AN-DONG/10A7/10000269_TRUONG_VINH_KHANG_1012_3.10d.pdf', 'VALID', 'EMPTY_RESPONSE; FAINT_SINGLE_MARK; LIGHT_MARK; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000270', '1012', 8.0, 2.75, 2.75, 2.5, 18, 22, 0.948, 'AN-DONG/10A7/10000270_HUYNH_MINH_KHOA_1012_8.00d.pdf', 'VALID', 'MULTIPLE_MARK; EMPTY_RESPONSE');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000271', '1014', 2.1, 0.75, 1.35, 0.0, 3, 22, 0.953, 'AN-DONG/10A7/10000271_NGUYEN_TUONG_LAM_1014_2.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000272', '1011', 3.6, 1.75, 1.35, 0.5, 8, 22, 0.949, 'AN-DONG/10A7/10000272_TRAN_QUOC_LONG_1011_3.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000273', '1015', 4.2, 2.0, 1.2, 1.0, 11, 22, 0.954, 'AN-DONG/10A7/10000273_HUYNH_ANH_MINH_1015_4.20d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000274', '1013', 7.6, 3.0, 2.6, 2.0, 18, 22, 0.961, 'AN-DONG/10A7/10000274_NGUYEN_PHUONG_KHANH_MY_1013_7.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000275', '1011', 5.75, 1.5, 3.25, 1.0, 11, 22, 0.943, 'AN-DONG/10A7/10000275_BUI_TUYET_NGAN_1011_5.75d.pdf', 'VALID', 'EMPTY_RESPONSE; SLOT_CONFLICT; LIGHT_MARK');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000276', '1015', 4.5, 2.5, 2.0, 0.0, 11, 22, 0.946, 'AN-DONG/10A7/10000276_NGUYEN_NGOC_PHUONG_NGAN_1015_4.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000277', '1015', 4.6, 1.75, 2.35, 0.5, 10, 22, 0.961, 'AN-DONG/10A7/10000277_BA_THI_ANH_NGOC_1015_4.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000278', '1013', 8.1, 2.5, 3.1, 2.5, 18, 22, 0.96, 'AN-DONG/10A7/10000278_LAM_BAO_NGOC_1013_8.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000279', '1012', 4.75, 2.25, 2.0, 0.5, 11, 22, 0.951, 'AN-DONG/10A7/10000279_NGUYEN_DOAN_QUYNH_NGOC_1012_4.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000280', '1015', 3.1, 1.75, 0.85, 0.5, 8, 22, 0.959, 'AN-DONG/10A7/10000280_NGUYEN_MAI_NGUYEN_1015_3.10d.pdf', 'VALID', 'EMPTY_RESPONSE; SLOT_CONFLICT; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000281', '1017', 3.1, 2.0, 1.1, 0.0, 8, 22, 0.949, 'AN-DONG/10A7/10000281_HUYNH_NGOC_NHU_1017_3.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000282', '1017', 2.5, 1.0, 1.5, 0.0, 4, 22, 0.961, 'AN-DONG/10A7/10000282_DAO_TAN_PHAT_1017_2.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000283', '1015', 6.25, 2.0, 2.75, 1.5, 13, 22, 0.934, 'AN-DONG/10A7/10000283_HUYNH_THANH_PHONG_1015_6.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000284', '1014', 5.0, 2.25, 1.75, 1.0, 11, 22, 0.941, 'AN-DONG/10A7/10000284_NGUYEN_THIEN_PHUOC_1014_5.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000285', '1018', 4.85, 2.5, 2.35, 0.0, 12, 22, 0.958, 'AN-DONG/10A7/10000285_LY_THI_BAO_PHUONG_1018_4.85d.pdf', 'VALID', 'EMPTY_RESPONSE; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000286', '1011', 7.5, 2.5, 3.5, 1.5, 16, 22, 0.962, 'AN-DONG/10A7/10000286_TRAN_VUONG_QUOC_1011_7.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000287', '1016', 2.25, 1.0, 1.25, 0.0, 4, 22, 0.953, 'AN-DONG/10A7/10000287_NGUYEN_TAN_SANG_1016_2.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000288', '1012', 4.6, 2.0, 2.1, 0.5, 10, 22, 0.942, 'AN-DONG/10A7/10000288_NGUYEN_NGOC_DANG_THU_1012_4.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000289', '1014', 4.6, 1.75, 1.85, 1.0, 10, 22, 0.957, 'AN-DONG/10A7/10000289_DUONG_NGOC_MINH_THY_1014_4.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000290', '1016', 8.5, 2.5, 3.0, 3.0, 18, 22, 0.964, 'AN-DONG/10A7/10000290_LY_BAO_THY_1016_8.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000291', '1013', 3.25, 2.25, 1.0, 0.0, 9, 22, 0.962, 'AN-DONG/10A7/10000291_TRAN_BAO_TRAN_1013_3.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000292', '1012', 6.25, 2.25, 3.0, 1.0, 13, 22, 0.952, 'AN-DONG/10A7/10000292_LE_QUANG_TRI_1012_6.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000293', '1013', 2.2, 1.25, 0.95, 0.0, 5, 22, 0.946, 'AN-DONG/10A7/10000293_DUONG_KHAI_TRIEU_1013_2.20d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000294', '1018', 1.85, 0.5, 1.35, 0.0, 2, 22, 0.963, 'AN-DONG/10A7/10000294_DUONG_THI_THANH_TRUC_1018_1.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000295', '1016', 3.0, 0.75, 2.25, 0.0, 4, 22, 0.954, 'AN-DONG/10A7/10000295_DUONG_XUAN_TRUC_1016_3.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000296', '1011', 8.25, 3.0, 2.75, 2.5, 19, 22, 0.957, 'AN-DONG/10A7/10000296_DANG_DOAN_THUY_TRUC_1011_8.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000297', '1016', 6.1, 2.5, 2.1, 1.5, 14, 22, 0.955, 'AN-DONG/10A7/10000297_TRAN_PHAM_THANH_TRUC_1016_6.10d.pdf', 'VALID', 'EMPTY_RESPONSE; SLOT_CONFLICT; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000298', '1017', 6.1, 2.75, 2.35, 1.0, 15, 22, 0.953, 'AN-DONG/10A7/10000298_DO_THUY_THANH_VAN_1017_6.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000299', '1011', 2.5, 0.75, 1.75, 0.0, 3, 22, 0.962, 'AN-DONG/10A7/10000299_HO_LE_TUONG_VAN_1011_2.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000300', '1018', 6.0, 2.75, 2.25, 1.0, 14, 22, 0.958, 'AN-DONG/10A7/10000300_NGUYEN_THI_TUONG_VY_1018_6.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000301', '1013', 2.2, 1.0, 0.7, 0.5, 5, 22, 0.953, 'AN-DONG/10A7/10000301_TRAN_YEN_VY_1013_2.20d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000302', '1017', 7.35, 2.75, 3.1, 1.5, 17, 22, 0.963, 'AN-DONG/10A7/10000302_MAC_BAO_Y_1017_7.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000217', '1013', 7.5, 2.75, 2.75, 2.0, 17, 22, 0.952, 'AN-DONG/10A6/10000217_QUACH_TUAN_AN_1013_7.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000218', '1011', 9.0, 3.0, 4.0, 2.0, 20, 22, 0.958, 'AN-DONG/10A6/10000218_DO_NHU_HOANG_ANH_1011_9.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000219', '1017', 8.5, 2.75, 3.25, 2.5, 19, 22, 0.948, 'AN-DONG/10A6/10000219_TRAN_TUAN_BAO_1017_8.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000220', '1012', 6.25, 2.0, 2.75, 1.5, 13, 22, 0.946, 'AN-DONG/10A6/10000220_TU_KIET_CHI_1012_6.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000221', '1011', 2.45, 1.25, 0.7, 0.5, 6, 22, 0.967, 'AN-DONG/10A6/10000221_NGUYEN_LE_THANH_CONG_1011_2.45d.pdf', 'VALID', 'EMPTY_RESPONSE; MULTIPLE_MARK');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000222', '1013', 5.75, 3.0, 1.75, 1.0, 15, 22, 0.962, 'AN-DONG/10A6/10000222_TANG_NGOC_KHANH_DUONG_1013_5.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000223', '1013', 2.7, 1.25, 1.45, 0.0, 6, 22, 0.944, 'AN-DONG/10A6/10000223_HUYNH_DUY_DUC_1013_2.70d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000224', '1014', 4.6, 1.75, 1.35, 1.5, 10, 22, 0.956, 'AN-DONG/10A6/10000224_VO_NGOC_BAO_HAN_1014_4.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000225', '1014', 5.75, 2.0, 2.25, 1.5, 12, 22, 0.957, 'AN-DONG/10A6/10000225_VONG_GIA_HAN_1014_5.75d.pdf', 'VALID', 'MULTIPLE_MARK; EMPTY_RESPONSE');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000226', '1014', 6.25, 2.0, 2.75, 1.5, 13, 22, 0.957, 'AN-DONG/10A6/10000226_NGUYEN_HOAI_HIEP_1014_6.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000227', '1011', 4.35, 2.5, 1.85, 0.0, 11, 22, 0.952, 'AN-DONG/10A6/10000227_NGUYEN_TUAN_KIET_1011_4.35d.pdf', 'VALID', 'EMPTY_RESPONSE; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000228', '1015', 3.75, 2.25, 1.5, 0.0, 9, 22, 0.959, 'AN-DONG/10A6/10000228_LE_MAI_TRUC_LAM_1015_3.75d.pdf', 'VALID', 'EMPTY_RESPONSE; MULTIPLE_MARK');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000229', '1016', 7.5, 2.5, 3.5, 1.5, 16, 22, 0.963, 'AN-DONG/10A6/10000229_LA_TAN_LOC_1016_7.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000230', '1018', 5.35, 0.75, 2.6, 2.0, 9, 22, 0.958, 'AN-DONG/10A6/10000230_NGUYEN_TRA_MY_1018_5.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000231', '1012', 3.85, 2.0, 1.35, 0.5, 9, 22, 0.949, 'AN-DONG/10A6/10000231_LE_TRAN_KHANH_NAM_1012_3.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000232', '1016', 2.95, 0.5, 0.95, 1.5, 5, 22, 0.952, 'AN-DONG/10A6/10000232_PHAM_LE_DY_NAM_1016_2.95d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000233', '1015', 8.75, 2.75, 3.5, 2.5, 19, 22, 0.95, 'AN-DONG/10A6/10000233_TRAN_THI_BICH_NGAN_1015_8.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000234', '1016', 2.75, 1.0, 1.75, 0.0, 4, 22, 0.957, 'AN-DONG/10A6/10000234_NGUYEN_PHUONG_BAO_NGOC_1016_2.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000235', '1017', 7.0, 2.0, 3.0, 2.0, 14, 22, 0.951, 'AN-DONG/10A6/10000235_NGUYEN_TRAN_MINH_NGOC_1017_7.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000236', '1018', 5.5, 2.0, 2.0, 1.5, 12, 22, 0.962, 'AN-DONG/10A6/10000236_HUYNH_THUC_NGUYEN_1018_5.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000237', '1015', 4.75, 2.0, 1.75, 1.0, 10, 22, 0.958, 'AN-DONG/10A6/10000237_NGUYEN_TRAN_KHOI_NGUYEN_1015_4.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000238', '1012', 5.6, 2.5, 1.1, 2.0, 14, 22, 0.907, 'AN-DONG/10A6/10000238_DAO_DUY_PHONG_1012_5.60d.pdf', 'VALID', 'EMPTY_RESPONSE; SLOT_CONFLICT; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000239', '1015', 3.75, 1.75, 1.5, 0.5, 8, 22, 0.954, 'AN-DONG/10A6/10000239_TRAN_KIEN_PHONG_1015_3.75d.pdf', 'VALID', 'EMPTY_RESPONSE; FAINT_SINGLE_MARK; NON_CONTIGUOUS; INVALID_VALUE; ERASURE');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000240', '1018', 3.35, 1.75, 1.1, 0.5, 8, 22, 0.962, 'AN-DONG/10A6/10000240_LE_TRAN_MINH_QUI_1018_3.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000241', '1013', 8.35, 2.75, 3.1, 2.5, 19, 22, 0.954, 'AN-DONG/10A6/10000241_DANG_LUONG_TRIEU_SANG_1013_8.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000242', '1017', 5.25, 2.5, 1.75, 1.0, 13, 22, 0.957, 'AN-DONG/10A6/10000242_HUA_BAO_SAM_1017_5.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000243', '1017', 8.5, 3.0, 2.5, 3.0, 19, 22, 0.925, 'AN-DONG/10A6/10000243_LAM_HAI_TAN_1017_8.50d.pdf', 'VALID', 'EMPTY_RESPONSE; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000244', '1012', 3.85, 2.0, 1.35, 0.5, 10, 22, 0.963, 'AN-DONG/10A6/10000244_VO_THANH_THAO_1012_3.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000245', '1011', 5.5, 2.0, 2.5, 1.0, 11, 22, 0.951, 'AN-DONG/10A6/10000245_LAO_NGOC_KHANH_THI_1011_5.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000246', '1011', 5.1, 2.25, 1.85, 1.0, 12, 22, 0.968, 'AN-DONG/10A6/10000246_NGUYEN_TUAN_THINH_1011_5.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000247', '1017', 4.5, 2.0, 1.0, 1.5, 11, 22, 0.955, 'AN-DONG/10A6/10000247_HUYNH_THANH_THU_1017_4.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000248', '1016', 3.25, 1.75, 1.5, 0.0, 7, 22, 0.949, 'AN-DONG/10A6/10000248_TRAN_ANH_THU_1016_3.25d.pdf', 'VALID', 'EMPTY_RESPONSE; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000249', '1016', 3.6, 1.5, 1.6, 0.5, 8, 22, 0.959, 'AN-DONG/10A6/10000249_PHAN_THI_NGOC_TRAM_1016_3.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000250', '1011', 6.25, 2.0, 2.75, 1.5, 13, 22, 0.954, 'AN-DONG/10A6/10000250_PHAN_THAI_NGOC_PHUONG_TRINH_1011_6.25d.pdf', 'VALID', 'AMBIGUOUS_STUDENT_ID; MULTIPLE_MARK; EMPTY_RESPONSE; FAINT_SINGLE_MARK');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000251', '1018', 5.25, 2.25, 1.5, 1.5, 12, 22, 0.944, 'AN-DONG/10A6/10000251_TRINH_KIEU_TRINH_1018_5.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000252', '1014', 6.0, 2.0, 3.5, 0.5, 12, 22, 0.959, 'AN-DONG/10A6/10000252_LE_PHU_TRONG_1014_6.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000253', '1013', 5.75, 1.75, 2.5, 1.5, 12, 22, 0.85, 'AN-DONG/10A6/10000253_PHAM_MANH_TRUONG_1013_5.75d.pdf', 'VALID', 'EMPTY_RESPONSE; FAINT_SINGLE_MARK; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000255', '1015', 4.35, 2.0, 1.85, 0.5, 10, 22, 0.956, 'AN-DONG/10A6/10000255_TRAN_HUYNH_TUONG_VY_1015_4.35d.pdf', 'VALID', 'EMPTY_RESPONSE; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000256', '1012', 5.5, 2.0, 3.0, 0.5, 11, 22, 0.95, 'AN-DONG/10A6/10000256_DUONG_DANG_GIA_VY_1012_5.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000257', '1012', 8.5, 2.5, 3.5, 2.5, 18, 22, 0.96, 'AN-DONG/10A6/10000257_HUA_NGOC_NHU_Y_1012_8.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000258', '1013', 4.0, 1.75, 1.25, 1.0, 9, 22, 0.951, 'AN-DONG/10A6/10000258_HUYNH_NGOC_YEN_1013_4.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000259', '1014', 5.2, 2.75, 0.95, 1.5, 14, 22, 0.951, 'AN-DONG/10A6/10000259_PHAN_NGOC_BAO_YEN_1014_5.20d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000173', '1011', 7.0, 2.5, 2.0, 2.5, 16, 22, 0.952, 'AN-DONG/10A5/10000173_KIEU_DUC_ANH_1011_7.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000174', '1012', 7.25, 2.5, 2.75, 2.0, 16, 22, 0.959, 'AN-DONG/10A5/10000174_PHAN_NGUYEN_HOAI_ANH_1012_7.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000175', '1017', 6.75, 2.75, 2.5, 1.5, 16, 22, 0.955, 'AN-DONG/10A5/10000175_HUYNH_NGUYEN_NGOC_AN_1017_6.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000176', '1018', 5.6, 2.0, 2.1, 1.5, 12, 22, 0.948, 'AN-DONG/10A5/10000176_VO_QUYEN_CHUONG_1018_5.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000177', '1011', 6.75, 2.5, 2.75, 1.5, 15, 22, 0.954, 'AN-DONG/10A5/10000177_NGUYEN_NGOC_KIM_CUONG_1011_6.75d.pdf', 'VALID', 'AMBIGUOUS_STUDENT_ID; LIGHT_MARK; AMBIGUOUS_EXAM_CODE; EMPTY_RESPONSE');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000178', '1012', 9.5, 3.0, 3.5, 3.0, 21, 22, 0.959, 'AN-DONG/10A5/10000178_CAO_DUONG_THUY_DUONG_1012_9.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000179', '1017', 5.35, 2.0, 2.35, 1.0, 12, 22, 0.961, 'AN-DONG/10A5/10000179_NGUYEN_TAN_DAT_1017_5.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000180', '1018', 7.0, 2.5, 1.5, 3.0, 17, 22, 0.943, 'AN-DONG/10A5/10000180_HUYNH_HAI_DANG_1018_7.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000181', '1011', 8.25, 2.25, 4.0, 2.0, 17, 22, 0.951, 'AN-DONG/10A5/10000181_NGUYEN_LE_MINH_HAI_1011_8.25d.pdf', 'VALID', 'Khôi phục kết quả đã được thầy xác nhận (trước lần chấm lại 07/11 10:12) – 2026-11-07 12:57:43');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000182', '1012', 6.75, 2.0, 2.25, 2.5, 15, 22, 0.943, 'AN-DONG/10A5/10000182_KIEU_GIA_HAN_1012_6.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000183', '1016', 4.0, 1.5, 2.0, 0.5, 8, 22, 0.955, 'AN-DONG/10A5/10000183_LAM_BAO_HAN_1016_4.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000184', '1012', 1.8, 1.25, 0.55, 0.0, 5, 22, 0.956, 'AN-DONG/10A5/10000184_LA_GIA_HUNG_1012_1.80d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000185', '1015', 5.0, 2.0, 1.5, 1.5, 12, 22, 0.95, 'AN-DONG/10A5/10000185_HUYEN_MINH_HY_1015_5.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000186', '1014', 3.1, 1.5, 1.6, 0.0, 6, 22, 0.963, 'AN-DONG/10A5/10000186_NGUYEN_XUAN_HY_1014_3.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000187', '1013', 6.1, 2.75, 1.35, 2.0, 15, 22, 0.948, 'AN-DONG/10A5/10000187_TRAM_GIA_KIET_1013_6.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000188', '1014', 4.0, 1.25, 2.25, 0.5, 7, 22, 0.962, 'AN-DONG/10A5/10000188_TRAN_QUOC_KIET_1014_4.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000189', '1016', 10.0, 3.0, 4.0, 3.0, 22, 22, 0.947, 'AN-DONG/10A5/10000189_TRAN_THI_SAO_MAI_1016_10.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000190', '1015', 5.25, 1.5, 2.25, 1.5, 10, 22, 0.947, 'AN-DONG/10A5/10000190_LE_HOANG_MINH_1015_5.25d.pdf', 'VALID', 'EMPTY_RESPONSE; SLOT_CONFLICT');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000191', '1013', 4.75, 2.0, 1.25, 1.5, 11, 22, 0.955, 'AN-DONG/10A5/10000191_HUYNH_NGOC_NGA_1013_4.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000192', '1014', 7.1, 2.0, 2.1, 3.0, 15, 22, 0.946, 'AN-DONG/10A5/10000192_CUNG_PHAN_TU_NGUYEN_1014_7.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000193', '1016', 5.0, 2.25, 1.75, 1.0, 12, 22, 0.95, 'AN-DONG/10A5/10000193_TO_KHANH_NGUYEN_1016_5.00d.pdf', 'VALID', 'AMBIGUOUS_EXAM_CODE; MULTIPLE_MARK; EMPTY_RESPONSE');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000194', '1015', 8.0, 2.25, 2.75, 3.0, 17, 22, 0.953, 'AN-DONG/10A5/10000194_NGUYEN_THANH_NHA_1015_8.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000195', '1013', 9.0, 2.5, 3.5, 3.0, 19, 22, 0.947, 'AN-DONG/10A5/10000195_LAM_AI_NHI_1013_9.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000196', '1014', 6.5, 2.25, 2.75, 1.5, 14, 22, 0.953, 'AN-DONG/10A5/10000196_TRAN_NGOC_NHU_1014_6.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000197', '1017', 7.5, 2.25, 2.75, 2.5, 16, 22, 0.937, 'AN-DONG/10A5/10000197_TRAN_NGOC_BAO_NHU_1017_7.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000198', '1018', 7.0, 2.5, 3.0, 1.5, 15, 22, 0.95, 'AN-DONG/10A5/10000198_NGUYEN_MINH_PHONG_1018_7.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000199', '1012', 7.75, 2.75, 2.5, 2.5, 17, 22, 0.957, 'AN-DONG/10A5/10000199_QUACH_HOANG_PHONG_1012_7.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000200', '1011', 7.85, 2.75, 2.6, 2.5, 18, 22, 0.952, 'AN-DONG/10A5/10000200_NGUYEN_UYEN_PHUONG_1011_7.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000201', '1013', 9.5, 3.0, 3.5, 3.0, 21, 22, 0.963, 'AN-DONG/10A5/10000201_TRAN_TRI_QUOC_1013_9.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000202', '1014', 8.75, 2.75, 3.5, 2.5, 19, 22, 0.957, 'AN-DONG/10A5/10000202_PHAM_VAN_QUY_1014_8.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000203', '1013', 8.0, 2.5, 3.0, 2.5, 17, 22, 0.947, 'AN-DONG/10A5/10000203_LY_BOI_SAN_1013_8.00d.pdf', 'VALID', 'AMBIGUOUS_EXAM_CODE; MULTIPLE_MARK; EMPTY_RESPONSE');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000204', '1014', 5.35, 1.25, 2.6, 1.5, 10, 22, 0.949, 'AN-DONG/10A5/10000204_PHAN_THANH_TAI_1014_5.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000205', '1012', 9.5, 3.0, 4.0, 2.5, 21, 22, 0.959, 'AN-DONG/10A5/10000205_HOANG_PHUONG_THAO_1012_9.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000206', '1011', 8.75, 2.75, 3.5, 2.5, 19, 22, 0.948, 'AN-DONG/10A5/10000206_LE_THI_THANH_THAO_1011_8.75d.pdf', 'VALID', 'EMPTY_RESPONSE; SLOT_CONFLICT; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000207', '1018', 3.5, 2.0, 0.5, 1.0, 10, 22, 0.957, 'AN-DONG/10A5/10000207_TRAN_THANH_THAO_1018_3.50d.pdf', 'VALID', 'EMPTY_RESPONSE; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000208', '1015', 7.75, 2.5, 3.25, 2.0, 17, 22, 0.956, 'AN-DONG/10A5/10000208_TRAN_HOANG_THIEN_1015_7.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000209', '1017', 6.1, 2.5, 2.1, 1.5, 14, 22, 0.957, 'AN-DONG/10A5/10000209_LA_HUY_THINH_1017_6.10d.pdf', 'VALID', 'AMBIGUOUS_STUDENT_ID; MULTIPLE_MARK; EMPTY_RESPONSE');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000210', '1017', 8.25, 3.0, 3.25, 2.0, 19, 22, 0.959, 'AN-DONG/10A5/10000210_NGUYEN_THI_NGOC_THOM_1017_8.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000211', '1015', 8.0, 2.5, 2.5, 3.0, 18, 22, 0.959, 'AN-DONG/10A5/10000211_CAO_NGUYEN_BAO_TRAN_1015_8.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000212', '1011', 9.25, 2.75, 3.5, 3.0, 20, 22, 0.945, 'AN-DONG/10A5/10000212_NGUYEN_DO_MINH_TRUONG_1011_9.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000213', '1013', 4.5, 2.0, 2.0, 0.5, 10, 22, 0.96, 'AN-DONG/10A5/10000213_DAM_TINH_VAN_1013_4.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000214', '1016', 5.45, 1.75, 2.2, 1.5, 12, 22, 0.957, 'AN-DONG/10A5/10000214_LE_QUOC_VINH_1016_5.45d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000215', '1016', 3.5, 1.5, 2.0, 0.0, 7, 22, 0.949, 'AN-DONG/10A5/10000215_TRAN_NHA_VY_1016_3.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000216', '1018', 6.0, 2.25, 2.25, 1.5, 13, 22, 0.953, 'AN-DONG/10A5/10000216_TRINH_NGOC_VY_1018_6.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000132', '1017', 1.75, 0.25, 1.5, 0.0, 1, 22, 0.933, 'AN-DONG/10A4/10000132_TRUONG_VAN_TUAN_ANH_1017_1.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000133', '1017', 6.0, 1.0, 3.0, 2.0, 10, 22, 0.958, 'AN-DONG/10A4/10000133_HUYNH_GIA_BAO_1017_6.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000134', '1016', 7.0, 2.0, 3.5, 1.5, 14, 22, 0.954, 'AN-DONG/10A4/10000134_NGUYEN_QUOC_BAO_1016_7.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000135', '1015', 7.35, 2.25, 3.1, 2.0, 16, 22, 0.948, 'AN-DONG/10A4/10000135_TRAN_GIA_BAO_1015_7.35d.pdf', 'VALID', 'MULTIPLE_MARK; EMPTY_RESPONSE; ERASURE; SLOT_CONFLICT');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000136', '1016', 3.75, 1.25, 1.5, 1.0, 7, 22, 0.955, 'AN-DONG/10A4/10000136_TRAN_VO_GIA_BAO_1016_3.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000137', '1014', 9.75, 2.75, 4.0, 3.0, 21, 22, 0.963, 'AN-DONG/10A4/10000137_TRUONG_TUAN_BINH_1014_9.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000138', '1018', 7.25, 2.75, 3.5, 1.0, 16, 22, 0.959, 'AN-DONG/10A4/10000138_DIEC_HIEU_CAN_1018_7.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000139', '1014', 9.75, 2.75, 4.0, 3.0, 21, 22, 0.96, 'AN-DONG/10A4/10000139_NGUYEN_CAO_MINH_DAT_1014_9.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000140', '1017', 4.0, 2.0, 1.5, 0.5, 9, 22, 0.96, 'AN-DONG/10A4/10000140_NGO_PHUONG_DONG_1017_4.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000141', '1016', 4.1, 1.25, 1.35, 1.5, 8, 22, 0.96, 'AN-DONG/10A4/10000141_TRAN_TU_HANH_1016_4.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000142', '1012', 3.5, 1.5, 2.0, 0.0, 7, 22, 0.96, 'AN-DONG/10A4/10000142_VONG_THE_HAO_1012_3.50d.pdf', 'VALID', 'EMPTY_RESPONSE; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000143', '1018', 4.75, 2.25, 1.5, 1.0, 11, 22, 0.954, 'AN-DONG/10A4/10000143_Truong_Gia_Hien_1018_4.75d.pdf', 'VALID', 'AMBIGUOUS_EXAM_CODE; LIGHT_MARK; LOW_MARGIN; EMPTY_RESPONSE');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000144', '1011', 3.25, 0.5, 2.25, 0.5, 4, 22, 0.948, 'AN-DONG/10A4/10000144_LE_MINH_HIEU_1011_3.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000145', '1013', 7.25, 3.0, 2.75, 1.5, 17, 22, 0.96, 'AN-DONG/10A4/10000145_TRAM_KIM_GIA_HUY_1013_7.25d.pdf', 'VALID', 'AMBIGUOUS_STUDENT_ID; LIGHT_MARK; LOW_MARGIN; AMBIGUOUS_EXAM_CODE; MULTIPLE_MARK; EMPTY_RESPONSE; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000146', '1013', 3.1, 0.75, 2.35, 0.0, 5, 22, 0.951, 'AN-DONG/10A4/10000146_NGUYEN_TRUNG_HUNG_1013_3.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000147', '1016', 7.5, 2.25, 2.75, 2.5, 16, 22, 0.955, 'AN-DONG/10A4/10000147_TRAN_I_Q_1016_7.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000148', '1016', 6.75, 2.25, 3.5, 1.0, 14, 22, 0.949, 'AN-DONG/10A4/10000148_NGUYEN_DANG_TRONG_KHANG_1016_6.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000149', '1018', 5.0, 1.5, 2.0, 1.5, 10, 22, 0.953, 'AN-DONG/10A4/10000149_PHAM_DANG_KHOA_1018_5.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000150', '1012', 6.75, 2.25, 2.0, 2.5, 15, 22, 0.956, 'AN-DONG/10A4/10000150_TRAN_DANG_KHOI_1012_6.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000151', '1014', 3.95, 1.25, 1.2, 1.5, 8, 22, 0.96, 'AN-DONG/10A4/10000151_TRAN_BAO_LUAN_1014_3.95d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000152', '1013', 4.35, 1.0, 1.85, 1.5, 8, 22, 0.95, 'AN-DONG/10A4/10000152_LU_DAI_LUC_1013_4.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000154', '1012', 6.25, 2.25, 3.0, 1.0, 13, 22, 0.955, 'AN-DONG/10A4/10000154_NGUYEN_HOANG_TRANG_NGUYEN_1012_6.25d.pdf', 'VALID', 'AMBIGUOUS_EXAM_CODE; MULTIPLE_MARK; EMPTY_RESPONSE; SLOT_CONFLICT; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000155', '1012', 3.85, 1.5, 1.35, 1.0, 8, 22, 0.954, 'AN-DONG/10A4/10000155_NGUYEN_TRAN_YEN_NHI_1012_3.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000156', '1012', 3.6, 1.5, 1.6, 0.5, 7, 22, 0.946, 'AN-DONG/10A4/10000156_KHAU_MINH_NHUT_1012_3.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000157', '1015', 7.75, 2.75, 3.5, 1.5, 17, 22, 0.952, 'AN-DONG/10A4/10000157_CHUNG_GIA_PHU_1015_7.75d.pdf', 'VALID', 'AMBIGUOUS_EXAM_CODE; MULTIPLE_MARK; EMPTY_RESPONSE; FAINT_SINGLE_MARK; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000158', '1017', 4.1, 1.5, 2.1, 0.5, 8, 22, 0.951, 'AN-DONG/10A4/10000158_NGUYEN_DANG_TRONG_PHUC_1017_4.10d.pdf', 'VALID', 'EMPTY_RESPONSE; SLOT_CONFLICT; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000159', '1014', 9.0, 3.0, 4.0, 2.0, 20, 22, 0.956, 'AN-DONG/10A4/10000159_NGUYEN_TOAN_PHUC_1014_9.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000160', '1013', 9.0, 3.0, 3.5, 2.5, 20, 22, 0.962, 'AN-DONG/10A4/10000160_TRAN_NGUYEN_GIA_PHUC_1013_9.00d.pdf', 'VALID', 'AMBIGUOUS_STUDENT_ID; MULTIPLE_MARK; EMPTY_RESPONSE');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000161', '1015', 4.0, 1.25, 1.75, 1.0, 7, 22, 0.946, 'AN-DONG/10A4/10000161_VU_DANG_MINH_QUAN_1015_4.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000162', '1015', 7.0, 2.0, 3.5, 1.5, 14, 22, 0.958, 'AN-DONG/10A4/10000162_NGUYEN_DUC_SANG_1015_7.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000163', '1018', 2.05, 1.0, 0.55, 0.5, 5, 22, 0.956, 'AN-DONG/10A4/10000163_NGUYEN_HOANG_TAN_1018_2.05d.pdf', 'VALID', 'EMPTY_RESPONSE; FAINT_SINGLE_MARK; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000164', '1011', 5.75, 2.5, 1.25, 2.0, 14, 22, 0.954, 'AN-DONG/10A4/10000164_NGUYEN_THANH_THAI_1011_5.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000165', '1011', 5.25, 1.5, 2.25, 1.5, 10, 22, 0.962, 'AN-DONG/10A4/10000165_VO_THUY_THANH_THAO_1011_5.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000166', '1018', 3.0, 1.75, 1.25, 0.0, 7, 22, 0.952, 'AN-DONG/10A4/10000166_HA_PHAN_TRUONG_THINH_1018_3.00d.pdf', 'VALID', 'Giáo viên duyệt tay: phần 2 câu 1 ý B không tô, ý C tô 2 câu tính ra là loại -> 3.00đ');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000167', '1013', 8.5, 2.5, 4.0, 2.0, 18, 22, 0.956, 'AN-DONG/10A4/10000167_TRINH_QUOC_GIA_THINH_1013_8.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000168', '1015', 2.75, 1.25, 1.5, 0.0, 5, 22, 0.958, 'AN-DONG/10A4/10000168_HOANG_HUYNH_DIEM_TRANG_1015_2.75d.pdf', 'VALID', 'EMPTY_RESPONSE; MULTIPLE_MARK');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000169', '1017', 5.25, 1.75, 2.5, 1.0, 11, 22, 0.949, 'AN-DONG/10A4/10000169_NGUYEN_MINH_TRI_1017_5.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000170', '1014', 7.5, 2.5, 2.5, 2.5, 16, 22, 0.953, 'AN-DONG/10A4/10000170_HONG_NHAM_HOANG_TRIEU_1014_7.50d.pdf', 'VALID', 'EMPTY_RESPONSE; MULTIPLE_MARK');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000171', '1011', 5.25, 2.25, 2.0, 1.0, 12, 22, 0.955, 'AN-DONG/10A4/10000171_PHAM_THANH_TRUC_1011_5.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000172', '1011', 4.85, 1.75, 2.6, 0.5, 10, 22, 0.939, 'AN-DONG/10A4/10000172_HUYNH_THI_KIM_YEN_1011_4.85d.pdf', 'VALID', 'EMPTY_RESPONSE; NON_CONTIGUOUS; SLOT_CONFLICT');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000086', '1015', 2.25, 1.5, 0.75, 0.0, 6, 22, 0.958, 'AN-DONG/10A3/10000086_HUYNH_NGUYEN_MINH_ANH_1015_2.25d.pdf', 'VALID', 'Giáo viên duyệt tay: P.II C1 ý b chọn Đúng, ý c không chọn câu nào -> Điểm 2.25đ');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000087', '1016', 8.25, 3.0, 3.25, 2.0, 19, 22, 0.961, 'AN-DONG/10A3/10000087_MAI_BA_THANH_BINH_1016_8.25d.pdf', 'VALID', 'MULTIPLE_MARK; EMPTY_RESPONSE');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000088', '1015', 1.75, 0.5, 1.25, 0.0, 2, 22, 0.949, 'AN-DONG/10A3/10000088_NGUYEN_NGOC_BAO_CHAU_1015_1.75d.pdf', 'VALID', 'EMPTY_RESPONSE; FAINT_SINGLE_MARK');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000089', '1016', 2.35, 1.0, 1.35, 0.0, 4, 22, 0.95, 'AN-DONG/10A3/10000089_TRAN_NGOC_CHAU_1016_2.35d.pdf', 'VALID', 'Khôi phục kết quả đã được thầy xác nhận (trước lần chấm lại 07/11 10:12) – 2026-11-07 12:57:43');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000090', '1015', 1.45, 0.75, 0.7, 0.0, 3, 22, 0.9, 'AN-DONG/10A3/10000090_LU_HOANG_MINH_DUY_1015_1.45d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000091', '1017', 3.0, 0.75, 1.75, 0.5, 5, 22, 0.956, 'AN-DONG/10A3/10000091_TRAN_KIM_DUYEN_1017_3.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000092', '1017', 2.5, 1.0, 1.5, 0.0, 4, 22, 0.951, 'AN-DONG/10A3/10000092_TRAN_MINH_DE_1017_2.50d.pdf', 'VALID', 'AMBIGUOUS_STUDENT_ID; MULTIPLE_MARK; EMPTY_RESPONSE');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000093', '1012', 1.2, 0.0, 1.2, 0.0, 0, 22, 0.954, 'AN-DONG/10A3/10000093_TRAN_NGUYEN_HOANG_GIA_1012_1.20d.pdf', 'VALID', 'MULTIPLE_MARK; EMPTY_RESPONSE; SLOT_CONFLICT; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000094', '1018', 1.7, 0.5, 1.2, 0.0, 2, 22, 0.949, 'AN-DONG/10A3/10000094_DO_LE_KHANH_HAO_1018_1.70d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000095', '1012', 4.35, 2.25, 1.1, 1.0, 11, 22, 0.959, 'AN-DONG/10A3/10000095_PHAM_NGUYEN_GIA_HUY_1012_4.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000096', '1016', 3.45, 2.25, 0.7, 0.5, 10, 22, 0.949, 'AN-DONG/10A3/10000096_PHAM_NGUYEN_QUANG_HUY_1016_3.45d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000097', '1018', 5.5, 2.25, 2.25, 1.0, 13, 22, 0.961, 'AN-DONG/10A3/10000097_TA_CAO_THANH_HUY_1018_5.50d.pdf', 'VALID', 'EMPTY_RESPONSE; MULTIPLE_MARK');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000098', '1012', 2.1, 0.75, 1.35, 0.0, 3, 22, 0.956, 'AN-DONG/10A3/10000098_NGUYEN_DINH_QUOC_HUU_1012_2.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000099', '1011', 7.35, 3.0, 1.85, 2.5, 18, 22, 0.962, 'AN-DONG/10A3/10000099_VAN_NGUYEN_BAO_KHANH_1011_7.35d.pdf', 'VALID', 'EMPTY_RESPONSE; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000100', '1014', 8.5, 3.0, 4.0, 1.5, 19, 22, 0.96, 'AN-DONG/10A3/10000100_LE_THANH_KHUONG_1014_8.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000101', '1016', 6.75, 2.5, 2.75, 1.5, 15, 22, 0.954, 'AN-DONG/10A3/10000101_HUYNH_TRUNG_KIEN_1016_6.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000102', '1013', 2.85, 0.75, 1.6, 0.5, 5, 22, 0.943, 'AN-DONG/10A3/10000102_CHAU_PHAN_TAI_LOC_1013_2.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000103', '1016', 3.75, 2.0, 1.75, 0.0, 8, 22, 0.939, 'AN-DONG/10A3/10000103_PHAM_MINH_LUAN_1016_3.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000104', '1014', 3.0, 1.75, 1.25, 0.0, 7, 22, 0.959, 'AN-DONG/10A3/10000104_VUONG_GIA_LUAN_1014_3.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000105', '1017', 6.0, 3.0, 1.5, 1.5, 15, 22, 0.952, 'AN-DONG/10A3/10000105_LE_THI_MAI_1017_6.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000106', '1017', 5.75, 2.25, 2.0, 1.5, 13, 22, 0.953, 'AN-DONG/10A3/10000106_TRUONG_XUAN_MAI_1017_5.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000107', '1011', 2.75, 1.25, 1.0, 0.5, 6, 22, 0.919, 'AN-DONG/10A3/10000107_NGUYEN_DUONG_NHAT_MINH_1011_2.75d.pdf', 'VALID', 'AMBIGUOUS_STUDENT_ID; LIGHT_MARK; EMPTY_RESPONSE');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000108', '1014', 5.6, 1.75, 1.35, 2.5, 12, 22, 0.956, 'AN-DONG/10A3/10000108_NGUYEN_HOANG_MINH_1014_5.60d.pdf', 'VALID', 'Khôi phục kết quả đã được thầy xác nhận (trước lần chấm lại 07/11 10:12) – 2026-11-07 12:57:43');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000109', '1015', 4.1, 2.75, 1.35, 0.0, 11, 22, 0.958, 'AN-DONG/10A3/10000109_TRAN_NGUYEN_NGOC_MY_1015_4.10d.pdf', 'VALID', 'EMPTY_RESPONSE; SLOT_CONFLICT; FAINT_SINGLE_MARK; LIGHT_MARK; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000110', '1013', 5.85, 2.0, 1.85, 2.0, 13, 22, 0.951, 'AN-DONG/10A3/10000110_HUYNH_NGUYEN_THUY_NGA_1013_5.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000111', '1014', 3.35, 1.75, 1.6, 0.0, 7, 22, 0.951, 'AN-DONG/10A3/10000111_PHAN_NGUYEN_YEN_NHI_1014_3.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000112', '1016', 7.25, 2.75, 2.5, 2.0, 16, 22, 0.961, 'AN-DONG/10A3/10000112_VO_THI_YEN_NHI_1016_7.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000113', '1018', 5.0, 1.75, 2.25, 1.0, 10, 22, 0.953, 'AN-DONG/10A3/10000113_LE_PHUONG_NHU_1018_5.00d.pdf', 'VALID', 'EMPTY_RESPONSE; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000114', '1013', 5.75, 2.5, 1.75, 1.5, 14, 22, 0.958, 'AN-DONG/10A3/10000114_NGUYEN_PHAM_QUYNH_NHU_1013_5.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000115', '1012', 5.1, 2.0, 1.1, 2.0, 12, 22, 0.951, 'AN-DONG/10A3/10000115_VO_MINH_QUAN_1012_5.10d.pdf', 'VALID', 'EMPTY_RESPONSE; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000116', '1011', 8.0, 2.75, 3.25, 2.0, 18, 22, 0.947, 'AN-DONG/10A3/10000116_CAO_MINH_QUOC_1011_8.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000117', '1014', 7.0, 2.75, 2.25, 2.0, 16, 22, 0.957, 'AN-DONG/10A3/10000117_TRAN_HAI_SON_1014_7.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000118', '1013', 8.0, 2.0, 3.0, 3.0, 16, 22, 0.948, 'AN-DONG/10A3/10000118_NGO_HA_DINH_THAI_1013_8.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000119', '1015', 1.7, 0.75, 0.95, 0.0, 3, 22, 0.961, 'AN-DONG/10A3/10000119_MAI_THI_HUONG_THI_1015_1.70d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000120', '1012', 5.75, 2.25, 2.0, 1.5, 12, 22, 0.958, 'AN-DONG/10A3/10000120_LAM_CHI_THIEN_1012_5.75d.pdf', 'VALID', 'EMPTY_RESPONSE; MULTIPLE_MARK');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000121', '1014', 2.5, 0.0, 2.5, 0.0, 1, 22, 0.957, 'AN-DONG/10A3/10000121_VU_HOANG_DUC_THINH_1014_2.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000122', '1017', 3.5, 2.25, 1.25, 0.0, 9, 22, 0.951, 'AN-DONG/10A3/10000122_VU_LE_TIEN_1017_3.50d.pdf', 'VALID', 'EMPTY_RESPONSE; MULTIPLE_MARK');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000123', '1011', 1.75, 0.75, 1.0, 0.0, 3, 22, 0.951, 'AN-DONG/10A3/10000123_VO_PHAM_THANH_TRA_1011_1.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000124', '1011', 2.25, 1.0, 1.25, 0.0, 4, 22, 0.955, 'AN-DONG/10A3/10000124_TRAN_VAN_TRI_1011_2.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000125', '1018', 4.0, 2.25, 1.25, 0.5, 10, 22, 0.958, 'AN-DONG/10A3/10000125_NGUYEN_THI_THANH_TRUC_1018_4.00d.pdf', 'VALID', 'EMPTY_RESPONSE; SLOT_CONFLICT');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000126', '1011', 1.85, 0.5, 1.35, 0.0, 2, 22, 0.949, 'AN-DONG/10A3/10000126_DO_TUAN_TU_1011_1.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000127', '1012', 3.35, 0.75, 2.1, 0.5, 5, 22, 0.947, 'AN-DONG/10A3/10000127_TRAN_NGO_THAI_TUAN_1012_3.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000128', '1015', 6.1, 2.5, 2.1, 1.5, 15, 22, 0.952, 'AN-DONG/10A3/10000128_HA_QUOC_VINH_1015_6.10d.pdf', 'VALID', 'EMPTY_RESPONSE; FAINT_SINGLE_MARK');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000129', '1013', 1.7, 0.5, 1.2, 0.0, 3, 22, 0.955, 'AN-DONG/10A3/10000129_PHAN_HA_NGOC_VY_1013_1.70d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000130', '1018', 3.6, 1.75, 1.35, 0.5, 8, 22, 0.946, 'AN-DONG/10A3/10000130_VO_HUYNH_GIA_VY_1018_3.60d.pdf', 'VALID', 'AMBIGUOUS_STUDENT_ID; MULTIPLE_MARK; EMPTY_RESPONSE');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000131', '1013', 1.75, 0.5, 1.25, 0.0, 2, 22, 0.95, 'AN-DONG/10A3/10000131_NGUYEN_THI_NGOC_YEN_1013_1.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000045', '1012', 6.75, 1.75, 2.5, 2.5, 14, 22, 0.828, 'AN-DONG/10A2/10000045_DUONG_MY_ANH_1012_6.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000046', '1011', 3.75, 1.25, 1.5, 1.0, 7, 22, 0.955, 'AN-DONG/10A2/10000046_HUYNH_THI_NGOC_ANH_1011_3.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000047', '1017', 2.1, 0.5, 1.6, 0.0, 3, 22, 0.932, 'AN-DONG/10A2/10000047_LY_NGOC_AN_1017_2.10d.pdf', 'VALID', 'Khôi phục kết quả đã được thầy xác nhận (trước lần chấm lại 07/11 10:12) – 2026-11-07 12:57:43');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000048', '1011', 5.0, 2.25, 1.25, 1.5, 12, 22, 0.96, 'AN-DONG/10A2/10000048_DUONG_NHAT_DUY_1011_5.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000049', '1011', 6.1, 2.25, 2.35, 1.5, 14, 22, 0.96, 'AN-DONG/10A2/10000049_TRINH_GIA_HAO_1011_6.10d.pdf', 'VALID', 'AMBIGUOUS_EXAM_CODE; MULTIPLE_MARK; EMPTY_RESPONSE');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000050', '1013', 5.85, 2.5, 2.35, 1.0, 14, 22, 0.952, 'AN-DONG/10A2/10000050_HUA_NGUYEN_TUAN_KHANG_1013_5.85d.pdf', 'VALID', 'Khôi phục kết quả đã được thầy xác nhận (trước lần chấm lại 07/11 10:12) – 2026-11-07 12:57:43');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000051', '1018', 3.35, 1.25, 1.1, 1.0, 7, 22, 0.944, 'AN-DONG/10A2/10000051_NGO_TRI_KHANG_1018_3.35d.pdf', 'VALID', 'MULTIPLE_MARK; LIGHT_MARK; LOW_MARGIN; EMPTY_RESPONSE');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000052', '1013', 5.0, 2.25, 0.75, 2.0, 13, 22, 0.964, 'AN-DONG/10A2/10000052_PHAM_PHU_KHANG_1013_5.00d.pdf', 'VALID', 'EMPTY_RESPONSE; SLOT_CONFLICT');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000053', '1018', 9.5, 3.0, 3.5, 3.0, 21, 22, 0.947, 'AN-DONG/10A2/10000053_TRAN_MINH_KHANG_1018_9.50d.pdf', 'VALID', 'EMPTY_RESPONSE; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000054', '1013', 7.95, 2.75, 2.2, 3.0, 19, 22, 0.952, 'AN-DONG/10A2/10000054_NGUYEN_HIEN_VAN_KHANH_1013_7.95d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000055', '1012', 7.85, 2.75, 2.6, 2.5, 18, 22, 0.956, 'AN-DONG/10A2/10000055_TRAN_ANH_KHOA_1012_7.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000056', '1014', 6.75, 1.75, 3.5, 1.5, 13, 22, 0.941, 'AN-DONG/10A2/10000056_CAI_CHI_KIEN_1014_6.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000057', '1017', 1.7, 1.0, 0.7, 0.0, 4, 22, 0.955, 'AN-DONG/10A2/10000057_NGUYEN_TAN_LONG_1017_1.70d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000058', '1014', 4.25, 2.0, 1.75, 0.5, 9, 22, 0.953, 'AN-DONG/10A2/10000058_DUONG_HONG_MY_1014_4.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000059', '1017', 7.75, 2.75, 3.5, 1.5, 17, 22, 0.951, 'AN-DONG/10A2/10000059_TRAN_PHUONG_NGAN_1017_7.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000061', '1014', 9.5, 3.0, 3.5, 3.0, 21, 22, 0.845, 'AN-DONG/10A2/10000061_TRINH_HOANG_BAO_NGOC_1014_9.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000062', '1015', 5.35, 2.75, 2.6, 0.0, 13, 22, 0.952, 'AN-DONG/10A2/10000062_LE_MINH_NHAT_1015_5.35d.pdf', 'VALID', 'AMBIGUOUS_STUDENT_ID; LIGHT_MARK; MULTIPLE_MARK; EMPTY_RESPONSE; SLOT_CONFLICT; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000063', '1016', 5.5, 1.5, 4.0, 0.0, 10, 22, 0.756, 'AN-DONG/10A2/10000063_TRAN_KHANH_THAO_NHI_1016_5.50d.pdf', 'VALID', 'Hình học hơi lệch: vùng p3_q1 lệch 7.3 px (52% bán kính ô).; ALIGNMENT_UNCERTAIN; EMPTY_RESPONSE; FAINT_SINGLE_MARK');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000064', '1015', 6.85, 2.5, 2.35, 2.0, 16, 22, 0.951, 'AN-DONG/10A2/10000064_NGUYEN_THI_AN_NHIEN_1015_6.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000065', '1016', 8.1, 2.5, 3.1, 2.5, 18, 22, 0.955, 'AN-DONG/10A2/10000065_HUYNH_HOANG_PHAT_1016_8.10d.pdf', 'VALID', 'EMPTY_RESPONSE; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000066', '1015', 7.25, 2.5, 3.25, 1.5, 16, 22, 0.96, 'AN-DONG/10A2/10000066_DANH_HOANG_NHAT_PHUONG_1015_7.25d.pdf', 'VALID', 'Khôi phục kết quả đã được thầy xác nhận (trước lần chấm lại 07/11 10:12) – 2026-11-07 12:57:43');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000067', '1016', 5.0, 1.0, 2.5, 1.5, 9, 22, 0.955, 'AN-DONG/10A2/10000067_NGUYEN_HONG_PHUONG_1016_5.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000068', '1011', 6.6, 2.75, 2.35, 1.5, 16, 22, 0.917, 'AN-DONG/10A2/10000068_TRAN_THANH_PHUONG_1011_6.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000069', '1018', 3.6, 1.25, 1.35, 1.0, 7, 22, 0.927, 'AN-DONG/10A2/10000069_HUYNH_NGUYEN_MINH_QUANG_1018_3.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000070', '1017', 5.25, 2.25, 2.0, 1.0, 12, 22, 0.939, 'AN-DONG/10A2/10000070_NGUYEN_TRI_QUANG_1017_5.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000071', '1016', 10.0, 3.0, 4.0, 3.0, 22, 22, 0.812, 'AN-DONG/10A2/10000071_LU_THAI_NGOC_QUYNH_1016_10.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000072', '1018', 5.1, 2.5, 2.1, 0.5, 12, 22, 0.798, 'AN-DONG/10A2/10000072_LUU_BOI_SAN_1018_5.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000073', '1017', 3.1, 0.5, 2.6, 0.0, 4, 22, 0.967, 'AN-DONG/10A2/10000073_KARIEM_SUHAYLA_1017_3.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000074', '1012', 2.2, 1.25, 0.95, 0.0, 5, 22, 0.955, 'AN-DONG/10A2/10000074_KHUU_KHANG_THAI_1012_2.20d.pdf', 'VALID', 'AMBIGUOUS_STUDENT_ID; LIGHT_MARK; EMPTY_RESPONSE; FAINT_SINGLE_MARK');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000075', '1015', 7.1, 2.5, 3.1, 1.5, 16, 22, 0.962, 'AN-DONG/10A2/10000075_LE_THANH_THAO_1015_7.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000076', '1011', 2.25, 1.25, 1.0, 0.0, 5, 22, 0.955, 'AN-DONG/10A2/10000076_TU_HUU_THANG_1011_2.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000077', '1014', 7.85, 2.5, 2.35, 3.0, 18, 22, 0.846, 'AN-DONG/10A2/10000077_NGUYEN_QUOC_THINH_1014_7.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000078', '1017', 2.5, 1.0, 1.5, 0.0, 4, 22, 0.952, 'AN-DONG/10A2/10000078_NGUYEN_DUC_THONG_1017_2.50d.pdf', 'VALID', 'AMBIGUOUS_STUDENT_ID; MULTIPLE_MARK; EMPTY_RESPONSE');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000079', '1013', 8.35, 2.75, 3.1, 2.5, 19, 22, 0.957, 'AN-DONG/10A2/10000079_HUYNH_THUC_UYEN_1013_8.35d.pdf', 'VALID', 'EMPTY_RESPONSE; SLOT_CONFLICT');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000080', '1013', 8.1, 3.0, 3.1, 2.0, 19, 22, 0.951, 'AN-DONG/10A2/10000080_LUU_DAT_VINH_1013_8.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000081', '1012', 8.0, 2.5, 3.5, 2.0, 17, 22, 0.823, 'AN-DONG/10A2/10000081_TRAN_HUONG_VUONG_1012_8.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000082', '1014', 8.5, 2.75, 2.75, 3.0, 19, 22, 0.948, 'AN-DONG/10A2/10000082_NGO_THANH_VY_1014_8.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000083', '1018', 5.75, 2.5, 2.75, 0.5, 13, 22, 0.955, 'AN-DONG/10A2/10000083_NGUYEN_THUY_THANH_VY_1018_5.75d.pdf', 'VALID', 'EMPTY_RESPONSE; MULTIPLE_MARK; SLOT_CONFLICT');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000084', '1016', 7.75, 2.25, 3.5, 2.0, 16, 22, 0.954, 'AN-DONG/10A2/10000084_TRUONG_UNG_XUAN_1016_7.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000085', '1015', 6.85, 2.75, 2.6, 1.5, 16, 22, 0.947, 'AN-DONG/10A2/10000085_LAM_THANH_HAI_YEN_1015_6.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000001', '1017', 3.35, 1.5, 1.35, 0.5, 8, 22, 0.956, 'AN-DONG/10A1/10000001_NGO_DIEU_AI_1017_3.35d.pdf', 'VALID', 'EMPTY_RESPONSE; MULTIPLE_MARK');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000002', '1011', 4.25, 2.0, 1.25, 1.0, 10, 22, 0.951, 'AN-DONG/10A1/10000002_HUYNH_THE_THIEN_AN_1011_4.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000003', '1013', 4.1, 1.25, 0.85, 2.0, 9, 22, 0.956, 'AN-DONG/10A1/10000003_CONG_GIA_BAO_1013_4.10d.pdf', 'VALID', 'EMPTY_RESPONSE; SLOT_CONFLICT; FAINT_SINGLE_MARK');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000004', '1018', 3.25, 1.5, 1.75, 0.0, 7, 22, 0.96, 'AN-DONG/10A1/10000004_TANG_GIA_BAO_1018_3.25d.pdf', 'VALID', 'EMPTY_RESPONSE; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000005', '1013', 3.6, 2.0, 1.6, 0.0, 9, 22, 0.94, 'AN-DONG/10A1/10000005_NGUYEN_THANH_DANH_1013_3.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000006', '1016', 9.75, 2.75, 4.0, 3.0, 21, 22, 0.952, 'AN-DONG/10A1/10000006_OAN_NGOC_BAO_HAN_1016_9.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000007', '1014', 5.85, 2.5, 1.35, 2.0, 14, 22, 0.953, 'AN-DONG/10A1/10000007_NGUYEN_NGOC_HAN_1014_5.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000008', '1018', 3.75, 1.75, 2.0, 0.0, 8, 22, 0.952, 'AN-DONG/10A1/10000008_TRAN_GIA_HAN_1018_3.75d.pdf', 'VALID', 'EMPTY_RESPONSE; FAINT_SINGLE_MARK; MULTIPLE_MARK; SLOT_CONFLICT; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000009', '1012', 3.85, 1.75, 1.6, 0.5, 9, 22, 0.942, 'AN-DONG/10A1/10000009_PHAM_MAI_BAO_HIEN_1012_3.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000010', '1018', 4.6, 1.75, 1.85, 1.0, 10, 22, 0.954, 'AN-DONG/10A1/10000010_TRINH_THANH_HIEN_1018_4.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000011', '1015', 4.6, 1.25, 1.85, 1.5, 9, 22, 0.938, 'AN-DONG/10A1/10000011_LE_QUOC_HUY_1015_4.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000012', '1011', 4.0, 1.75, 1.75, 0.5, 8, 22, 0.953, 'AN-DONG/10A1/10000012_PHAN_HUYNH_HUONG_1011_4.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000013', '1011', 2.5, 1.25, 1.25, 0.0, 5, 22, 0.96, 'AN-DONG/10A1/10000013_TRAN_TAN_KHANG_1011_2.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000014', '1014', 5.75, 2.0, 2.25, 1.5, 12, 22, 0.954, 'AN-DONG/10A1/10000014_LE_DANG_KHOA_1014_5.75d.pdf', 'VALID', 'MULTIPLE_MARK; EMPTY_RESPONSE; SLOT_CONFLICT');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000015', '1016', 6.75, 2.25, 2.0, 2.5, 15, 22, 0.946, 'AN-DONG/10A1/10000015_NGUYEN_TRUONG_MINH_KHOA_1016_6.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000016', '1016', 4.5, 1.75, 1.75, 1.0, 10, 22, 0.954, 'AN-DONG/10A1/10000016_NGUYEN_MINH_KHOI_1016_4.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000017', '1013', 5.75, 2.5, 1.75, 1.5, 13, 22, 0.967, 'AN-DONG/10A1/10000017_DIEP_MY_KIET_1013_5.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000018', '1011', 5.25, 1.75, 2.5, 1.0, 10, 22, 0.948, 'AN-DONG/10A1/10000018_NGUYEN_HUNG_GIA_KIET_1011_5.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000019', '1018', 6.0, 1.75, 2.75, 1.5, 12, 22, 0.955, 'AN-DONG/10A1/10000019_VO_NGOC_PHUONG_LINH_1018_6.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000020', '1017', 9.5, 2.5, 4.0, 3.0, 20, 22, 0.959, 'AN-DONG/10A1/10000020_VU_HOANG_LONG_1017_9.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000021', '1014', 5.6, 2.0, 1.6, 2.0, 13, 22, 0.954, 'AN-DONG/10A1/10000021_TRAN_THANH_MAI_1014_5.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000022', '1012', 4.0, 2.0, 2.0, 0.0, 9, 22, 0.939, 'AN-DONG/10A1/10000022_NGUYEN_TRAN_KIM_MINH_1012_4.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000023', '1012', 3.75, 1.75, 2.0, 0.0, 8, 22, 0.947, 'AN-DONG/10A1/10000023_TRAN_GIANG_MY_1012_3.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000024', '1014', 8.25, 2.75, 2.5, 3.0, 18, 22, 0.957, 'AN-DONG/10A1/10000024_VO_NGUYEN_KIEU_MY_1014_8.25d.pdf', 'VALID', 'AMBIGUOUS_EXAM_CODE; MULTIPLE_MARK; EMPTY_RESPONSE');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000025', '1017', 6.95, 2.75, 2.2, 2.0, 17, 22, 0.953, 'AN-DONG/10A1/10000025_PHAN_NGOC_NGHIA_1017_6.95d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000026', '1017', 3.1, 1.75, 0.85, 0.5, 8, 22, 0.948, 'AN-DONG/10A1/10000026_NGUYEN_THI_BAO_NGOC_1017_3.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000027', '1012', 7.85, 2.5, 2.35, 3.0, 18, 22, 0.953, 'AN-DONG/10A1/10000027_NGUYEN_HOANG_KHOI_NGUYEN_1012_7.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000028', '1013', 6.6, 1.5, 3.1, 2.0, 13, 22, 0.861, 'AN-DONG/10A1/10000028_DUONG_THIEN_PHU_1013_6.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000029', '1011', 4.6, 2.25, 2.35, 0.0, 11, 22, 0.956, 'AN-DONG/10A1/10000029_NGUYEN_NGOC_HONG_PHUC_1011_4.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000030', '1015', 6.0, 2.25, 2.75, 1.0, 13, 22, 0.949, 'AN-DONG/10A1/10000030_BUI_DAO_NGOC_QUY_1015_6.00d.pdf', 'VALID', 'EMPTY_RESPONSE; MULTIPLE_MARK');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000031', '1015', 7.25, 2.5, 3.25, 1.5, 16, 22, 0.954, 'AN-DONG/10A1/10000031_HUYNH_TIEU_PHUOC_SANG_1015_7.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000032', '1013', 4.1, 1.5, 1.1, 1.5, 10, 22, 0.957, 'AN-DONG/10A1/10000032_DANG_THANH_TAI_1013_4.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000033', '1016', 6.0, 2.0, 2.5, 1.5, 12, 22, 0.957, 'AN-DONG/10A1/10000033_HUYNH_TRI_TAI_1016_6.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000034', '1018', 3.35, 1.5, 1.35, 0.5, 7, 22, 0.964, 'AN-DONG/10A1/10000034_CUN_TU_TAM_1018_3.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000035', '1014', 4.1, 1.75, 1.35, 1.0, 9, 22, 0.949, 'AN-DONG/10A1/10000035_TRUONG_LE_THANH_1014_4.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000036', '1016', 3.0, 1.0, 2.0, 0.0, 5, 22, 0.92, 'AN-DONG/10A1/10000036_NGUYEN_HOANG_THU_1016_3.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000037', '1015', 6.75, 2.0, 3.25, 1.5, 14, 22, 0.951, 'AN-DONG/10A1/10000037_DAO_NGOC_THUY_TRANG_1015_6.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000038', '1017', 5.6, 2.0, 1.6, 2.0, 13, 22, 0.952, 'AN-DONG/10A1/10000038_LE_VAN_TRI_1017_5.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000039', '1012', 6.75, 2.25, 3.0, 1.5, 14, 22, 0.935, 'AN-DONG/10A1/10000039_TRAN_QUOC_TRI_1012_6.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000040', '1011', 5.75, 1.25, 3.0, 1.5, 10, 22, 0.953, 'AN-DONG/10A1/10000040_LE_VAN_TUAN_1011_5.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000041', '1012', 3.5, 1.75, 1.75, 0.0, 7, 22, 0.953, 'AN-DONG/10A1/10000041_LE_DO_CAT_TUONG_1012_3.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000042', '1013', 6.0, 2.0, 2.5, 1.5, 12, 22, 0.951, 'AN-DONG/10A1/10000042_PHAM_LE_VY_1013_6.00d.pdf', 'VALID', 'EMPTY_RESPONSE; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000043', '1015', 6.0, 2.0, 2.5, 1.5, 13, 22, 0.945, 'AN-DONG/10A1/10000043_TRAN_THANH_VY_1015_6.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000044', '1014', 4.6, 2.25, 2.35, 0.0, 11, 22, 0.949, 'AN-DONG/10A1/10000044_THAI_KIM_YEN_1014_4.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000001', '1017', 3.35, 1.5, 1.35, 0.5, 8, 22, 0.962, 'AN-DONG/10A1/10000001_NGO_DIEU_AI_1017_3.35d.pdf', 'REPLACED', 'Bài quét trùng (Quét lại từ file 202611020145.pdf#page=1)');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000002', '1011', 4.25, 2.0, 1.25, 1.0, 10, 22, 0.961, 'AN-DONG/10A1/10000002_HUYNH_THE_THIEN_AN_1011_4.25d.pdf', 'REPLACED', 'Bài quét trùng (Quét lại từ file 202611020145.pdf#page=2)');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000003', '1013', 3.6, 1.25, 0.85, 1.5, 8, 22, 0.955, 'AN-DONG/10A1/10000003_CONG_GIA_BAO_1013_4.10d.pdf', 'REPLACED', 'Bài quét trùng (Quét lại từ file 202611020145.pdf#page=3)');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000004', '1018', 3.25, 1.5, 1.75, 0.0, 7, 22, 0.959, 'AN-DONG/10A1/10000004_TANG_GIA_BAO_1018_3.25d.pdf', 'REPLACED', 'Bài quét trùng (Quét lại từ file 202611020145.pdf#page=4)');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000005', '1013', 3.6, 2.0, 1.6, 0.0, 9, 22, 0.943, 'AN-DONG/10A1/10000005_NGUYEN_THANH_DANH_1013_3.60d.pdf', 'REPLACED', 'Bài quét trùng (Quét lại từ file 202611020145.pdf#page=5)');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000006', '1016', 9.75, 2.75, 4.0, 3.0, 21, 22, 0.951, 'AN-DONG/10A1/10000006_OAN_NGOC_BAO_HAN_1016_9.75d.pdf', 'REPLACED', 'Bài quét trùng (Quét lại từ file 202611020145.pdf#page=6)');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000007', '1014', 5.85, 2.5, 1.35, 2.0, 14, 22, 0.96, 'AN-DONG/10A1/10000007_NGUYEN_NGOC_HAN_1014_5.85d.pdf', 'REPLACED', 'Bài quét trùng (Quét lại từ file 202611020145.pdf#page=7)');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000008', '1018', 3.75, 1.75, 2.0, 0.0, 8, 22, 0.956, 'AN-DONG/10A1/10000008_TRAN_GIA_HAN_1018_3.75d.pdf', 'REPLACED', 'Bài quét trùng (Quét lại từ file 202611020145.pdf#page=8)');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000009', '1012', 3.85, 1.75, 1.6, 0.5, 9, 22, 0.952, 'AN-DONG/10A1/10000009_PHAM_MAI_BAO_HIEN_1012_3.85d.pdf', 'REPLACED', 'Bài quét trùng (Quét lại từ file 202611020145.pdf#page=9)');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000010', '1018', 4.6, 1.75, 1.85, 1.0, 10, 22, 0.946, 'AN-DONG/10A1/10000010_TRINH_THANH_HIEN_1018_4.60d.pdf', 'REPLACED', 'Bài quét trùng (Quét lại từ file 202611020145.pdf#page=10)');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000011', '1015', 4.6, 1.25, 1.85, 1.5, 9, 22, 0.949, 'AN-DONG/10A1/10000011_LE_QUOC_HUY_1015_4.60d.pdf', 'REPLACED', 'Bài quét trùng (Quét lại từ file 202611020145.pdf#page=11)');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000012', '1011', 4.0, 1.75, 1.75, 0.5, 8, 22, 0.951, 'AN-DONG/10A1/10000012_PHAN_HUYNH_HUONG_1011_4.00d.pdf', 'REPLACED', 'Bài quét trùng (Quét lại từ file 202611020145.pdf#page=12)');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000013', '1011', 2.5, 1.25, 1.25, 0.0, 5, 22, 0.958, 'AN-DONG/10A1/10000013_TRAN_TAN_KHANG_1011_2.50d.pdf', 'REPLACED', 'Bài quét trùng (Quét lại từ file 202611020145.pdf#page=13)');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000014', '1014', 5.75, 2.0, 2.25, 1.5, 12, 22, 0.95, 'AN-DONG/10A1/10000014_LE_DANG_KHOA_1014_5.75d.pdf', 'REPLACED', 'Bài quét trùng (Quét lại từ file 202611020145.pdf#page=14)');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000015', '1016', 6.75, 2.25, 2.0, 2.5, 15, 22, 0.955, 'AN-DONG/10A1/10000015_NGUYEN_TRUONG_MINH_KHOA_1016_6.75d.pdf', 'REPLACED', 'Bài quét trùng (Quét lại từ file 202611020145.pdf#page=15)');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000016', '1016', 4.5, 1.75, 1.75, 1.0, 10, 22, 0.958, 'AN-DONG/10A1/10000016_NGUYEN_MINH_KHOI_1016_4.50d.pdf', 'REPLACED', 'Bài quét trùng (Quét lại từ file 202611020145.pdf#page=16)');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000017', '1013', 5.75, 2.5, 1.75, 1.5, 13, 22, 0.952, 'AN-DONG/10A1/10000017_DIEP_MY_KIET_1013_5.75d.pdf', 'REPLACED', 'Bài quét trùng (Quét lại từ file 202611020145.pdf#page=17)');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000018', '1011', 5.25, 1.75, 2.5, 1.0, 10, 22, 0.957, 'AN-DONG/10A1/10000018_NGUYEN_HUNG_GIA_KIET_1011_5.25d.pdf', 'REPLACED', 'Bài quét trùng (Quét lại từ file 202611020145.pdf#page=18)');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000019', '1018', 6.0, 1.75, 2.75, 1.5, 12, 22, 0.951, 'AN-DONG/10A1/10000019_VO_NGOC_PHUONG_LINH_1018_6.00d.pdf', 'REPLACED', 'Bài quét trùng (Quét lại từ file 202611020145.pdf#page=19)');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000020', '1017', 9.5, 2.5, 4.0, 3.0, 20, 22, 0.961, 'AN-DONG/10A1/10000020_VU_HOANG_LONG_1017_9.50d.pdf', 'REPLACED', 'Bài quét trùng (Quét lại từ file 202611020145.pdf#page=20)');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000021', '1014', 5.6, 2.0, 1.6, 2.0, 13, 22, 0.957, 'AN-DONG/10A1/10000021_TRAN_THANH_MAI_1014_5.60d.pdf', 'REPLACED', 'Bài quét trùng (Quét lại từ file 202611020145.pdf#page=21)');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000022', '1012', 4.0, 2.0, 2.0, 0.0, 9, 22, 0.946, 'AN-DONG/10A1/10000022_NGUYEN_TRAN_KIM_MINH_1012_4.00d.pdf', 'REPLACED', 'Bài quét trùng (Quét lại từ file 202611020145.pdf#page=22)');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000023', '1012', 3.75, 1.75, 2.0, 0.0, 8, 22, 0.943, 'AN-DONG/10A1/10000023_TRAN_GIANG_MY_1012_3.75d.pdf', 'REPLACED', 'Bài quét trùng (Quét lại từ file 202611020145.pdf#page=23)');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000024', '1014', 8.25, 2.75, 2.5, 3.0, 18, 22, 0.95, 'AN-DONG/10A1/10000024_VO_NGUYEN_KIEU_MY_1014_8.25d.pdf', 'REPLACED', 'Bài quét trùng (Quét lại từ file 202611020145.pdf#page=24)');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000025', '1017', 6.95, 2.75, 2.2, 2.0, 17, 22, 0.961, 'AN-DONG/10A1/10000025_PHAN_NGOC_NGHIA_1017_6.95d.pdf', 'REPLACED', 'Bài quét trùng (Quét lại từ file 202611020145.pdf#page=25)');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000026', '1017', 3.1, 1.75, 0.85, 0.5, 8, 22, 0.963, 'AN-DONG/10A1/10000026_NGUYEN_THI_BAO_NGOC_1017_3.10d.pdf', 'REPLACED', 'Bài quét trùng (Quét lại từ file 202611020145.pdf#page=26)');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000027', '1012', 7.85, 2.5, 2.35, 3.0, 18, 22, 0.946, 'AN-DONG/10A1/10000027_NGUYEN_HOANG_KHOI_NGUYEN_1012_7.85d.pdf', 'REPLACED', 'Bài quét trùng (Quét lại từ file 202611020145.pdf#page=27)');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000028', '1013', 6.6, 1.5, 3.1, 2.0, 13, 22, 0.953, 'AN-DONG/10A1/10000028_DUONG_THIEN_PHU_1013_6.60d.pdf', 'REPLACED', 'Bài quét trùng (Quét lại từ file 202611020145.pdf#page=28)');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000029', '1011', 4.6, 2.25, 2.35, 0.0, 11, 22, 0.964, 'AN-DONG/10A1/10000029_NGUYEN_NGOC_HONG_PHUC_1011_4.60d.pdf', 'REPLACED', 'Bài quét trùng (Quét lại từ file 202611020145.pdf#page=29)');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000030', '1015', 6.0, 2.25, 2.75, 1.0, 13, 22, 0.945, 'AN-DONG/10A1/10000030_BUI_DAO_NGOC_QUY_1015_6.00d.pdf', 'REPLACED', 'Bài quét trùng (Quét lại từ file 202611020145.pdf#page=30)');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000031', '1015', 7.25, 2.5, 3.25, 1.5, 16, 22, 0.949, 'AN-DONG/10A1/10000031_HUYNH_TIEU_PHUOC_SANG_1015_7.25d.pdf', 'REPLACED', 'Bài quét trùng (Quét lại từ file 202611020145.pdf#page=31)');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000032', '1013', 4.1, 1.5, 1.1, 1.5, 10, 22, 0.955, 'AN-DONG/10A1/10000032_DANG_THANH_TAI_1013_4.10d.pdf', 'REPLACED', 'Bài quét trùng (Quét lại từ file 202611020145.pdf#page=32)');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000033', '1016', 6.0, 2.0, 2.5, 1.5, 12, 22, 0.957, 'AN-DONG/10A1/10000033_HUYNH_TRI_TAI_1016_6.00d.pdf', 'REPLACED', 'Bài quét trùng (Quét lại từ file 202611020145.pdf#page=33)');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000034', '1018', 3.35, 1.5, 1.35, 0.5, 7, 22, 0.952, 'AN-DONG/10A1/10000034_CUN_TU_TAM_1018_3.35d.pdf', 'REPLACED', 'Bài quét trùng (Quét lại từ file 202611020145.pdf#page=34)');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '', '', 0.0, 0.0, 0.0, 0.0, 0, 22, 0.0, '', 'FLAG_REVIEW', 'REJECT_ALIGNMENT: Tỷ lệ phối cảnh (1.85) lệch quá mức so với chuẩn A4 (1.414).; Chưa nhận diện được SBD; Chưa nhận diện được Mã đề');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000036', '1016', 3.0, 1.0, 2.0, 0.0, 5, 22, 0.943, 'AN-DONG/10A1/10000036_NGUYEN_HOANG_THU_1016_3.00d.pdf', 'REPLACED', 'Bài quét trùng (Quét lại từ file 202611020145.pdf#page=36)');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000039', '1012', 6.75, 2.25, 3.0, 1.5, 14, 22, 0.957, 'AN-DONG/10A1/10000039_TRAN_QUOC_TRI_1012_6.75d.pdf', 'REPLACED', 'Bài quét trùng (Quét lại từ file 202611020145.pdf#page=39)');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000040', '1011', 5.75, 1.25, 3.0, 1.5, 10, 22, 0.96, 'AN-DONG/10A1/10000040_LE_VAN_TUAN_1011_5.75d.pdf', 'REPLACED', 'Bài quét trùng (Quét lại từ file 202611020145.pdf#page=40)');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000038', '1017', 5.6, 2.0, 1.6, 2.0, 13, 22, 0.946, 'AN-DONG/10A1/10000038_LE_VAN_TRI_1017_5.60d.pdf', 'REPLACED', 'Bài quét trùng (Quét lại từ file 202611020145.pdf#page=38)');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000041', '1012', 3.5, 1.75, 1.75, 0.0, 7, 22, 0.963, 'AN-DONG/10A1/10000041_LE_DO_CAT_TUONG_1012_3.50d.pdf', 'REPLACED', 'Bài quét trùng (Quét lại từ file 202611020145.pdf#page=41)');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000042', '1013', 6.0, 2.0, 2.5, 1.5, 12, 22, 0.963, 'AN-DONG/10A1/10000042_PHAM_LE_VY_1013_6.00d.pdf', 'REPLACED', 'Bài quét trùng (Quét lại từ file 202611020145.pdf#page=42)');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000043', '1015', 6.0, 2.0, 2.5, 1.5, 13, 22, 0.946, 'AN-DONG/10A1/10000043_TRAN_THANH_VY_1015_6.00d.pdf', 'REPLACED', 'Bài quét trùng (Quét lại từ file 202611020145.pdf#page=43)');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000044', '1014', 4.6, 2.25, 2.35, 0.0, 11, 22, 0.96, 'AN-DONG/10A1/10000044_THAI_KIM_YEN_1014_4.60d.pdf', 'REPLACED', 'Bài quét trùng (Quét lại từ file 202611020145.pdf#page=44)');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '10000037', '1015', 6.25, 2.0, 3.25, 1.0, 13, 22, 0.955, 'AN-DONG/10A1/10000037_DAO_NGOC_THUY_TRANG_1015_6.75d.pdf', 'REPLACED', 'Bài quét trùng (Quét lại từ file 202611020145.pdf#page=37)');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000161', '1111', 9.75, 2.75, 4.0, 3.0, 21, 22, 0.962, 'AN-DONG/11A5/11000161_TRANG_THIEN_BAO_1111_9.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000162', '1112', 2.6, 1.5, 0.6, 0.5, 7, 22, 0.957, 'AN-DONG/11A5/11000162_TRAN_PHOI_DUNG_1112_2.60d.pdf', 'VALID', 'EMPTY_RESPONSE; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000163', '1113', 5.85, 2.5, 1.35, 2.0, 14, 22, 0.96, 'AN-DONG/11A5/11000163_NGO_HUYNH_GIA_HAN_1113_5.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000164', '1114', 3.45, 1.0, 0.95, 1.5, 7, 22, 0.959, 'AN-DONG/11A5/11000164_HUYNH_TRAN_HIEU_HIEN_1114_3.45d.pdf', 'VALID', 'EMPTY_RESPONSE; SLOT_CONFLICT; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000165', '1115', 9.25, 2.75, 3.5, 3.0, 20, 22, 0.963, 'AN-DONG/11A5/11000165_BUI_NGOC_HIEU_1115_9.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000166', '1116', 6.0, 1.75, 1.75, 2.5, 12, 22, 0.951, 'AN-DONG/11A5/11000166_TO_MINH_HOANG_1116_6.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000167', '1117', 3.6, 1.75, 1.35, 0.5, 8, 22, 0.963, 'AN-DONG/11A5/11000167_NGUYEN_MINH_HUY_1117_3.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000169', '1118', 1.45, 0.75, 0.7, 0.0, 3, 22, 0.964, 'AN-DONG/11A5/11000169_NGUYEN_TUAN_KHANG_1118_1.45d.pdf', 'VALID', 'Khôi phục kết quả đã được thầy xác nhận (trước lần chấm lại 07/11 10:12) – 2026-11-07 12:57:43');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000168', '1111', 6.85, 2.25, 2.1, 2.5, 15, 22, 0.941, 'AN-DONG/11A5/11000168_NGUYEN_TUAN_KHANG_1111_6.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000170', '1112', 6.5, 2.25, 1.75, 2.5, 14, 22, 0.952, 'AN-DONG/11A5/11000170_CHAU_TIEU_KIEU_1112_6.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000171', '1113', 7.35, 2.25, 2.6, 2.5, 16, 22, 0.953, 'AN-DONG/11A5/11000171_NGUYEN_THIEN_KIM_1113_7.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000172', '1114', 5.75, 2.0, 1.75, 2.0, 12, 22, 0.955, 'AN-DONG/11A5/11000172_LY_THU_KY_1114_5.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000173', '1115', 6.75, 2.5, 1.75, 2.5, 15, 22, 0.957, 'AN-DONG/11A5/11000173_NGUYEN_NGOC_GIA_LINH_1115_6.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000174', '1116', 5.0, 1.5, 1.5, 2.0, 10, 22, 0.962, 'AN-DONG/11A5/11000174_LUONG_HUU_MINH_1116_5.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000175', '1117', 5.0, 1.75, 1.25, 2.0, 11, 22, 0.95, 'AN-DONG/11A5/11000175_NGUYEN_DO_QUOC_MINH_1117_5.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000176', '1118', 7.75, 2.25, 2.5, 3.0, 16, 22, 0.952, 'AN-DONG/11A5/11000176_PHAM_QUOC_MINH_1118_7.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000177', '1111', 5.25, 2.0, 1.75, 1.5, 12, 22, 0.949, 'AN-DONG/11A5/11000177_PHAM_THUY_NGA_1111_5.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000178', '1112', 4.0, 1.25, 1.25, 1.5, 8, 22, 0.97, 'AN-DONG/11A5/11000178_VO_THI_THANH_NGAN_1112_4.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000179', '1113', 7.75, 3.0, 2.25, 2.5, 18, 22, 0.947, 'AN-DONG/11A5/11000179_HO_NGUYEN_BAO_NGHI_1113_7.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000180', '1114', 5.25, 2.0, 1.25, 2.0, 12, 22, 0.945, 'AN-DONG/11A5/11000180_NGUYEN_HOANG_BAO_NGOC_1114_5.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000181', '1115', 7.5, 2.5, 3.0, 2.0, 16, 22, 0.958, 'AN-DONG/11A5/11000181_NGUYEN_THI_ANH_NGUYEN_1115_7.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000182', '1116', 4.85, 1.75, 0.6, 2.5, 12, 22, 0.956, 'AN-DONG/11A5/11000182_TRAN_DINH_NGUYEN_1116_4.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000183', '1117', 8.75, 2.75, 3.5, 2.5, 19, 22, 0.953, 'AN-DONG/11A5/11000183_HA_TAN_PHAT_1117_8.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000184', '1118', 2.25, 0.75, 1.5, 0.0, 3, 22, 0.954, 'AN-DONG/11A5/11000184_NGUYEN_HUYNH_GIA_PHUC_1118_2.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000185', '1111', 4.6, 1.5, 1.1, 2.0, 10, 22, 0.959, 'AN-DONG/11A5/11000185_NGUYEN_LE_NHU_QUYNH_1111_4.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000186', '1112', 7.5, 1.75, 2.75, 3.0, 15, 22, 0.952, 'AN-DONG/11A5/11000186_HUYNH_BOI_SAN_1112_7.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000187', '1113', 8.0, 2.25, 2.75, 3.0, 17, 22, 0.956, 'AN-DONG/11A5/11000187_LAI_VAN_TAM_1113_8.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000188', '1114', 5.35, 2.25, 2.1, 1.0, 12, 22, 0.948, 'AN-DONG/11A5/11000188_TRAN_VO_THANH_THANH_1114_5.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000189', '1115', 7.25, 2.0, 2.75, 2.5, 15, 22, 0.969, 'AN-DONG/11A5/11000189_DIEP_PHUONG_THAO_1115_7.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000190', '1116', 3.75, 1.75, 1.5, 0.5, 8, 22, 0.954, 'AN-DONG/11A5/11000190_SAM_QUOC_THAO_1116_3.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000191', '1117', 8.85, 2.75, 3.1, 3.0, 20, 22, 0.949, 'AN-DONG/11A5/11000191_PHAM_NGO_HONG_THAM_1117_8.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000192', '1118', 6.0, 2.25, 1.75, 2.0, 13, 22, 0.956, 'AN-DONG/11A5/11000192_PHAN_LE_BAO_TRAN_1118_6.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000193', '1111', 9.25, 2.75, 3.5, 3.0, 20, 22, 0.958, 'AN-DONG/11A5/11000193_LE_DINH_TRI_1111_9.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000194', '1112', 1.6, 0.75, 0.85, 0.0, 3, 22, 0.943, 'AN-DONG/11A5/11000194_LY_MINH_TRUONG_1112_1.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000195', '1113', 8.75, 2.75, 3.5, 2.5, 19, 22, 0.959, 'AN-DONG/11A5/11000195_TRAN_NGOC_TUONG_VY_1113_8.75d.pdf', 'VALID', 'EMPTY_RESPONSE; MULTIPLE_MARK');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000196', '1114', 6.85, 1.75, 2.6, 2.5, 14, 22, 0.957, 'AN-DONG/11A5/11000196_TRAN_TRUC_VY_1114_6.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000197', '1115', 7.5, 2.0, 3.0, 2.5, 15, 22, 0.956, 'AN-DONG/11A5/11000197_VO_TUONG_VY_1115_7.50d.pdf', 'VALID', 'Khôi phục kết quả đã được thầy xác nhận (trước lần chấm lại 07/11 10:12) – 2026-11-07 12:57:43');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000198', '1116', 6.75, 1.75, 2.5, 2.5, 13, 22, 0.958, 'AN-DONG/11A5/11000198_NGUYEN_THI_NGOC_XUAN_1116_6.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000199', '1117', 3.0, 1.5, 1.5, 0.0, 6, 22, 0.951, 'AN-DONG/11A5/11000199_LE_LAM_NHU_Y_1117_3.00d.pdf', 'VALID', 'EMPTY_RESPONSE; SLOT_CONFLICT; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000200', '1118', 2.0, 1.0, 1.0, 0.0, 4, 22, 0.95, 'AN-DONG/11A5/11000200_TRUONG_NHU_Y_1118_2.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000122', '1118', 6.85, 2.25, 3.1, 1.5, 15, 22, 0.967, 'AN-DONG/11A4/11000122_TRAN_NGOC_TRAM_ANH_1118_6.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000123', '1111', 5.35, 1.75, 2.1, 1.5, 11, 22, 0.961, 'AN-DONG/11A4/11000123_PHUONG_THI_NGOC_ANH_1111_5.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000124', '1118', 4.85, 1.75, 2.1, 1.0, 10, 22, 0.949, 'AN-DONG/11A4/11000124_HUYNH_DANG_THIEN_AN_1118_4.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000125', '1111', 4.85, 1.75, 1.1, 2.0, 12, 22, 0.96, 'AN-DONG/11A4/11000125_DUONG_GIA_BAO_1111_4.85d.pdf', 'VALID', 'AMBIGUOUS_EXAM_CODE; MULTIPLE_MARK; EMPTY_RESPONSE');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000126', '1112', 5.0, 1.0, 1.5, 2.5, 9, 22, 0.951, 'AN-DONG/11A4/11000126_LE_HOANG_QUOC_BAO_1112_5.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000127', '1117', 4.0, 1.25, 1.75, 1.0, 8, 22, 0.953, 'AN-DONG/11A4/11000127_PHAM_MAI_GIA_BAO_1117_4.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000128', '1112', 3.25, 0.75, 1.5, 1.0, 5, 22, 0.951, 'AN-DONG/11A4/11000128_NGUYEN_THANH_DAT_1112_3.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000129', '1117', 10.0, 3.0, 4.0, 3.0, 22, 22, 0.948, 'AN-DONG/11A4/11000129_NGUYEN_HOAI_DUC_1117_10.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000130', '1112', 4.75, 1.5, 1.25, 2.0, 10, 22, 0.954, 'AN-DONG/11A4/11000130_NGUYEN_NGOC_QUYNH_GIAO_1112_4.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000131', '1113', 4.85, 1.75, 1.1, 2.0, 11, 22, 0.956, 'AN-DONG/11A4/11000131_HUYNH_PHU_HAI_1113_4.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000132', '1116', 7.25, 1.5, 3.25, 2.5, 14, 22, 0.954, 'AN-DONG/11A4/11000132_NGUYEN_HUYNH_KIM_HANG_1116_7.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000133', '1113', 8.5, 2.0, 4.0, 2.5, 17, 22, 0.945, 'AN-DONG/11A4/11000133_PHAN_NGOC_HAN_1113_8.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000134', '1116', 1.45, 0.5, 0.95, 0.0, 2, 22, 0.957, 'AN-DONG/11A4/11000134_TRAN_GIA_HAN_1116_1.45d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000135', '1113', 5.0, 2.0, 2.5, 0.5, 10, 22, 0.963, 'AN-DONG/11A4/11000135_VU_NGOC_HAN_1113_5.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000136', '1114', 1.35, 0.25, 1.1, 0.0, 1, 22, 0.957, 'AN-DONG/11A4/11000136_HA_TAN_HIEP_1114_1.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000137', '1115', 8.25, 2.5, 3.25, 2.5, 18, 22, 0.953, 'AN-DONG/11A4/11000137_NGUYEN_THI_MINH_HIEU_1115_8.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000138', '1114', 1.95, 1.0, 0.95, 0.0, 4, 22, 0.951, 'AN-DONG/11A4/11000138_NGUYEN_TRUNG_HIEU_1114_1.95d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000139', '1115', 4.95, 1.75, 1.2, 2.0, 11, 22, 0.959, 'AN-DONG/11A4/11000139_NGUYEN_NGOC_HUY_1115_4.95d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000140', '1114', 6.0, 1.75, 2.25, 2.0, 12, 22, 0.952, 'AN-DONG/11A4/11000140_TRAN_DANG_KHOA_1114_6.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000141', '1115', 4.25, 0.75, 1.5, 2.0, 7, 22, 0.963, 'AN-DONG/11A4/11000141_NGUYEN_THI_BICH_NGAN_1115_4.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000142', '1113', 5.2, 2.0, 1.2, 2.0, 12, 22, 0.962, 'AN-DONG/11A4/11000142_TRUONG_TRONG_NGHIA_1113_5.20d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000144', '1114', 5.25, 1.5, 2.75, 1.0, 10, 22, 0.957, 'AN-DONG/11A4/11000144_VONG_CAM_NGUYEN_1114_5.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000145', '1115', 4.7, 1.5, 1.2, 2.0, 11, 22, 0.958, 'AN-DONG/11A4/11000145_NGUYEN_NGOC_KHA_NHI_1115_4.70d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000146', '1116', 4.05, 1.0, 0.55, 2.5, 9, 22, 0.951, 'AN-DONG/11A4/11000146_NGUYEN_PHUONG_NHI_1116_4.05d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000147', '1113', 5.25, 1.0, 1.75, 2.5, 10, 22, 0.954, 'AN-DONG/11A4/11000147_HO_THAI_PHONG_1113_5.25d.pdf', 'VALID', 'MULTIPLE_MARK; EMPTY_RESPONSE');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000148', '1116', 2.2, 0.75, 0.95, 0.5, 4, 22, 0.956, 'AN-DONG/11A4/11000148_LE_VAN_PHONG_1116_2.20d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000149', '1114', 6.75, 2.0, 1.75, 3.0, 14, 22, 0.958, 'AN-DONG/11A4/11000149_NGUYEN_VAN_HOAN_PHUOC_1114_6.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000150', '1116', 2.95, 0.5, 0.95, 1.5, 5, 22, 0.965, 'AN-DONG/11A4/11000150_TRUONG_THANH_PHUONG_1116_2.95d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000151', '1117', 3.75, 1.25, 0.5, 2.0, 9, 22, 0.955, 'AN-DONG/11A4/11000151_VU_THANH_QUY_1117_3.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000152', '1112', 3.05, 1.5, 0.55, 1.0, 8, 22, 0.952, 'AN-DONG/11A4/11000152_PHAM_CHI_THIEN_1112_3.05d.pdf', 'VALID', 'AMBIGUOUS_EXAM_CODE; MULTIPLE_MARK; EMPTY_RESPONSE; SLOT_CONFLICT; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000153', '1117', 6.35, 1.75, 2.1, 2.5, 13, 22, 0.955, 'AN-DONG/11A4/11000153_DOAN_HUYNH_TIEN_THINH_1117_6.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000154', '1112', 1.85, 1.0, 0.85, 0.0, 4, 22, 0.953, 'AN-DONG/11A4/11000154_HUYNH_DUC_THINH_1112_1.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000155', '1117', 3.0, 1.25, 1.25, 0.5, 6, 22, 0.949, 'AN-DONG/11A4/11000155_QUACH_PHUNG_NHU_THUY_1117_3.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000156', '1118', 2.45, 1.0, 1.45, 0.0, 5, 22, 0.95, 'AN-DONG/11A4/11000156_NGUYEN_PHUONG_TOAN_1118_2.45d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000157', '1111', 6.75, 1.75, 3.0, 2.0, 13, 22, 0.957, 'AN-DONG/11A4/11000157_LE_NGUYEN_HOANG_TRINH_1111_6.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000158', '1118', 3.95, 1.0, 1.45, 1.5, 8, 22, 0.952, 'AN-DONG/11A4/11000158_TRAN_GIA_TUAN_1118_3.95d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000159', '1111', 6.0, 1.0, 2.0, 3.0, 11, 22, 0.959, 'AN-DONG/11A4/11000159_HUYNH_MAI_THANH_VAN_1111_6.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000160', '1118', 9.0, 2.5, 4.0, 2.5, 19, 22, 0.947, 'AN-DONG/11A4/11000160_NGUYEN_PHI_YEN_1118_9.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000080', '1111', 2.35, 1.5, 0.85, 0.0, 6, 22, 0.953, 'AN-DONG/11A3/11000080_NGUYEN_KHANH_CHAU_1111_2.35d.pdf', 'VALID', 'AMBIGUOUS_EXAM_CODE; MULTIPLE_MARK; EMPTY_RESPONSE');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000081', '1118', 3.0, 1.25, 1.25, 0.5, 6, 22, 0.955, 'AN-DONG/11A3/11000081_TRIEU_MY_CHI_1118_3.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000082', '1111', 3.0, 1.25, 1.25, 0.5, 6, 22, 0.96, 'AN-DONG/11A3/11000082_NGUYEN_TUAN_DUNG_1111_3.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000083', '1118', 2.75, 1.75, 1.0, 0.0, 7, 22, 0.953, 'AN-DONG/11A3/11000083_NGUYEN_KHAC_TRI_DAT_1118_2.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000084', '1111', 2.75, 1.5, 1.25, 0.0, 6, 22, 0.969, 'AN-DONG/11A3/11000084_LE_CAM_HAO_1111_2.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000085', '1118', 5.75, 1.5, 2.25, 2.0, 11, 22, 0.952, 'AN-DONG/11A3/11000085_TRAN_THI_NGOC_HAN_1118_5.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000086', '1117', 4.5, 1.75, 2.25, 0.5, 9, 22, 0.962, 'AN-DONG/11A3/11000086_LE_KIM_HUE_1117_4.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000087', '1118', 4.5, 1.25, 2.25, 1.0, 8, 22, 0.964, 'AN-DONG/11A3/11000087_NGUYEN_DUY_BAO_HUY_1118_4.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000088', '1117', 4.6, 1.0, 2.1, 1.5, 8, 22, 0.96, 'AN-DONG/11A3/11000088_PHAN_NGUYEN_TIEN_HUNG_1117_4.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000089', '1112', 2.6, 1.75, 0.85, 0.0, 7, 22, 0.959, 'AN-DONG/11A3/11000089_HO_PHUC_KHANG_1112_2.60d.pdf', 'VALID', 'Khôi phục kết quả đã được thầy xác nhận (trước lần chấm lại 07/11 10:12) – 2026-11-07 12:57:43');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000090', '1117', 4.75, 1.25, 1.5, 2.0, 9, 22, 0.959, 'AN-DONG/11A3/11000090_HUYNH_TRONG_KHANG_1117_4.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000091', '1112', 6.35, 2.25, 2.6, 1.5, 14, 22, 0.955, 'AN-DONG/11A3/11000091_LAI_VO_MY_LINH_1112_6.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000092', '1117', 1.85, 0.75, 1.1, 0.0, 3, 22, 0.952, 'AN-DONG/11A3/11000092_LE_NGUYEN_TRANG_LINH_1117_1.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000093', '1112', 3.2, 1.75, 1.45, 0.0, 8, 22, 0.955, 'AN-DONG/11A3/11000093_TRAN_NGOC_TRUC_LY_1112_3.20d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000094', '1113', 1.85, 0.75, 1.1, 0.0, 3, 22, 0.9, 'AN-DONG/11A3/11000094_QUAN_AN_TO_MAN_1113_1.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000095', '1116', 3.35, 1.25, 0.6, 1.5, 8, 22, 0.959, 'AN-DONG/11A3/11000095_TANG_GIA_MAN_1116_3.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000096', '1113', 8.0, 2.75, 2.75, 2.5, 18, 22, 0.951, 'AN-DONG/11A3/11000096_HUYNH_HAI_MINH_1113_8.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000097', '1116', 2.85, 1.0, 1.35, 0.5, 5, 22, 0.96, 'AN-DONG/11A3/11000097_DUONG_THI_TRA_MY_1116_2.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000098', '1113', 4.6, 1.5, 1.1, 2.0, 10, 22, 0.953, 'AN-DONG/11A3/11000098_LE_MINH_HIEU_NGHIA_1113_4.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000099', '1116', 4.25, 1.25, 2.0, 1.0, 7, 22, 0.955, 'AN-DONG/11A3/11000099_NGAN_HOANG_NHU_NGOC_1116_4.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000100', '1115', 2.5, 1.0, 1.5, 0.0, 4, 22, 0.955, 'AN-DONG/11A3/11000100_NGUYEN_HO_BAO_NGOC_1115_2.50d.pdf', 'VALID', 'EMPTY_RESPONSE; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000101', '1114', 1.8, 1.0, 0.8, 0.0, 4, 22, 0.956, 'AN-DONG/11A3/11000101_PHAN_THIEN_NHAN_1114_1.80d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000102', '1115', 5.0, 1.75, 1.25, 2.0, 11, 22, 0.961, 'AN-DONG/11A3/11000102_DANG_CUONG_PHAT_1115_5.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000103', '1114', 3.85, 1.0, 0.85, 2.0, 8, 22, 0.95, 'AN-DONG/11A3/11000103_TAN_VI_PHONG_1114_3.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000104', '1115', 7.0, 3.0, 2.0, 2.0, 17, 22, 0.952, 'AN-DONG/11A3/11000104_DINH_VO_HOANG_PHUC_1115_7.00d.pdf', 'VALID', 'Giáo viên duyệt tay: phần 1 câu 11 có tô B -> Điểm 6.00đ; phần 3 câu 6 ô cam không tô');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000105', '1114', 2.75, 1.5, 1.25, 0.0, 6, 22, 0.953, 'AN-DONG/11A3/11000105_TRINH_VI_PHUC_1114_2.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000106', '1115', 4.1, 1.5, 1.6, 1.0, 9, 22, 0.958, 'AN-DONG/11A3/11000106_PHUNG_XUAN_QUOC_1115_4.10d.pdf', 'VALID', 'EMPTY_RESPONSE; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000107', '1114', 3.0, 1.75, 1.25, 0.0, 7, 22, 0.947, 'AN-DONG/11A3/11000107_PHAN_PHU_QUY_1114_3.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000108', '1111', 6.35, 2.75, 1.6, 2.0, 16, 22, 0.958, 'AN-DONG/11A3/11000108_NGUYEN_NGOC_NHU_QUYNH_1111_6.35d.pdf', 'VALID', 'EMPTY_RESPONSE; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000109', '1118', 3.1, 0.75, 1.85, 0.5, 5, 22, 0.959, 'AN-DONG/11A3/11000109_CHE_THANH_SON_1118_3.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000110', '1111', 6.0, 1.75, 1.75, 2.5, 13, 22, 0.949, 'AN-DONG/11A3/11000110_TANG_TRAN_QUANG_THANG_1111_6.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000111', '1113', 4.75, 1.75, 2.0, 1.0, 10, 22, 0.953, 'AN-DONG/11A3/11000111_NGUYEN_THI_KIEU_THI_1113_4.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000112', '1116', 3.6, 1.25, 1.85, 0.5, 7, 22, 0.96, 'AN-DONG/11A3/11000112_NGHIEM_Y_THUAN_1116_3.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000113', '1113', 4.2, 1.25, 0.95, 2.0, 9, 22, 0.948, 'AN-DONG/11A3/11000113_TO_ANH_THU_1113_4.20d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000114', '1115', 4.0, 1.25, 1.75, 1.0, 8, 22, 0.957, 'AN-DONG/11A3/11000114_TRAN_MINH_TRI_1115_4.00d.pdf', 'VALID', 'MULTIPLE_MARK; EMPTY_RESPONSE');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000115', '1116', 3.45, 1.25, 0.7, 1.5, 8, 22, 0.954, 'AN-DONG/11A3/11000115_LE_QUANG_TRUONG_1116_3.45d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000116', '1118', 1.7, 1.25, 0.45, 0.0, 5, 22, 0.964, 'AN-DONG/11A3/11000116_VO_NGUYEN_CAT_TUONG_1118_1.70d.pdf', 'VALID', 'EMPTY_RESPONSE; FAINT_SINGLE_MARK; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000117', '1112', 2.5, 1.25, 1.25, 0.0, 5, 22, 0.959, 'AN-DONG/11A3/11000117_LUONG_THUY_VAN_1112_2.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000118', '1117', 3.35, 1.5, 0.85, 1.0, 8, 22, 0.951, 'AN-DONG/11A3/11000118_LE_HOANG_PHUONG_VY_1117_3.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000119', '1112', 1.35, 0.25, 1.1, 0.0, 1, 22, 0.957, 'AN-DONG/11A3/11000119_MA_NGOC_VY_1112_1.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000120', '1114', 2.75, 1.25, 1.5, 0.0, 5, 22, 0.952, 'AN-DONG/11A3/11000120_NGUYEN_TRAN_THUY_VY_1114_2.75d.pdf', 'VALID', 'MULTIPLE_MARK; EMPTY_RESPONSE');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000041', '1112', 3.6, 1.75, 1.35, 0.5, 9, 22, 0.965, 'AN-DONG/11A2/11000041_NGUYEN_NGOC_HOANG_AN_1112_3.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000042', '1111', 9.75, 2.75, 4.0, 3.0, 21, 22, 0.965, 'AN-DONG/11A2/11000042_BUI_HOANG_ANH_1111_9.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000043', '1111', 2.95, 1.0, 0.95, 1.0, 6, 22, 0.954, 'AN-DONG/11A2/11000043_CHIEU_TUYET_ANH_1111_2.95d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000044', '1111', 3.6, 1.5, 1.6, 0.5, 7, 22, 0.956, 'AN-DONG/11A2/11000044_NGUYEN_HOANG_QUOC_BAO_1111_3.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000045', '1116', 6.5, 2.0, 2.5, 2.0, 13, 22, 0.964, 'AN-DONG/11A2/11000045_PHAN_DIEN_GIA_BAO_1116_6.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000046', '1118', 6.25, 2.0, 2.75, 1.5, 13, 22, 0.958, 'AN-DONG/11A2/11000046_THACH_MINH_CHAU_1118_6.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000047', '1117', 5.6, 2.0, 1.1, 2.5, 13, 22, 0.957, 'AN-DONG/11A2/11000047_TRUONG_THI_NGOC_HA_1117_5.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000048', '1115', 6.35, 1.75, 1.6, 3.0, 14, 22, 0.949, 'AN-DONG/11A2/11000048_HA_QUAN_HAI_1115_6.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000049', '1116', 7.5, 2.0, 3.5, 2.0, 15, 22, 0.958, 'AN-DONG/11A2/11000049_TRAN_GIA_HAN_1116_7.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000050', '1114', 6.0, 2.25, 1.75, 2.0, 13, 22, 0.958, 'AN-DONG/11A2/11000050_PHAN_NGOC_LAN_1114_6.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000051', '1118', 7.25, 2.5, 2.75, 2.0, 16, 22, 0.952, 'AN-DONG/11A2/11000051_DO_HAI_LAM_1118_7.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000052', '1112', 4.85, 1.25, 1.6, 2.0, 10, 22, 0.955, 'AN-DONG/11A2/11000052_NGUYEN_VY_LINH_1112_4.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000053', '1112', 8.5, 2.75, 2.75, 3.0, 19, 22, 0.956, 'AN-DONG/11A2/11000053_LE_HOANG_TRUC_MAI_1112_8.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000054', '1117', 5.5, 1.5, 1.0, 3.0, 12, 22, 0.957, 'AN-DONG/11A2/11000054_TRAN_HAI_MINH_1117_5.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000056', '1113', 6.5, 2.5, 1.5, 2.5, 15, 22, 0.95, 'AN-DONG/11A2/11000056_LE_TRAN_DIEM_MY_1113_6.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000057', '1118', 2.95, 1.0, 0.45, 1.5, 7, 22, 0.962, 'AN-DONG/11A2/11000057_NGUYEN_HOAI_NAM_1118_2.95d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000058', '1116', 8.5, 2.5, 3.0, 3.0, 18, 22, 0.965, 'AN-DONG/11A2/11000058_DANG_THI_THANH_NHAN_1116_8.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000059', '1114', 4.75, 1.75, 1.5, 1.5, 10, 22, 0.96, 'AN-DONG/11A2/11000059_NGUYEN_NGOC_BAO_NHI_1114_4.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000060', '1114', 5.5, 1.75, 1.75, 2.0, 11, 22, 0.956, 'AN-DONG/11A2/11000060_VO_QUYNH_NHU_1114_5.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000061', '1115', 8.75, 2.75, 3.5, 2.5, 19, 22, 0.956, 'AN-DONG/11A2/11000061_PHAM_NGUYEN_DUY_PHUOC_1115_8.75d.pdf', 'VALID', 'MULTIPLE_MARK; EMPTY_RESPONSE');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000062', '1115', 9.25, 2.75, 4.0, 2.5, 20, 22, 0.953, 'AN-DONG/11A2/11000062_NGUYEN_THAI_MAI_PHUONG_1115_9.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000063', '1118', 7.5, 2.75, 1.75, 3.0, 17, 22, 0.956, 'AN-DONG/11A2/11000063_TA_TU_PHUONG_1118_7.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000064', '1117', 6.6, 2.75, 1.35, 2.5, 16, 22, 0.958, 'AN-DONG/11A2/11000064_TRAN_MINH_QUANG_1117_6.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000065', '1115', 6.5, 2.5, 1.5, 2.5, 15, 22, 0.963, 'AN-DONG/11A2/11000065_LY_ANH_QUYEN_1115_6.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000066', '1111', 9.25, 2.75, 4.0, 2.5, 20, 22, 0.956, 'AN-DONG/11A2/11000066_NGUYEN_HUU_TAI_1111_9.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000067', '1117', 9.5, 3.0, 4.0, 2.5, 21, 22, 0.947, 'AN-DONG/11A2/11000067_NGUYEN_NGOC_YEN_THANH_1117_9.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000068', '1111', 8.75, 2.75, 3.5, 2.5, 19, 22, 0.964, 'AN-DONG/11A2/11000068_LUC_PHUONG_THIEN_1111_8.75d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000069', '1118', 5.45, 1.25, 1.7, 2.5, 11, 22, 0.947, 'AN-DONG/11A2/11000069_TRAN_VAN_HUNG_THUAN_1118_5.45d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000070', '1116', 8.25, 2.5, 2.75, 3.0, 18, 22, 0.952, 'AN-DONG/11A2/11000070_NGUYEN_THI_THUY_TIEN_1116_8.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000071', '1112', 7.5, 2.5, 2.0, 3.0, 16, 22, 0.963, 'AN-DONG/11A2/11000071_NGUYEN_TRUNG_TIN_1112_7.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000072', '1113', 7.0, 1.75, 2.25, 3.0, 14, 22, 0.964, 'AN-DONG/11A2/11000072_HUYNH_NGOC_TRAN_1113_7.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000073', '1117', 7.0, 1.5, 3.0, 2.5, 13, 22, 0.958, 'AN-DONG/11A2/11000073_LUONG_LUC_KIET_TUONG_1117_7.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000074', '1112', 6.1, 1.75, 1.85, 2.5, 13, 22, 0.949, 'AN-DONG/11A2/11000074_TRAN_NGOC_SON_VUONG_1112_6.10d.pdf', 'VALID', 'EMPTY_RESPONSE; SLOT_CONFLICT; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000075', '1114', 7.0, 2.25, 1.75, 3.0, 15, 22, 0.943, 'AN-DONG/11A2/11000075_HO_HUYNH_BAO_VY_1114_7.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000076', '1115', 7.25, 2.5, 1.75, 3.0, 16, 22, 0.959, 'AN-DONG/11A2/11000076_LE_THAO_VY_1115_7.25d.pdf', 'VALID', 'EMPTY_RESPONSE; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000077', '1113', 7.5, 2.25, 2.75, 2.5, 16, 22, 0.959, 'AN-DONG/11A2/11000077_NGUYEN_NGOC_THANH_VY_1113_7.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000078', '1113', 6.5, 2.25, 2.75, 1.5, 14, 22, 0.961, 'AN-DONG/11A2/11000078_NGUYEN_NGOC_NHU_Y_1113_6.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000079', '1116', 7.5, 2.0, 3.5, 2.0, 15, 22, 0.953, 'AN-DONG/11A2/11000079_DO_HOANG_YEN_1116_7.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000001', '1113', 6.5, 1.5, 2.5, 2.5, 12, 22, 0.96, 'AN-DONG/11A1/11000001_DO_TRINH_MINH_ANH_1113_6.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000002', '1118', 5.5, 2.0, 2.0, 1.5, 12, 22, 0.946, 'AN-DONG/11A1/11000002_TRUONG_QUYNH_ANH_1118_5.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000003', '1114', 6.85, 2.5, 1.85, 2.5, 16, 22, 0.96, 'AN-DONG/11A1/11000003_HUYNH_THI_CAM_BINH_1114_6.85d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000004', '1112', 8.5, 2.5, 3.5, 2.5, 18, 22, 0.955, 'AN-DONG/11A1/11000004_PHAM_ANH_DUY_1112_8.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000005', '1117', 7.5, 2.5, 3.0, 2.0, 16, 22, 0.959, 'AN-DONG/11A1/11000005_HUYNH_GIA_HAN_1117_7.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000006', '1117', 2.6, 1.0, 1.1, 0.5, 5, 22, 0.968, 'AN-DONG/11A1/11000006_PHAM_HOANG_GIA_HAN_1117_2.60d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000007', '1114', 4.5, 1.0, 2.0, 1.5, 8, 22, 0.952, 'AN-DONG/11A1/11000007_LAI_KIEN_HOA_1114_4.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000008', '1115', 5.0, 1.0, 2.0, 2.0, 9, 22, 0.959, 'AN-DONG/11A1/11000008_PHAM_NHAT_HUY_1115_5.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000009', '1111', 4.25, 1.5, 2.75, 0.0, 8, 22, 0.952, 'AN-DONG/11A1/11000009_DINH_PHUC_KHANG_1111_4.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000010', '1117', 2.35, 1.5, 0.85, 0.0, 6, 22, 0.953, 'AN-DONG/11A1/11000010_NGUYEN_MINH_KHANG_1117_2.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000011', '1112', 3.55, 1.75, 0.8, 1.0, 9, 22, 0.96, 'AN-DONG/11A1/11000011_NGUYEN_THAI_KHANG_1112_3.55d.pdf', 'VALID', 'AMBIGUOUS_STUDENT_ID; MULTIPLE_MARK; EMPTY_RESPONSE');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000012', '1118', 6.25, 2.0, 2.25, 2.0, 13, 22, 0.966, 'AN-DONG/11A1/11000012_MAI_VAN_TUAN_KIET_1118_6.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000013', '1117', 7.35, 2.75, 2.1, 2.5, 17, 22, 0.955, 'AN-DONG/11A1/11000013_TRAN_PHAM_GIA_LINH_1117_7.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000014', '1111', 4.1, 2.25, 1.35, 0.5, 10, 22, 0.971, 'AN-DONG/11A1/11000014_NGUYEN_THI_BICH_LOAN_1111_4.10d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000015', '1112', 6.0, 1.75, 2.75, 1.5, 12, 22, 0.964, 'AN-DONG/11A1/11000015_PHAM_DAO_KIM_NGAN_1112_6.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000016', '1112', 1.0, 0.25, 0.75, 0.0, 1, 22, 0.961, 'AN-DONG/11A1/11000016_LE_MAN_NGHI_1112_1.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000017', '1114', 7.0, 2.25, 2.25, 2.5, 15, 22, 0.956, 'AN-DONG/11A1/11000017_NGUYEN_TRAN_BICH_NGOC_1114_7.00d.pdf', 'VALID', 'EMPTY_RESPONSE; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000018', '1115', 7.0, 2.0, 2.0, 3.0, 14, 22, 0.956, 'AN-DONG/11A1/11000018_VO_TRAN_KIM_NGOC_1115_7.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000019', '1113', 4.25, 1.25, 1.5, 1.5, 8, 22, 0.938, 'AN-DONG/11A1/11000019_SON_KHANH_NHAN_1113_4.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000020', '1111', 3.25, 1.25, 1.5, 0.5, 6, 22, 0.965, 'AN-DONG/11A1/11000020_PHAM_THI_QUYNH_NHU_1111_3.25d.pdf', 'VALID', 'AMBIGUOUS_EXAM_CODE; MULTIPLE_MARK; LOW_MARGIN; EMPTY_RESPONSE');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000021', '1118', 5.75, 2.0, 1.75, 2.0, 13, 22, 0.965, 'AN-DONG/11A1/11000021_FARIDA_NOORISA_1118_5.75d.pdf', 'VALID', 'AMBIGUOUS_STUDENT_ID; LIGHT_MARK; EMPTY_RESPONSE');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000022', '1117', 7.25, 2.5, 2.75, 2.0, 16, 22, 0.966, 'AN-DONG/11A1/11000022_LUU_DINH_PHU_1117_7.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000023', '1118', 2.45, 1.5, 0.95, 0.0, 6, 22, 0.958, 'AN-DONG/11A1/11000023_NGO_HOANG_THANH_PHUC_1118_2.45d.pdf', 'VALID', 'EMPTY_RESPONSE; FAINT_SINGLE_MARK; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000024', '1114', 5.5, 1.5, 1.5, 2.5, 11, 22, 0.955, 'AN-DONG/11A1/11000024_VUU_HUE_QUAN_1114_5.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000025', '1111', 6.75, 2.0, 2.25, 2.5, 14, 22, 0.969, 'AN-DONG/11A1/11000025_CAO_THI_DIEM_QUY_1111_6.75d.pdf', 'VALID', 'EMPTY_RESPONSE; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000026', '1118', 7.25, 2.25, 3.5, 1.5, 15, 22, 0.955, 'AN-DONG/11A1/11000026_NGUYEN_ANH_THU_1118_7.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000027', '1111', 10.0, 3.0, 4.0, 3.0, 22, 22, 0.949, 'AN-DONG/11A1/11000027_TRINH_TRAN_ANH_THU_1111_10.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000028', '1116', 2.35, 0.75, 1.6, 0.0, 3, 22, 0.963, 'AN-DONG/11A1/11000028_TRAN_THANH_TRA_1116_2.35d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000029', '1116', 3.35, 1.0, 0.85, 1.5, 7, 22, 0.962, 'AN-DONG/11A1/11000029_NGUYEN_THI_THUY_TRANG_1116_3.35d.pdf', 'VALID', 'FAINT_SINGLE_MARK; EMPTY_RESPONSE; MULTIPLE_MARK');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000030', '1112', 4.5, 1.5, 2.0, 1.0, 8, 22, 0.949, 'AN-DONG/11A1/11000030_HO_NGUYEN_BAO_TRAN_1112_4.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000031', '1113', 6.5, 2.0, 2.0, 2.5, 13, 22, 0.961, 'AN-DONG/11A1/11000031_HO_THANH_TRUC_1113_6.50d.pdf', 'VALID', 'EMPTY_RESPONSE; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000032', '1115', 5.0, 1.25, 1.25, 2.5, 10, 22, 0.957, 'AN-DONG/11A1/11000032_PHAM_TANG_THANH_TRUC_1115_5.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000033', '1113', 5.25, 1.5, 2.25, 1.5, 10, 22, 0.956, 'AN-DONG/11A1/11000033_TANG_THANH_TRUC_1113_5.25d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000034', '1115', 6.0, 1.5, 2.0, 2.5, 11, 22, 0.955, 'AN-DONG/11A1/11000034_NGUYEN_DUC_TRUNG_1115_6.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000035', '1114', 5.5, 1.75, 2.25, 1.5, 11, 22, 0.954, 'AN-DONG/11A1/11000035_NGUYEN_THANH_TUAN_1114_5.50d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000036', '1116', 7.25, 1.75, 2.5, 3.0, 14, 22, 0.952, 'AN-DONG/11A1/11000036_PHAN_LE_TUONG_VI_1116_7.25d.pdf', 'VALID', 'EMPTY_RESPONSE; NON_CONTIGUOUS');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000037', '1116', 6.5, 2.5, 2.0, 2.0, 15, 22, 0.96, 'AN-DONG/11A1/11000037_DAO_QUANG_VINH_1116_6.50d.pdf', 'VALID', 'EMPTY_RESPONSE; SLOT_CONFLICT; NON_CONTIGUOUS; FAINT_SINGLE_MARK');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000038', '1113', 6.0, 1.75, 2.25, 2.0, 12, 22, 0.953, 'AN-DONG/11A1/11000038_TRAN_HAN_VINH_1113_6.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000039', '1115', 7.0, 1.75, 2.25, 3.0, 14, 22, 0.956, 'AN-DONG/11A1/11000039_NGUYEN_NGOC_HOANG_VY_1115_7.00d.pdf', 'VALID', '');
INSERT OR REPLACE INTO submissions 
            (exam_id, subject_id, student_id, exam_code, total_score, part1_score, part2_score, part3_score, correct_count, total_questions, confidence, pdf_key, status, review_reason)
            VALUES (1, 1, '11000040', '1116', 4.45, 1.5, 1.45, 1.5, 10, 22, 0.951, 'AN-DONG/11A1/11000040_NGUYEN_NGOC_NHU_Y_1116_4.45d.pdf', 'VALID', '');

COMMIT;