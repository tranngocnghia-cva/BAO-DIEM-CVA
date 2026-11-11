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
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24001', '12000001', 'MAI HỒNG AN', '12A1', 'Nữ', '27/02/2009', 'AN-DONG', '24001@ttgdtxcva.edu.vn', '24001', '30ea8588962793026f9eff125a0fa8f893be9fce8f78e48c1949c68e213e6394');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24469', '12000002', 'TO HOÀI ÂN', '12A1', 'Nữ', '08/10/2008', 'AN-DONG', '24469@ttgdtxcva.edu.vn', '24469', '647d2150c7ad0e0c023304525f56e40da0bf8abbb5c98c3ce29df847d830e46c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24002', '12000003', 'LÝ GIA BẢO', '12A1', 'Nam', '15/12/2009', 'AN-DONG', '24002@ttgdtxcva.edu.vn', '24002', 'fd6bef1452726f838f0380136660a969622ace6d87b0e68605f8789f9d1c8198');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24003', '12000004', 'PHAN THIÊN BẢO', '12A1', 'Nam', '17/04/2009', 'AN-DONG', '24003@ttgdtxcva.edu.vn', '24003', '9ec29a329d3817c78cc4f7432a472bb3c21ff3fb451bbccb26a6c14c716f0a36');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24005', '12000005', 'NGUYỄN THỊ NGỌC CHÂU', '12A1', 'Nữ', '19/12/2009', 'AN-DONG', '24005@ttgdtxcva.edu.vn', '24005', 'c43a6a0029bd8d9dc2a91eb7954f5a177bbcac2946da100a74fe791903a69d00');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24006', '12000006', 'PHẠM HỒ MINH CHÍ', '12A1', 'Nam', '08/09/2009', 'AN-DONG', '24006@ttgdtxcva.edu.vn', '24006', '7d84b3ef6ff06a403092af5cbf28b68b1a70687d895af4fff030d5bc632e0944');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24009', '12000007', 'PHÙNG CAO ANH DŨNG', '12A1', 'Nam', '12/03/2009', 'AN-DONG', '24009@ttgdtxcva.edu.vn', '24009', '664e154c2648299a42d2a6a82508cda9dffaea55455870f835b02d14f8b88bc4');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24007', '12000008', 'PHẠM XUÂN ĐÀO', '12A1', 'Nữ', '22/01/2009', 'AN-DONG', '24007@ttgdtxcva.edu.vn', '24007', 'ab7e9c59a8e941b8ca562c7867e5e198a45900b53a3dcb26f99f4506fc80c844');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24008', '12000009', 'DANH NGUYỄN HOÀN ĐẠT', '12A1', 'Nam', '23/01/2009', 'AN-DONG', '24008@ttgdtxcva.edu.vn', '24008', '4045cd60ea092ab44eb8515c89f6ac8eec39da75962da4ad85604fc221922a49');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26040', '10000001', 'NGÔ DIỆU ÁI', '10A1', 'Nữ', '14/04/2011', 'AN-DONG', '26040@ttgdtxcva.edu.vn', '26040', '78198f2802f6fc7531f255fbfa1f7895dc602acd4abf8b64fae10e05d772c13a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26041', '10000002', 'HUỲNH THẾ THIÊN ÂN', '10A1', 'Nam', '03/04/2010', 'AN-DONG', '26041@ttgdtxcva.edu.vn', '26041', '91eba8e95e57ec8592050106f04d3aa92b1798e0cdccb74914aff552cbcb5536');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26043', '10000003', 'CÔNG GIA BẢO', '10A1', 'Nam', '07/12/2011', 'AN-DONG', '26043@ttgdtxcva.edu.vn', '26043', '051dce5725a428b33f7f0db618a9016e901b23374f891a867fe84f19f7cb851c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26042', '10000004', 'TĂNG GIA BẢO', '10A1', 'Nam', '24/08/2011', 'AN-DONG', '26042@ttgdtxcva.edu.vn', '26042', '2c5a5f3c49a79631d8c032fd42ec4cb74154c33f7968253162cfab06ee0c6bb1');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26044', '10000005', 'NGUYỄN THÀNH DANH', '10A1', 'Nam', '10/11/2011', 'AN-DONG', '26044@ttgdtxcva.edu.vn', '26044', 'fae76688d706190decfff52e625150848a067c2927731d83257719ef0d3c4c91');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26045', '10000007', 'NGUYỄN NGỌC HÂN', '10A1', 'Nữ', '06/08/2011', 'AN-DONG', '26045@ttgdtxcva.edu.vn', '26045', '4b0503ec18737cc84ee26080e841661bb9b6137159ecdc59e9c23de1acb3a21f');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26047', '10000008', 'TRẦN GIA HÂN', '10A1', 'Nữ', '11/08/2011', 'AN-DONG', '26047@ttgdtxcva.edu.vn', '26047', 'ed5714b08d901930359244baa5f50e6bab7796176cc4933d07e1e2e00efc647a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26046', '10000006', 'ÐOÀN NGỌC BẢO HÂN', '10A1', 'Nữ', '17/08/2011', 'AN-DONG', '26046@ttgdtxcva.edu.vn', '26046', 'b1119a54f0b871c9ab31e49183823e81eea95d5bf16f684e79497509966acbb1');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26049', '10000009', 'PHẠM MAI BẢO HIỀN', '10A1', 'Nam', '13/10/2011', 'AN-DONG', '26049@ttgdtxcva.edu.vn', '26049', 'e645d3d895882a90e4e7c959922c403bddff7ae803c2d7d41347ccd3446df59c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26048', '10000010', 'TRỊNH THANH HIỀN', '10A1', 'Nữ', '15/11/2011', 'AN-DONG', '26048@ttgdtxcva.edu.vn', '26048', '89a571294f7e548b170f907bf9f05d73f175edd3bacdcc580df368453d2c3887');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26051', '10000011', 'LÊ QUỐC HUY', '10A1', 'Nam', '19/07/2011', 'AN-DONG', '26051@ttgdtxcva.edu.vn', '26051', '635c07fa66da6c06cc2e299732bdaaada6d09443a7f44fbb4a35b916c51618e4');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26050', '10000012', 'PHAN HUỲNH HƯƠNG', '10A1', 'Nữ', '22/08/2011', 'AN-DONG', '26050@ttgdtxcva.edu.vn', '26050', 'd0f7dec5e54e8fc1c3497e010aac0e2bceeda9d610b6bbf1c632f93dba2a7091');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26052', '10000013', 'TRẦN TẤN KHANG', '10A1', 'Nam', '04/06/2011', 'AN-DONG', '26052@ttgdtxcva.edu.vn', '26052', 'bf17c46547e9887cb9e3e0fbc955e85a225a68e9e3e6466ed2c0b98f15c51071');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26053', '10000014', 'LÊ ĐĂNG KHOA', '10A1', 'Nam', '03/05/2011', 'AN-DONG', '26053@ttgdtxcva.edu.vn', '26053', '77862176e8989228b14aa2331ec0a3f4466838da9a17862fd00fd228e8dc9a8d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26054', '10000015', 'NGUYỄN TRƯƠNG MINH KHOA', '10A1', 'Nam', '30/08/2011', 'AN-DONG', '26054@ttgdtxcva.edu.vn', '26054', '1e7fff47fff6d4d738b695e58133fa988049d13bf751fbd8ced4c8b0641869a7');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26055', '10000016', 'NGUYỄN MINH KHÔI', '10A1', 'Nam', '15/10/2011', 'AN-DONG', '26055@ttgdtxcva.edu.vn', '26055', 'bb51b465116df151b0650ad577f4c57029b1cb15ac09a4068292b74491bc27cf');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26057', '10000017', 'DIỆP MỸ KIỆT', '10A1', 'Nam', '24/04/2011', 'AN-DONG', '26057@ttgdtxcva.edu.vn', '26057', '95000404554bf810b1905a7dcadde2f5f0031144dd69b57c05a7021ce6e422c5');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26056', '10000018', 'NGUYỄN HÙNG GIA KIỆT', '10A1', 'Nam', '30/12/2011', 'AN-DONG', '26056@ttgdtxcva.edu.vn', '26056', '359fd771045c3856967bb1bf6af4e73f2f94a27b849991e37beb2239c6051bf5');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26058', '10000019', 'VÕ NGỌC PHƯƠNG LINH', '10A1', 'Nữ', '10/11/2011', 'AN-DONG', '26058@ttgdtxcva.edu.vn', '26058', 'fae76688d706190decfff52e625150848a067c2927731d83257719ef0d3c4c91');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26059', '10000020', 'VŨ HOÀNG LONG', '10A1', 'Nam', '09/01/2011', 'AN-DONG', '26059@ttgdtxcva.edu.vn', '26059', '9f9856a30665a5cc15edc8453fc27971697bda1e6ce01bb33932a254a0d9c5a3');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26060', '10000021', 'TRẦN THANH MAI', '10A1', 'Nữ', '10/09/2011', 'AN-DONG', '26060@ttgdtxcva.edu.vn', '26060', '6a34c32b2ca18dcd197dbf7c2c1bf31c6d10c599aa2beeff2b1b29c6aacb1401');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26061', '10000022', 'NGUYỄN TRẦN KIM MINH', '10A1', 'Nữ', '31/10/2011', 'AN-DONG', '26061@ttgdtxcva.edu.vn', '26061', 'eb84a4a466190e6befa65b256f601c38bd1ff9c067311cf301966f982078eb78');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26062', '10000023', 'TRẦN GIÁNG MY', '10A1', 'Nữ', '25/01/2011', 'AN-DONG', '26062@ttgdtxcva.edu.vn', '26062', '0303500bf57871ae628a56960c10def60bff92c60cce2951ec5972a33b7d84b1');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26063', '10000024', 'VÕ NGUYỄN KIỀU MY', '10A1', 'Nữ', '12/02/2011', 'AN-DONG', '26063@ttgdtxcva.edu.vn', '26063', '3b0f5503dc0b29e08b158c9e88abd6b901fb685679678748966a9974411d7346');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26064', '10000025', 'PHAN NGỌC NGHĨA', '10A1', 'Nam', '04/11/2011', 'AN-DONG', '26064@ttgdtxcva.edu.vn', '26064', 'a73bc49f09453d71ea0bd624599a1604e5babc45d478c03790edb5e1d07d4228');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26065', '10000026', 'NGUYỄN THỊ BẢO NGỌC', '10A1', 'Nữ', '05/11/2011', 'AN-DONG', '26065@ttgdtxcva.edu.vn', '26065', '01c50a207a02aa0d05aa3e13cb4ff1b040e5f077a33a7dd55e9d71b03192fb1e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26066', '10000027', 'NGUYỄN HOÀNG KHÔI NGUYÊN', '10A1', 'Nam', '07/10/2010', 'AN-DONG', '26066@ttgdtxcva.edu.vn', '26066', 'd787ee4a9ca72aa5dcf75981673ded6b682946df2ead6d480b376d8ce7f69bf1');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26067', '10000028', 'DƯƠNG THIÊN PHÚ', '10A1', 'Nam', '22/03/2010', 'AN-DONG', '26067@ttgdtxcva.edu.vn', '26067', 'e1584d4fdccc7f6cdff47ea7df4128c3b71580c51f12a1c46c7e8c90708a6db3');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26068', '10000029', 'NGUYỄN NGỌC HỒNG PHÚC', '10A1', 'Nữ', '20/12/2011', 'AN-DONG', '26068@ttgdtxcva.edu.vn', '26068', '233b9790e4a59bf6aef8a8b3213b4bdf68d23a8a246cab014fac5d13349099e7');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26069', '10000030', 'BÙI ĐÀO NGỌC QUÝ', '10A1', 'Nam', '11/08/2011', 'AN-DONG', '26069@ttgdtxcva.edu.vn', '26069', 'ed5714b08d901930359244baa5f50e6bab7796176cc4933d07e1e2e00efc647a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26070', '10000031', 'HUỲNH TIÊU PHƯỚC SANG', '10A1', 'Nam', '01/12/2011', 'AN-DONG', '26070@ttgdtxcva.edu.vn', '26070', '62ee5642ce16a546be75fe3883950646c0a4a690c5003995465dc30b299bdd08');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26072', '10000032', 'ĐẶNG THÀNH TÀI', '10A1', 'Nam', '12/10/2011', 'AN-DONG', '26072@ttgdtxcva.edu.vn', '26072', 'a293e8b1797ec84c1464aad89b5a830ac06873fad9f03a87723e550dce1be10a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26071', '10000033', 'HUỲNH TRÍ TÀI', '10A1', 'Nam', '27/12/2011', 'AN-DONG', '26071@ttgdtxcva.edu.vn', '26071', '84bd347e27ce26b1e491e963c8d597f040ee4a8dd99d2a451cc4a9d7548e4be4');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26073', '10000034', 'CÚN TỬ TÂM', '10A1', 'Nam', '10/05/2011', 'AN-DONG', '26073@ttgdtxcva.edu.vn', '26073', 'd2f1adc092ed3f89d695f43b9bfa04f737579900e757380df132439b67f052c7');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26074', '10000035', 'TRƯƠNG LỆ THANH', '10A1', 'Nữ', '09/03/2011', 'AN-DONG', '26074@ttgdtxcva.edu.vn', '26074', '0deb1bd3140ff8f5736ba355547a23934543aa60865ffab564632b931662802f');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26075', '10000036', 'NGUYỄN HOÀNG THƯ', '10A1', 'Nam', '29/06/2011', 'AN-DONG', '26075@ttgdtxcva.edu.vn', '26075', 'c2868b4219e053d0bdb8c97e990d976820cc1ab7e395b6d4ffc5c8a15a347d3b');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26076', '10000037', 'ĐÀO NGỌC THÙY TRANG', '10A1', 'Nữ', '20/09/2011', 'AN-DONG', '26076@ttgdtxcva.edu.vn', '26076', '5e82459d588a3fe068c51eae2dd78ae9f74464779c259a37a59700d98d60507a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26078', '10000038', 'LÊ VĂN TRÍ', '10A1', 'Nam', '29/12/2011', 'AN-DONG', '26078@ttgdtxcva.edu.vn', '26078', '89672c229d88fd0868bcd7b0405991e7a98c55750aaf4da4f635c5bf95ad03f6');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26077', '10000039', 'TRẦN QUỐC TRÍ', '10A1', 'Nam', '28/02/2011', 'AN-DONG', '26077@ttgdtxcva.edu.vn', '26077', '53ca174c3eb294bc9ee15739ee87cc3ade400e8db2e02e8637c06a2181269fa2');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26079', '10000040', 'LÊ VĂN TUẤN', '10A1', 'Nam', '28/05/2011', 'AN-DONG', '26079@ttgdtxcva.edu.vn', '26079', '2cdbb3d655c53585236064e1bcbc0d85314d20c6529358d325f5f5993ca1fba4');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26080', '10000041', 'LÊ ĐỖ CÁT TƯỜNG', '10A1', 'Nữ', '08/06/2011', 'AN-DONG', '26080@ttgdtxcva.edu.vn', '26080', '47772d973a01b017d585720e9eee13a67ca2a934255ab28bc079220296087279');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26081', '10000042', 'PHẠM LÊ VY', '10A1', 'Nữ', '22/11/2011', 'AN-DONG', '26081@ttgdtxcva.edu.vn', '26081', 'dbe86cb1013e982a4a21bba4efcbfc795dee65f098ad4c11b0af41e7b3611d5e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26082', '10000043', 'TRẦN THANH VY', '10A1', 'Nữ', '29/07/2011', 'AN-DONG', '26082@ttgdtxcva.edu.vn', '26082', 'a1501ef5397902e43fdc6a4b2c0f25c9e6430c9b6e5757da79902d72151211f1');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26083', '10000044', 'THÁI KIM YẾN', '10A1', 'Nữ', '15/06/2011', 'AN-DONG', '26083@ttgdtxcva.edu.vn', '26083', 'b755d85dd7160bdae205003a2ccf87dfa977b42d70abba8995eb6038ea9825cb');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26306', '10000260', 'LÂM GIA AN', '10A7', 'Nam', '29/10/2011', 'AN-DONG', '26306@ttgdtxcva.edu.vn', '26306', 'dbf1a048ed8156246cb5456189da5e5f5fa730d5d91da39598675978c6f451bd');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26305', '10000261', 'VĂNG PHAN HỮU AN', '10A7', 'Nam', '04/01/2011', 'AN-DONG', '26305@ttgdtxcva.edu.vn', '26305', '741f786d429ae5873473f32bdc449fae97b2cec7e77b1ed35f757e8e88b6d9dd');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26307', '10000262', 'PHẠM QUÁCH BẢO CHÂU', '10A7', 'Nữ', '08/04/2011', 'AN-DONG', '26307@ttgdtxcva.edu.vn', '26307', 'd0638c1896c6091e44c7150fa3a81939a712e57bede1236c02501c72d0d2cda3');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26308', '10000263', 'NGÔ QUỐC CƯỜNG', '10A7', 'Nam', '02/06/2011', 'AN-DONG', '26308@ttgdtxcva.edu.vn', '26308', '8ae316013c17132f4553e98ac8458df219bd0433ab8ae80811ce8d7dd1a71b35');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26309', '10000264', 'HUỲNH NGỌC DUYÊN', '10A7', 'Nữ', '30/03/2011', 'AN-DONG', '26309@ttgdtxcva.edu.vn', '26309', '6cf5f2a78d158a219cd4872c4e7f3850af371f7bd471fde855441d4d0f931609');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26310', '10000265', 'NGUYỄN NGỌC BẢO HÂN', '10A7', 'Nữ', '01/07/2011', 'AN-DONG', '26310@ttgdtxcva.edu.vn', '26310', '2c1a4a451c3b5492ea81646bd5a65d3b2abc8c26f302291f766e8147c3795e6a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26311', '10000266', 'NGUYỄN GIA HƯNG', '10A7', 'Nam', '12/06/2011', 'AN-DONG', '26311@ttgdtxcva.edu.vn', '26311', '302fafc114761d4d486b9f9bdf4a5475b2b17a6e970227d041fca5e930d69643');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25095', '10000267', 'NGUYỄN ĐOÀN MINH KHANG', '10A7', 'Nam', '13/02/2010', 'AN-DONG', '25095@ttgdtxcva.edu.vn', '25095', '6a82bb53a361d965841026c6d81a7b3f33307f60e0a98089c31e0de56a96a7f0');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26313', '10000268', 'NGUYỄN TRỌNG KHANG', '10A7', 'Nam', '26/04/2011', 'AN-DONG', '26313@ttgdtxcva.edu.vn', '26313', '6f70b1f2019df4489accefc48e7ec196b4a185813950499441c2af9cf7f50e7f');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26312', '10000269', 'TRƯƠNG VĨNH KHANG', '10A7', 'Nam', '21/12/2011', 'AN-DONG', '26312@ttgdtxcva.edu.vn', '26312', '18714b61260be823fae54079ecf31d22869d71cf605ba3f09f12b337c06feaf2');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26314', '10000270', 'HUỲNH MINH KHOA', '10A7', 'Nam', '04/09/2011', 'AN-DONG', '26314@ttgdtxcva.edu.vn', '26314', '14a9cb94cf5ec176028197f9d738f6c3e3b3987a0c31c5e7e3998ea764dea453');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26315', '10000271', 'NGUYỄN TƯỜNG LAM', '10A7', 'Nữ', '08/11/2011', 'AN-DONG', '26315@ttgdtxcva.edu.vn', '26315', '47354d25874a6678612bd8605123e1c298c28a6b79348c3313b572061385678e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26316', '10000272', 'TRẦN QUỐC LONG', '10A7', 'Nam', '20/09/2011', 'AN-DONG', '26316@ttgdtxcva.edu.vn', '26316', '5e82459d588a3fe068c51eae2dd78ae9f74464779c259a37a59700d98d60507a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26317', '10000273', 'HUỲNH ANH MINH', '10A7', 'Nam', '07/12/2011', 'AN-DONG', '26317@ttgdtxcva.edu.vn', '26317', '051dce5725a428b33f7f0db618a9016e901b23374f891a867fe84f19f7cb851c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26318', '10000274', 'NGUYỄN PHƯƠNG KHÁNH MY', '10A7', 'Nữ', '22/04/2011', 'AN-DONG', '26318@ttgdtxcva.edu.vn', '26318', 'fea8f09e9bd5f2d72216aabd691466f376083834cc21d83fd8f85ed92f16e534');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26320', '10000275', 'BÙI TUYẾT NGÂN', '10A7', 'Nữ', '23/04/2011', 'AN-DONG', '26320@ttgdtxcva.edu.vn', '26320', 'd0a6644f2676d1babf3e1c5c1e5dd2a1b904c7aa59702f49bbe60c3470d5573f');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26319', '10000276', 'NGUYỄN NGỌC PHƯƠNG NGÂN', '10A7', 'Nữ', '24/07/2011', 'AN-DONG', '26319@ttgdtxcva.edu.vn', '26319', 'ed8d99aee080ccca517b678b0a513a123a7e3208c9f152e78789e745634d16ff');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26322', '10000277', 'BÁ THỊ ÁNH NGỌC', '10A7', 'Nữ', '04/09/2011', 'AN-DONG', '26322@ttgdtxcva.edu.vn', '26322', '14a9cb94cf5ec176028197f9d738f6c3e3b3987a0c31c5e7e3998ea764dea453');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26323', '10000278', 'LÂM BẢO NGỌC', '10A7', 'Nữ', '05/09/2011', 'AN-DONG', '26323@ttgdtxcva.edu.vn', '26323', 'f7847ca41edcdb10ffb02d5d461b966ca8fea092097eb9edfc671e45b4952974');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26321', '10000279', 'NGUYỄN ĐOÀN QUỲNH NGỌC', '10A7', 'Nữ', '15/06/2011', 'AN-DONG', '26321@ttgdtxcva.edu.vn', '26321', 'b755d85dd7160bdae205003a2ccf87dfa977b42d70abba8995eb6038ea9825cb');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26324', '10000280', 'NGUYỄN MAI NGUYÊN', '10A7', 'Nữ', '05/08/2011', 'AN-DONG', '26324@ttgdtxcva.edu.vn', '26324', '71b127257b4645c0863497e38b6199173163e7ec2f1b8c9fa635d3296a67b492');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26325', '10000281', 'HUỲNH NGỌC NHƯ', '10A7', 'Nữ', '14/03/2011', 'AN-DONG', '26325@ttgdtxcva.edu.vn', '26325', '2254d9a8f423c82a58eb0ca6b8f4c604a4590801cf221a3345afd148e1da69d6');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26326', '10000282', 'ĐÀO TẤN PHÁT', '10A7', 'Nam', '15/12/2011', 'AN-DONG', '26326@ttgdtxcva.edu.vn', '26326', '1bab667835646d88a4717c937fdffd2b4045ecacbfaf83b84ce3f432c537f753');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26327', '10000283', 'HUỲNH THANH PHONG', '10A7', 'Nam', '02/11/2011', 'AN-DONG', '26327@ttgdtxcva.edu.vn', '26327', '3ff1dbfe1ef540170a352d6c760c3daf002f5e3e9d49b5cbd63a44cea62dbdee');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26328', '10000284', 'NGUYỄN THIÊN PHƯỚC', '10A7', 'Nam', '17/11/2011', 'AN-DONG', '26328@ttgdtxcva.edu.vn', '26328', '8a8fa144fd74d94dbed0a5124bdf213637989371fd7ab2c305dc9ee18139046b');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26329', '10000285', 'LÝ THỊ BẢO PHƯƠNG', '10A7', 'Nữ', '22/07/2011', 'AN-DONG', '26329@ttgdtxcva.edu.vn', '26329', '56fef800a90f29bb632191ac11cfa9c3f8d33e14bfaab2a26d080b96fdb12f05');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26330', '10000286', 'TRẦN VƯƠNG QUỐC', '10A7', 'Nam', '02/11/2010', 'AN-DONG', '26330@ttgdtxcva.edu.vn', '26330', '02e6476e8e69064585b32f33371e994a5b58626593d9728cfba786ad674eda64');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26331', '10000287', 'NGUYỄN TẤN SANG', '10A7', 'Nam', '14/12/2011', 'AN-DONG', '26331@ttgdtxcva.edu.vn', '26331', '733e1e479feab22f28eb670f2976bece788a760d2443a3b3f65bc600d8b23bd2');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26332', '10000288', 'NGUYỄN NGỌC ĐĂNG THƯ', '10A7', 'Nữ', '06/07/2011', 'AN-DONG', '26332@ttgdtxcva.edu.vn', '26332', '71dd2feb8e748e4676870867d30394a7bdd8cae6fa5cfbb75a64ea7be0180108');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26334', '10000289', 'DƯƠNG NGỌC MINH THY', '10A7', 'Nữ', '26/05/2011', 'AN-DONG', '26334@ttgdtxcva.edu.vn', '26334', '6b18e3ed55966ee1a83fa05b17def762da5605d80316dada6f6b790f101856d6');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26333', '10000290', 'LÝ BẢO THY', '10A7', 'Nữ', '24/02/2011', 'AN-DONG', '26333@ttgdtxcva.edu.vn', '26333', '49a7d3b28d4a4f298f92506084b70d7bb1213ea357f5a50e22be7b23f3ea3e4b');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26335', '10000291', 'TRẦN BẢO TRÂN', '10A7', 'Nữ', '16/06/2011', 'AN-DONG', '26335@ttgdtxcva.edu.vn', '26335', '62fdf3030831ce3af34b94e0b9eae88655c780d02e2d3befdc8025ac5d65cdad');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26336', '10000292', 'LÊ QUANG TRÍ', '10A7', 'Nam', '03/05/2011', 'AN-DONG', '26336@ttgdtxcva.edu.vn', '26336', '77862176e8989228b14aa2331ec0a3f4466838da9a17862fd00fd228e8dc9a8d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26337', '10000293', 'DƯƠNG KHẢI TRIỀU', '10A7', 'Nam', '23/11/2011', 'AN-DONG', '26337@ttgdtxcva.edu.vn', '26337', 'a5503c03d032c6873f79984787e336274c670ff06a122243ecea0ba800a9382d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26338', '10000294', 'DƯƠNG THỊ THANH TRÚC', '10A7', 'Nữ', '10/12/2011', 'AN-DONG', '26338@ttgdtxcva.edu.vn', '26338', 'e9dc794c3bc84172ae8fbe12f0b6e625cfe5901754b60c81a102d92012f55781');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26339', '10000295', 'DƯƠNG XUÂN TRÚC', '10A7', 'Nữ', '30/03/2011', 'AN-DONG', '26339@ttgdtxcva.edu.vn', '26339', '6cf5f2a78d158a219cd4872c4e7f3850af371f7bd471fde855441d4d0f931609');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26340', '10000296', 'ĐẶNG ĐOÀN THỦY TRÚC', '10A7', 'Nữ', '30/10/2011', 'AN-DONG', '26340@ttgdtxcva.edu.vn', '26340', '847b6ce4b129dc69dc4b29df3efcd327f3a3be41a7355f24209886d85bfe3b36');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26341', '10000297', 'TRẦN PHẠM THANH TRÚC', '10A7', 'Nữ', '26/10/2011', 'AN-DONG', '26341@ttgdtxcva.edu.vn', '26341', 'f42afc4edfb6b917ffca994fbbc6f3735cb516218d6091fe5deec65d77ee07a1');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26342', '10000298', 'ĐỖ THỤY THANH VÂN', '10A7', 'Nữ', '20/04/2011', 'AN-DONG', '26342@ttgdtxcva.edu.vn', '26342', '4ed337a72722a1c79d9ccafe90a821574b602c48f157ff08fbd8a8fcc76a5ee1');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26343', '10000299', 'HỒ LÊ TƯỜNG VÂN', '10A7', 'Nữ', '14/04/2011', 'AN-DONG', '26343@ttgdtxcva.edu.vn', '26343', '78198f2802f6fc7531f255fbfa1f7895dc602acd4abf8b64fae10e05d772c13a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26344', '10000300', 'NGUYỄN THỊ TƯỜNG VY', '10A7', 'Nữ', '20/06/2011', 'AN-DONG', '26344@ttgdtxcva.edu.vn', '26344', '2984eebdeccfd9db3700353487bcb1a0a536d18623a9a0ddcb1099928019036d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26345', '10000301', 'TRẦN YẾN VY', '10A7', 'Nữ', '04/04/2011', 'AN-DONG', '26345@ttgdtxcva.edu.vn', '26345', '3fedafe2d84653c697d6cb9d09c269628c474e73326cd06f61be8cf2d0c8f30d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26346', '10000302', 'MẠC BẢO Ý', '10A7', 'Nữ', '30/08/2011', 'AN-DONG', '26346@ttgdtxcva.edu.vn', '26346', '1e7fff47fff6d4d738b695e58133fa988049d13bf751fbd8ced4c8b0641869a7');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26388', '10000346', 'NGUYỄN VI VI AN', '10A9', 'Nữ', '08/07/2011', 'AN-DONG', '26388@ttgdtxcva.edu.vn', '26388', '6a56539a50ab1c1868771986658062ab3339c6a56c51d6bff7ed8811c3f6c71f');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26390', '10000347', 'NGUYỄN HOÀNG PHƯƠNG ANH', '10A9', 'Nữ', '24/09/2011', 'AN-DONG', '26390@ttgdtxcva.edu.vn', '26390', '350fc7afe69135225d979dde71fc5fd6dbecd8213f08d68dde019cfc9333ac3f');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26389', '10000348', 'TRẦN THỊ QUỲNH ANH', '10A9', 'Nữ', '11/03/2011', 'AN-DONG', '26389@ttgdtxcva.edu.vn', '26389', '95adb32f3cc00e532ceb35bd8eded7f1e408c5f7e7571ffdd4c5299b63c2ab0e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26391', '10000349', 'VŨ QUỲNH ANH', '10A9', 'Nữ', '12/09/2011', 'AN-DONG', '26391@ttgdtxcva.edu.vn', '26391', '079718e6516c76a15e69bfbab8125ce33d8622bb2f76640e8aecc747d79c58a7');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26521', '10000350', 'ĐOÀN GIA BẢO', '10A9', 'Nam', '25/08/2011', 'AN-DONG', '26521@ttgdtxcva.edu.vn', '26521', 'e642406936cbebc4bc9f067205ff52a5f1667bc6d9779596fcf4516cbc799a2f');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26395', '10000351', 'TẠ QUỐC DUY', '10A9', 'Nam', '19/12/2011', 'AN-DONG', '26395@ttgdtxcva.edu.vn', '26395', 'be39eaf950981bc599184ae08db3af376c5de6e8e0ed662abef13381ef07a200');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26394', '10000352', 'NGUYỄN THÀNH ĐẠT', '10A9', 'Nam', '08/08/2011', 'AN-DONG', '26394@ttgdtxcva.edu.vn', '26394', 'e48067d627d5da12f35713a0ee15a0806cbce0e845a590b64f24073b928522b0');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26393', '10000353', 'TRẦN TIẾN ĐẠT', '10A9', 'Nam', '11/07/2011', 'AN-DONG', '26393@ttgdtxcva.edu.vn', '26393', '6f0bafc0dd9e4c071753db7db26eaf536535c7d60770c03e1a76b417b06daa6a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26396', '10000354', 'TĂNG THANH HIỀN', '10A9', 'Nữ', '18/01/2010', 'AN-DONG', '26396@ttgdtxcva.edu.vn', '26396', 'b5603fbd4690fb162f8cac5c394d70d04ffa3e59eb8e75d62b059f4b6014d4da');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26397', '10000355', 'PHẠM HOÀNG HIẾU', '10A9', 'Nam', '21/02/2011', 'AN-DONG', '26397@ttgdtxcva.edu.vn', '26397', 'c56b81454c2efdeb32c86c6c498ab3bc9bdc4397dca6c4a42171dbd50be88a47');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26398', '10000356', 'NHAN THỤY XUÂN HỒNG', '10A9', 'Nữ', '28/08/2011', 'AN-DONG', '26398@ttgdtxcva.edu.vn', '26398', 'dd03431874f01040789fd7a4bfef0fe61c38ed637e4d79a4852244a33e072d2b');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26399', '10000357', 'NGUYỄN GIA HUY', '10A9', 'Nam', '09/12/2011', 'AN-DONG', '26399@ttgdtxcva.edu.vn', '26399', 'ccc7a7ed62e8af4cd4fadcff5276e9b74cc4626561ffd332d80c7917e449944b');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26400', '10000358', 'NGUYỄN HOÀNG KHANG', '10A9', 'Nam', '25/12/2011', 'AN-DONG', '26400@ttgdtxcva.edu.vn', '26400', 'c0ba62ef2ae272cb5cd5c40f885129725c537a0600f416ac8a0d8fa31a256e3c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26401', '10000359', 'TRẦN PHÚC KHANG', '10A9', 'Nam', '28/10/2011', 'AN-DONG', '26401@ttgdtxcva.edu.vn', '26401', '093dddf33af8a44caabb0c2bb07d38b77b669c6031b15561d8b23df214695a81');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26402', '10000360', 'NGÔ PHẠM THIÊN KIM', '10A9', 'Nữ', '02/11/2011', 'AN-DONG', '26402@ttgdtxcva.edu.vn', '26402', '3ff1dbfe1ef540170a352d6c760c3daf002f5e3e9d49b5cbd63a44cea62dbdee');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26609', '10000361', 'NGUYỄN THIÊN KIM', '10A9', 'Nữ', '30/03/2011', 'AN-DONG', '26609@ttgdtxcva.edu.vn', '26609', '6cf5f2a78d158a219cd4872c4e7f3850af371f7bd471fde855441d4d0f931609');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26404', '10000362', 'TRƯƠNG NGỌC TRÚC LINH', '10A9', 'Nữ', '17/12/2011', 'AN-DONG', '26404@ttgdtxcva.edu.vn', '26404', 'a26d4a7c44f441382058998b6f93e585dfd5a48b9b582fbc8b8a8810f954439a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26405', '10000363', 'HUỲNH TẤN LỘC', '10A9', 'Nam', '12/01/2010', 'AN-DONG', '26405@ttgdtxcva.edu.vn', '26405', '91039a352629d935d8aba4f9455213b665cb5e1144dae14468e13b3b35bddc12');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26406', '10000364', 'CHÂU HUỆ MẪN', '10A9', 'Nữ', '22/06/2011', 'AN-DONG', '26406@ttgdtxcva.edu.vn', '26406', '7735feb9cae4709e418d6113e073adf4db783c46caf8284a5a23f99dd2b6603c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26407', '10000365', 'DIỆP QUỐC MINH', '10A9', 'Nam', '22/10/2010', 'AN-DONG', '26407@ttgdtxcva.edu.vn', '26407', '5f418d862c2ebc5bdb470e6045be597fe571aa79965eff00d71c8080bde67181');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26408', '10000366', 'BÙI THỊ KIM NGÂN', '10A9', 'Nữ', '18/11/2011', 'AN-DONG', '26408@ttgdtxcva.edu.vn', '26408', '328dc2c14e3543735f5060ab217192999cbc081af7e7dd8db7024d0e08fecda5');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26409', '10000367', 'NGÔ BẢO NGÂN', '10A9', 'Nữ', '01/07/2011', 'AN-DONG', '26409@ttgdtxcva.edu.vn', '26409', '2c1a4a451c3b5492ea81646bd5a65d3b2abc8c26f302291f766e8147c3795e6a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26410', '10000368', 'CHUNG MỸ NGỌC', '10A9', 'Nữ', '09/05/2011', 'AN-DONG', '26410@ttgdtxcva.edu.vn', '26410', 'd3ea84b91129d2399d6c15881dab8a0b83258fcc657d4a08844f3846ad85c82d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26411', '10000369', 'UNG THÙY THANH NGỌC', '10A9', 'Nữ', '30/04/2011', 'AN-DONG', '26411@ttgdtxcva.edu.vn', '26411', 'b68cb36621f15f10add2880b47536bf0cf583f2081ed026f06bb678c2c5d1c7d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26412', '10000370', 'TRẦN ĐĂNG NGUYÊN', '10A9', 'Nam', '22/05/2011', 'AN-DONG', '26412@ttgdtxcva.edu.vn', '26412', 'ff54ed2bacace7f678e1cbc02f63667bfef4c2630ed8705b1252f7fba3e3dde5');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26413', '10000371', 'LÊ THÀNH NHÂN', '10A9', 'Nam', '03/11/2011', 'AN-DONG', '26413@ttgdtxcva.edu.vn', '26413', '1023ad6fb2c38b375f03cfb219f25bda442094a48b6f3f3d1a2eeba7b9e76aec');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26415', '10000372', 'HOÀNG YẾN NHI', '10A9', 'Nữ', '29/05/2011', 'AN-DONG', '26415@ttgdtxcva.edu.vn', '26415', '9be8c9b73d2712bb154c0528c677484ad27366c1529cc985aa8f42cb3229f397');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26414', '10000373', 'LÊ NGUYỄN NGỌC NHI', '10A9', 'Nữ', '18/11/2011', 'AN-DONG', '26414@ttgdtxcva.edu.vn', '26414', '328dc2c14e3543735f5060ab217192999cbc081af7e7dd8db7024d0e08fecda5');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26416', '10000374', 'NGUYỄN MẠNH PHÁT', '10A9', 'Nam', '14/09/2011', 'AN-DONG', '26416@ttgdtxcva.edu.vn', '26416', 'b48fb98dcbe9c051125f198a0f2f39c6f5a8821d2a45d93b1a7f6b64f1e97e4d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26417', '10000375', 'TRẦN TRÌ PHÚ', '10A9', 'Nam', '14/10/2011', 'AN-DONG', '26417@ttgdtxcva.edu.vn', '26417', '477e8f8581c4627a483b40cbdab7a56a6a2c6ad8855e588feb758ab84d3c467f');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26418', '10000376', 'LÊ NGUYỄN NHƯ QUỲNH', '10A9', 'Nữ', '12/01/2011', 'AN-DONG', '26418@ttgdtxcva.edu.vn', '26418', '02030a775c2df6ca6801f29b61eb2d1183cac316d2dc3b11c618c1461d0735d7');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26419', '10000377', 'ĐỖ MINH TÂM', '10A9', 'Nam', '02/01/2011', 'AN-DONG', '26419@ttgdtxcva.edu.vn', '26419', '0cc110766994470f82369d275d3968465bbdc767556f8efa98749c297c98c520');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26421', '10000378', 'HUỲNH PHƯƠNG THUỲ', '10A9', 'Nữ', '25/08/2011', 'AN-DONG', '26421@ttgdtxcva.edu.vn', '26421', 'e642406936cbebc4bc9f067205ff52a5f1667bc6d9779596fcf4516cbc799a2f');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26420', '10000379', 'HUỲNH NGỌC MINH THƯ', '10A9', 'Nữ', '08/07/2011', 'AN-DONG', '26420@ttgdtxcva.edu.vn', '26420', '6a56539a50ab1c1868771986658062ab3339c6a56c51d6bff7ed8811c3f6c71f');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26422', '10000380', 'NGUYỄN HOÀNG THY', '10A9', 'Nữ', '22/06/2011', 'AN-DONG', '26422@ttgdtxcva.edu.vn', '26422', '7735feb9cae4709e418d6113e073adf4db783c46caf8284a5a23f99dd2b6603c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26423', '10000381', 'CAO NGỌC TIÊN', '10A9', 'Nữ', '23/12/2010', 'AN-DONG', '26423@ttgdtxcva.edu.vn', '26423', '77ea89a72a22522c880873f33ae4210137b55738adfdfdc851bc7e4f7a980225');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26424', '10000382', 'HUỲNH THUỶ TIÊN', '10A9', 'Nữ', '23/07/2011', 'AN-DONG', '26424@ttgdtxcva.edu.vn', '26424', 'b438d4133c6b4a1bee6d1eb2025c7109b1e949523bdf3348b9622ef3c0a1dfd7');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26425', '10000383', 'NGUYỄN THANH TIẾN', '10A9', 'Nam', '09/03/2011', 'AN-DONG', '26425@ttgdtxcva.edu.vn', '26425', '0deb1bd3140ff8f5736ba355547a23934543aa60865ffab564632b931662802f');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26426', '10000384', 'VĂN ĐẶNG NGỌC TRÂN', '10A9', 'Nữ', '19/10/2011', 'AN-DONG', '26426@ttgdtxcva.edu.vn', '26426', '90b08204ff2d864ff2be6c877aa133dfd4c5125c9d7e08d63dbe01e576506a72');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26036', '10000385', 'TRẦN NGỌC THANH TRÚC', '10A9', 'Nữ', '09/12/2011', 'AN-DONG', '26036@ttgdtxcva.edu.vn', '26036', 'ccc7a7ed62e8af4cd4fadcff5276e9b74cc4626561ffd332d80c7917e449944b');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26428', '10000386', 'TRẦN GIA TUỆ', '10A9', 'Nữ', '25/11/2011', 'AN-DONG', '26428@ttgdtxcva.edu.vn', '26428', '30baf01bce6b9c9dec349a490170bdbc17aa701b45b15d5c4bff6221e590cb20');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26429', '10000387', 'LÂM DIỄM UYÊN', '10A9', 'Nữ', '17/08/2011', 'AN-DONG', '26429@ttgdtxcva.edu.vn', '26429', 'b1119a54f0b871c9ab31e49183823e81eea95d5bf16f684e79497509966acbb1');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26431', '10000388', 'PHÙ ĐÔN VĂN', '10A9', 'Nam', '24/04/2011', 'AN-DONG', '26431@ttgdtxcva.edu.vn', '26431', '95000404554bf810b1905a7dcadde2f5f0031144dd69b57c05a7021ce6e422c5');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26430', '10000389', 'NGUYỄN PHI VÂN', '10A9', 'Nữ', '28/10/2011', 'AN-DONG', '26430@ttgdtxcva.edu.vn', '26430', '093dddf33af8a44caabb0c2bb07d38b77b669c6031b15561d8b23df214695a81');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26261', '10000217', 'QUÁCH TUẤN AN', '10A6', 'Nam', '16/08/2011', 'AN-DONG', '26261@ttgdtxcva.edu.vn', '26261', 'a2075f0dd064905676210bc456fd76bba3f9642bc8bc99414b799cb9ab2b8c74');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26262', '10000218', 'ĐỖ NHƯ HOÀNG ANH', '10A6', 'Nữ', '03/12/2011', 'AN-DONG', '26262@ttgdtxcva.edu.vn', '26262', '8e7d5bc9d03b5cee7f64d621c056d06f6e9931a7addfeee121cb6ec8f75e768d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26263', '10000219', 'TRẦN TUẤN BẢO', '10A6', 'Nam', '27/12/2010', 'AN-DONG', '26263@ttgdtxcva.edu.vn', '26263', '092b7f7fe39d5bef21ef4667baa46854dac986e6538988305910ce65c899d87c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26264', '10000220', 'TỪ KIẾT CHI', '10A6', 'Nữ', '14/05/2011', 'AN-DONG', '26264@ttgdtxcva.edu.vn', '26264', 'b9316c6b075325ec0fabaa73990cedbcb7df28d4ce22437379554dce93380e6d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26265', '10000221', 'NGUYỄN LÊ THÀNH CÔNG', '10A6', 'Nam', '05/06/2011', 'AN-DONG', '26265@ttgdtxcva.edu.vn', '26265', 'f2becc35e2647fe2fb771d89fd2a355a04b430b84222bffea3c4d768bd23e67c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26267', '10000222', 'TĂNG NGỌC KHÁNH DƯƠNG', '10A6', 'Nữ', '01/01/2011', 'AN-DONG', '26267@ttgdtxcva.edu.vn', '26267', '12d47138de0c061e70dd09cc2922f642b1e09e70f956eb8d723340f476be081f');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26266', '10000223', 'HUỲNH DUY ĐỨC', '10A6', 'Nam', '25/01/2011', 'AN-DONG', '26266@ttgdtxcva.edu.vn', '26266', '0303500bf57871ae628a56960c10def60bff92c60cce2951ec5972a33b7d84b1');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26268', '10000224', 'VÕ NGỌC BẢO HÂN', '10A6', 'Nữ', '27/05/2011', 'AN-DONG', '26268@ttgdtxcva.edu.vn', '26268', '75653276e6319cec4e7efa0590f55aa0ff342980c66badf614592f3f296dfd55');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26269', '10000225', 'VÒNG GIA HÂN', '10A6', 'Nữ', '21/12/2011', 'AN-DONG', '26269@ttgdtxcva.edu.vn', '26269', '18714b61260be823fae54079ecf31d22869d71cf605ba3f09f12b337c06feaf2');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26270', '10000226', 'NGUYỄN HOÀI HIỆP', '10A6', 'Nam', '13/04/2011', 'AN-DONG', '26270@ttgdtxcva.edu.vn', '26270', 'f12296e6b98243c42ff7abd200c05762132b98a9b26381096ab12e2ff6b506f6');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26271', '10000227', 'NGUYỄN TUẤN KIỆT', '10A6', 'Nam', '23/11/2011', 'AN-DONG', '26271@ttgdtxcva.edu.vn', '26271', 'a5503c03d032c6873f79984787e336274c670ff06a122243ecea0ba800a9382d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26272', '10000228', 'LÊ MAI TRÚC LAM', '10A6', 'Nữ', '01/09/2011', 'AN-DONG', '26272@ttgdtxcva.edu.vn', '26272', '87a72c706602a1e59d76c62a7b7dfafc15c73bb703c5c405221e9f1a4abfa633');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26273', '10000229', 'LA TẤN LỘC', '10A6', 'Nam', '24/03/2011', 'AN-DONG', '26273@ttgdtxcva.edu.vn', '26273', 'd01c6af12ca303b380a46537df316d52c98ba4cc45f8b802c0e38abe6e32e87b');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26274', '10000230', 'NGUYỄN TRÀ MY', '10A6', 'Nữ', '27/07/2011', 'AN-DONG', '26274@ttgdtxcva.edu.vn', '26274', '1cbcc21b01bfbcba6c8237ab91826e555597241ca9bd6a42a3ef4eecad81d1ed');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26275', '10000231', 'LÊ TRẦN KHÁNH NAM', '10A6', 'Nam', '16/08/2011', 'AN-DONG', '26275@ttgdtxcva.edu.vn', '26275', 'a2075f0dd064905676210bc456fd76bba3f9642bc8bc99414b799cb9ab2b8c74');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26276', '10000232', 'PHẠM LÊ DY NAM', '10A6', 'Nam', '21/05/2011', 'AN-DONG', '26276@ttgdtxcva.edu.vn', '26276', '68923496c7fe6bce21d49906211d64ce958f9c571694cf1462017664ccc67fcf');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26277', '10000233', 'TRẦN THỊ BÍCH NGÂN', '10A6', 'Nữ', '03/03/2011', 'AN-DONG', '26277@ttgdtxcva.edu.vn', '26277', 'eba657fa8656ca4fc1448f73f5df47956910a620fb647dc385855d4cc3dbe998');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26279', '10000234', 'NGUYỄN PHƯƠNG BẢO NGỌC', '10A6', 'Nữ', '18/07/2011', 'AN-DONG', '26279@ttgdtxcva.edu.vn', '26279', '149ca93866bcbbdac39279219aeda7f494d35f07dcde5cc9a7ac306932c62fd0');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26278', '10000235', 'NGUYỄN TRẦN MINH NGỌC', '10A6', 'Nữ', '21/07/2011', 'AN-DONG', '26278@ttgdtxcva.edu.vn', '26278', '5bba0dd5be154de9c9624d36806984b42c585c036b67b91019de0f2ce14b9949');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26281', '10000236', 'HUỲNH THỤC NGUYÊN', '10A6', 'Nữ', '16/11/2011', 'AN-DONG', '26281@ttgdtxcva.edu.vn', '26281', 'f248e2521a5b7209ac05998f0e2e0e6ef33b6a1fe781465ba473c31795dd0fc6');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26280', '10000237', 'NGUYỄN TRẦN KHÔI NGUYÊN', '10A6', 'Nam', '12/05/2011', 'AN-DONG', '26280@ttgdtxcva.edu.vn', '26280', 'f89460fc77df8aa3be111cb910e0a966f32c8312dcd90f5805204ccbb4fb63be');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26282', '10000238', 'ĐÀO DUY PHONG', '10A6', 'Nam', '04/04/2011', 'AN-DONG', '26282@ttgdtxcva.edu.vn', '26282', '3fedafe2d84653c697d6cb9d09c269628c474e73326cd06f61be8cf2d0c8f30d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26283', '10000239', 'TRẦN KIẾN PHONG', '10A6', 'Nam', '30/11/2011', 'AN-DONG', '26283@ttgdtxcva.edu.vn', '26283', '3577f8918584e818c5dbec14432ef099e90007717d1725465f7a831ab1ef9dfc');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26284', '10000240', 'LÊ TRẦN MINH QUÍ', '10A6', 'Nam', '24/06/2011', 'AN-DONG', '26284@ttgdtxcva.edu.vn', '26284', '4aab75b7b57e1fc2c6dbc27de72b434e369086c502795f9d3002805eb5a1c86b');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26286', '10000241', 'ĐẶNG LƯƠNG TRIỆU SÁNG', '10A6', 'Nam', '02/05/2011', 'AN-DONG', '26286@ttgdtxcva.edu.vn', '26286', 'f4187568c000496f56a926242e78204366970b024fbbc823f2f15784baa9b813');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26285', '10000242', 'HỨA BẢO SÂM', '10A6', 'Nữ', '08/03/2011', 'AN-DONG', '26285@ttgdtxcva.edu.vn', '26285', '7dc56b00c05aa27e446e9b6b9b35bd5d291e5de41e62cd666c0d7ca2b6bd127f');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26288', '10000243', 'LÂM HẢI TÂN', '10A6', 'Nam', '05/02/2011', 'AN-DONG', '26288@ttgdtxcva.edu.vn', '26288', '91c6f97a8148c3720fe5f57f6513a28d764af80bfbe2a39552804309e897a041');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26289', '10000244', 'VÕ THANH THẢO', '10A6', 'Nữ', '01/05/2011', 'AN-DONG', '26289@ttgdtxcva.edu.vn', '26289', 'dc354db5ef3359532e5d5e837c0703686277ffcdb9ab713dee3e5e90bc35474c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26290', '10000245', 'LAO NGỌC KHÁNH THI', '10A6', 'Nữ', '28/12/2011', 'AN-DONG', '26290@ttgdtxcva.edu.vn', '26290', 'ecd38812045539ee1013eb82d2de895f436bcd8363bdd800bf6ddba90f3957f8');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26291', '10000246', 'NGUYỄN TUẤN THỊNH', '10A6', 'Nam', '02/06/2011', 'AN-DONG', '26291@ttgdtxcva.edu.vn', '26291', '8ae316013c17132f4553e98ac8458df219bd0433ab8ae80811ce8d7dd1a71b35');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26292', '10000247', 'HUỲNH THANH THƯ', '10A6', 'Nữ', '16/05/2011', 'AN-DONG', '26292@ttgdtxcva.edu.vn', '26292', 'fa6ef7a20c805ae887c3437638bd9f223570ae6df6c983cf8188cb3cf6c7e0f4');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26293', '10000248', 'TRẦN ANH THƯ', '10A6', 'Nữ', '15/10/2011', 'AN-DONG', '26293@ttgdtxcva.edu.vn', '26293', 'bb51b465116df151b0650ad577f4c57029b1cb15ac09a4068292b74491bc27cf');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26294', '10000249', 'PHAN THỊ NGỌC TRÂM', '10A6', 'Nữ', '16/08/2011', 'AN-DONG', '26294@ttgdtxcva.edu.vn', '26294', 'a2075f0dd064905676210bc456fd76bba3f9642bc8bc99414b799cb9ab2b8c74');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26295', '10000250', 'PHAN THÁI NGỌC PHƯƠNG TRINH', '10A6', 'Nữ', '18/08/2011', 'AN-DONG', '26295@ttgdtxcva.edu.vn', '26295', '1105fc0291d24ce2d3567900036661b2e3ae9692f980d79cfdd2942977f08195');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26296', '10000251', 'TRỊNH KIỀU TRINH', '10A6', 'Nữ', '17/10/2011', 'AN-DONG', '26296@ttgdtxcva.edu.vn', '26296', '34161adcb5b7ba3b86b0d3e499e7db12992aa43589ecf66019863345b357493d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26297', '10000252', 'LÊ PHÚ TRỌNG', '10A6', 'Nam', '04/01/2010', 'AN-DONG', '26297@ttgdtxcva.edu.vn', '26297', '0d820b6c9bcc2b0ddbf114e0da24bdb839d05bc1930b66d5f5c357bd3d53bb80');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26298', '10000253', 'PHẠM MẠNH TRƯỜNG', '10A6', 'Nam', '07/03/2011', 'AN-DONG', '26298@ttgdtxcva.edu.vn', '26298', 'df5f6e554528c26eda45d913156a8872df9c43ae3049390dcdc441994dc78b3b');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26299', '10000254', 'ĐOÀN GIA TUẤN', '10A6', 'Nam', '23/06/2011', 'AN-DONG', '26299@ttgdtxcva.edu.vn', '26299', '331664e64af3f6151ef2ea9a9ede34c1393f1723d510789ded7d1e96ed79590a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26300', '10000255', 'TRẦN HUỲNH TƯỜNG VY', '10A6', 'Nữ', '31/05/2011', 'AN-DONG', '26300@ttgdtxcva.edu.vn', '26300', '2aeecc4ee49e100585e9ce142e35053d27ffaf5818ccdb4a845ee96f515f4ad9');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26301', '10000256', 'DƯƠNG ĐẶNG GIA VỸ', '10A6', 'Nam', '01/07/2011', 'AN-DONG', '26301@ttgdtxcva.edu.vn', '26301', '2c1a4a451c3b5492ea81646bd5a65d3b2abc8c26f302291f766e8147c3795e6a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26302', '10000257', 'HỨA NGỌC NHƯ Ý', '10A6', 'Nữ', '01/02/2011', 'AN-DONG', '26302@ttgdtxcva.edu.vn', '26302', '1158c277ea2d54b32cb9afed7154b32fdc7e61242c4d106fd7591bd1eac9a1bd');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26303', '10000258', 'HUỲNH NGỌC YẾN', '10A6', 'Nữ', '12/11/2011', 'AN-DONG', '26303@ttgdtxcva.edu.vn', '26303', '164d7dbf8b19854fbb240c401ef0dd54d0ff50c903992bb8faa96c63c0573327');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26304', '10000259', 'PHAN NGỌC BẢO YẾN', '10A6', 'Nữ', '30/10/2011', 'AN-DONG', '26304@ttgdtxcva.edu.vn', '26304', '847b6ce4b129dc69dc4b29df3efcd327f3a3be41a7355f24209886d85bfe3b36');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26086', '10000045', 'DƯƠNG MỸ ANH', '10A2', 'Nữ', '11/04/2011', 'AN-DONG', '26086@ttgdtxcva.edu.vn', '26086', '1911ae86a0546b0e7c330a549cb1d83cbaedc8b705db4d1733135a1cfb26ffda');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26085', '10000046', 'HUỲNH THỊ NGỌC ANH', '10A2', 'Nữ', '08/12/2011', 'AN-DONG', '26085@ttgdtxcva.edu.vn', '26085', '02fc6d98da5de01f3941ad12cd2dca1df7e7cc08a2070d159e5c317fbbb9aaf8');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26084', '10000047', 'LÝ NGỌC ÂN', '10A2', 'Nữ', '27/08/2010', 'AN-DONG', '26084@ttgdtxcva.edu.vn', '26084', '9f8c88888791248587755063ba8c997c1f8c181d07206a6054834510cb2e7500');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26088', '10000048', 'DƯƠNG NHẬT DUY', '10A2', 'Nam', '14/12/2011', 'AN-DONG', '26088@ttgdtxcva.edu.vn', '26088', '733e1e479feab22f28eb670f2976bece788a760d2443a3b3f65bc600d8b23bd2');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26089', '10000049', 'TRỊNH GIA HÀO', '10A2', 'Nam', '16/10/2011', 'AN-DONG', '26089@ttgdtxcva.edu.vn', '26089', 'e76626c15c4b5380574e1915762506a60ff0eb12406f5d009d3012dea0bc29de');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26093', '10000050', 'HỨA NGUYỄN TUẤN KHANG', '10A2', 'Nam', '02/02/2011', 'AN-DONG', '26093@ttgdtxcva.edu.vn', '26093', '24241a99ad55c2c850f2f1cb9eb6aa0b0805e647f2c79ef3bc833ee017fe3695');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26094', '10000051', 'NGÔ TRÍ KHANG', '10A2', 'Nam', '03/02/2011', 'AN-DONG', '26094@ttgdtxcva.edu.vn', '26094', '6816bdba1e5b2263a6494f37166239d15e9ff1de5c9709f7ee6a98c63cbdff37');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26092', '10000052', 'PHẠM PHÚ KHANG', '10A2', 'Nam', '02/06/2011', 'AN-DONG', '26092@ttgdtxcva.edu.vn', '26092', '8ae316013c17132f4553e98ac8458df219bd0433ab8ae80811ce8d7dd1a71b35');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26091', '10000053', 'TRẦN MINH KHANG', '10A2', 'Nam', '19/04/2011', 'AN-DONG', '26091@ttgdtxcva.edu.vn', '26091', '491389415f6ca2e246407efe11c1984849e4f7e795f7ef7c7d8ceaf51cdf545e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26095', '10000054', 'NGUYỄN HIỀN VÂN KHÁNH', '10A2', 'Nữ', '13/12/2011', 'AN-DONG', '26095@ttgdtxcva.edu.vn', '26095', 'b2244d36bcd7603bdfe236e38d4f57bbed2c7b736503b9ba9d1beb764268cdc0');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26096', '10000055', 'TRẦN ANH KHOA', '10A2', 'Nam', '13/08/2011', 'AN-DONG', '26096@ttgdtxcva.edu.vn', '26096', '78fb55dd5ad64af78e2ec8fd3c7a49fe633df217b77b4d491d787b65e525fc95');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26097', '10000056', 'CÁI CHÍ KIÊN', '10A2', 'Nam', '21/03/2011', 'AN-DONG', '26097@ttgdtxcva.edu.vn', '26097', '5e1da57f3382711caa087aa60dccd92d0cae26bd33efab743ee5c02ed529f152');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26098', '10000057', 'NGUYỄN TẤN LONG', '10A2', 'Nam', '08/12/2010', 'AN-DONG', '26098@ttgdtxcva.edu.vn', '26098', '1bcc05b7fc829f4e180f153263be8a833296bb9c71ef4cd05f1492610187dfa9');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26099', '10000058', 'DƯƠNG HỒNG MY', '10A2', 'Nữ', '24/12/2011', 'AN-DONG', '26099@ttgdtxcva.edu.vn', '26099', 'e9d070626ac8a6df1eeacdad2d195b0c6517a7dd9e6b93bf48d54532c35b5f9f');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26100', '10000059', 'TRẦN PHƯƠNG NGÂN', '10A2', 'Nữ', '05/12/2011', 'AN-DONG', '26100@ttgdtxcva.edu.vn', '26100', '6cc53f648e523d3a4fef598b2d543206f6b51a41d4e870333fcfe3e29f20ae74');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26101', '10000060', 'LÊ HOÀNG BÍCH NGỌC', '10A2', 'Nữ', '14/04/2010', 'AN-DONG', '26101@ttgdtxcva.edu.vn', '26101', '439a599e1bf9cbde07a6a918839b11e1876653d4e1318e1be1e3907e7f94db2c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26102', '10000061', 'TRỊNH HOÀNG BẢO NGỌC', '10A2', 'Nữ', '04/05/2011', 'AN-DONG', '26102@ttgdtxcva.edu.vn', '26102', 'bab8a9a6b45297d62ef440e514722acf74828ac79dcd03ec6cccb0123e93644d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26103', '10000062', 'LÊ MINH NHẬT', '10A2', 'Nam', '18/07/2011', 'AN-DONG', '26103@ttgdtxcva.edu.vn', '26103', '149ca93866bcbbdac39279219aeda7f494d35f07dcde5cc9a7ac306932c62fd0');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26104', '10000063', 'TRẦN KHÁNH THẢO NHI', '10A2', 'Nữ', '13/08/2011', 'AN-DONG', '26104@ttgdtxcva.edu.vn', '26104', '78fb55dd5ad64af78e2ec8fd3c7a49fe633df217b77b4d491d787b65e525fc95');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26105', '10000064', 'NGUYỄN THỊ AN NHIÊN', '10A2', 'Nữ', '02/06/2011', 'AN-DONG', '26105@ttgdtxcva.edu.vn', '26105', '8ae316013c17132f4553e98ac8458df219bd0433ab8ae80811ce8d7dd1a71b35');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26106', '10000065', 'HUỲNH HOÀNG PHÁT', '10A2', 'Nam', '13/02/2011', 'AN-DONG', '26106@ttgdtxcva.edu.vn', '26106', '0abdc85eefdf48c267ab972e1b7e6d3ca559013191cbccd57284e56f1672cc14');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26109', '10000066', 'DANH HOÀNG NHẬT PHƯƠNG', '10A2', 'Nam', '02/11/2011', 'AN-DONG', '26109@ttgdtxcva.edu.vn', '26109', '3ff1dbfe1ef540170a352d6c760c3daf002f5e3e9d49b5cbd63a44cea62dbdee');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26107', '10000067', 'NGUYỄN HỒNG PHƯƠNG', '10A2', 'Nữ', '29/11/2011', 'AN-DONG', '26107@ttgdtxcva.edu.vn', '26107', 'bb83024b8ec182ed8c372c4f34e191aca9c9999acc95850c5de8bb9c6970680c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26108', '10000068', 'TRẦN THANH PHƯƠNG', '10A2', 'Nam', '29/09/2011', 'AN-DONG', '26108@ttgdtxcva.edu.vn', '26108', 'e107517463d734b6e24148a4c0a2b6cacdd1a18c54526860e51d2f9004d4a8ca');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26111', '10000069', 'HUỲNH NGUYỄN MINH QUANG', '10A2', 'Nam', '23/01/2011', 'AN-DONG', '26111@ttgdtxcva.edu.vn', '26111', '482375b4d5b6c72e5a35e8ae007affc072b6e597cbf54e7e03a4dbea31473dc8');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26110', '10000070', 'NGUYỄN TRÍ QUANG', '10A2', 'Nam', '13/11/2011', 'AN-DONG', '26110@ttgdtxcva.edu.vn', '26110', '6175897b46059ac40ccc856807519a67d8f14258b55df9cb09ce5dc8ec8e35c9');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26112', '10000071', 'LƯ THÁI NGỌC QUỲNH', '10A2', 'Nữ', '23/12/2008', 'AN-DONG', '26112@ttgdtxcva.edu.vn', '26112', '4c0eb78651eb03584f948dc039585b53f2e7428ca379a390f8a0739f111e3d4e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26113', '10000072', 'LƯU BỘI SAN', '10A2', 'Nữ', '21/11/2011', 'AN-DONG', '26113@ttgdtxcva.edu.vn', '26113', '797386c634910e94dbd8013e01fcd5e5c9fb179fa7ad591ecd630c569b6304f1');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26114', '10000073', 'KARIÊM SUHAYLA', '10A2', 'Nữ', '02/09/2011', 'AN-DONG', '26114@ttgdtxcva.edu.vn', '26114', '17aa497bbe3ca6c374b518b4ca248b667e0677d34e2113aa3a3dc116f2a444bb');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26115', '10000074', 'KHƯU KHANG THÁI', '10A2', 'Nam', '23/10/2010', 'AN-DONG', '26115@ttgdtxcva.edu.vn', '26115', '7fe6fd8f67c3dfce9747b68b1d35432ef33076271a9de8fb97e370b262e22641');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26117', '10000075', 'LÊ THANH THẢO', '10A2', 'Nữ', '25/09/2011', 'AN-DONG', '26117@ttgdtxcva.edu.vn', '26117', 'd0db3bf64fbac2425a16b51843588502f6be8a100a92892338d38f1248d3541e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26116', '10000076', 'TỪ HỮU THẮNG', '10A2', 'Nam', '09/01/2011', 'AN-DONG', '26116@ttgdtxcva.edu.vn', '26116', '9f9856a30665a5cc15edc8453fc27971697bda1e6ce01bb33932a254a0d9c5a3');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26118', '10000077', 'NGUYỄN QUỐC THỊNH', '10A2', 'Nam', '29/10/2011', 'AN-DONG', '26118@ttgdtxcva.edu.vn', '26118', 'dbf1a048ed8156246cb5456189da5e5f5fa730d5d91da39598675978c6f451bd');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26119', '10000078', 'NGUYỄN ĐỨC THÔNG', '10A2', 'Nam', '03/05/2010', 'AN-DONG', '26119@ttgdtxcva.edu.vn', '26119', 'eefeac10a5dea3fe2c68df80f41ad42c03260e34287f761c00961509833fc729');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26120', '10000079', 'HUỲNH THỤC UYÊN', '10A2', 'Nữ', '09/06/2011', 'AN-DONG', '26120@ttgdtxcva.edu.vn', '26120', '52d7762923cbb1d2b3a7c84218da9c192900f7fd3c64c319f26969a30bd0d737');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26122', '10000080', 'LƯU ĐẠT VINH', '10A2', 'Nam', '09/08/2011', 'AN-DONG', '26122@ttgdtxcva.edu.vn', '26122', 'd795c5769d2c9c037dda4078a8d8cdfbce88aae98370643d16a222f8242ab722');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26123', '10000081', 'TRẦN HƯƠNG VƯỢNG', '10A2', 'Nam', '01/05/2011', 'AN-DONG', '26123@ttgdtxcva.edu.vn', '26123', 'dc354db5ef3359532e5d5e837c0703686277ffcdb9ab713dee3e5e90bc35474c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26125', '10000082', 'NGÔ THANH VY', '10A2', 'Nữ', '06/02/2011', 'AN-DONG', '26125@ttgdtxcva.edu.vn', '26125', '5bf775126f76c21c9aae63601a4c77e14e3f39c8f2a39b60278a176665d86062');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26124', '10000083', 'NGUYỄN THỤY THANH VY', '10A2', 'Nữ', '11/12/2011', 'AN-DONG', '26124@ttgdtxcva.edu.vn', '26124', '245324ac24d61c8a292a5920b7d4e424b5edf455d83a383c711beaf05ef0cbcc');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26126', '10000084', 'TRƯƠNG ƯNG XUÂN', '10A2', 'Nữ', '02/11/2011', 'AN-DONG', '26126@ttgdtxcva.edu.vn', '26126', '3ff1dbfe1ef540170a352d6c760c3daf002f5e3e9d49b5cbd63a44cea62dbdee');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26127', '10000085', 'LÂM THANH HẢI YẾN', '10A2', 'Nữ', '01/04/2011', 'AN-DONG', '26127@ttgdtxcva.edu.vn', '26127', 'b6e8e5356cee10a94392635130918bc57f102a02ef0593eca8b1702bfea7bd94');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26128', '10000086', 'HUỲNH NGUYỄN MINH ANH', '10A3', 'Nữ', '23/09/2011', 'AN-DONG', '26128@ttgdtxcva.edu.vn', '26128', 'b0d3bde90ba833966079ec32e52dc764599398fea4057c2e56b85b6348aba04e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26129', '10000087', 'MAI BÁ THANH BÌNH', '10A3', 'Nam', '16/05/2011', 'AN-DONG', '26129@ttgdtxcva.edu.vn', '26129', 'fa6ef7a20c805ae887c3437638bd9f223570ae6df6c983cf8188cb3cf6c7e0f4');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26130', '10000088', 'NGUYỄN NGỌC BẢO CHÂU', '10A3', 'Nữ', '24/02/2011', 'AN-DONG', '26130@ttgdtxcva.edu.vn', '26130', '49a7d3b28d4a4f298f92506084b70d7bb1213ea357f5a50e22be7b23f3ea3e4b');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26131', '10000089', 'TRẦN NGỌC CHÂU', '10A3', 'Nữ', '19/04/2011', 'AN-DONG', '26131@ttgdtxcva.edu.vn', '26131', '491389415f6ca2e246407efe11c1984849e4f7e795f7ef7c7d8ceaf51cdf545e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26133', '10000090', 'LƯ HOÀNG MINH DUY', '10A3', 'Nam', '31/03/2011', 'AN-DONG', '26133@ttgdtxcva.edu.vn', '26133', 'f80f500aa86a5c53a07f92d06cc709c34550fd009c5f8b66b90cb0fece2d3bcb');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26134', '10000091', 'TRẦN KIM DUYÊN', '10A3', 'Nữ', '28/02/2011', 'AN-DONG', '26134@ttgdtxcva.edu.vn', '26134', '53ca174c3eb294bc9ee15739ee87cc3ade400e8db2e02e8637c06a2181269fa2');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26132', '10000092', 'TRẦN MINH ĐÊ', '10A3', 'Nam', '23/04/2011', 'AN-DONG', '26132@ttgdtxcva.edu.vn', '26132', 'd0a6644f2676d1babf3e1c5c1e5dd2a1b904c7aa59702f49bbe60c3470d5573f');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26135', '10000093', 'TRẦN NGUYỄN HOÀNG GIA', '10A3', 'Nam', '03/01/2011', 'AN-DONG', '26135@ttgdtxcva.edu.vn', '26135', '7ec1f0397b1bc2c1a1761629b4a4f36f65d0db61e96b41d41d4812bc3c820cf3');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26136', '10000094', 'ĐỖ LÊ KHÁNH HÀO', '10A3', 'Nam', '28/08/2011', 'AN-DONG', '26136@ttgdtxcva.edu.vn', '26136', 'dd03431874f01040789fd7a4bfef0fe61c38ed637e4d79a4852244a33e072d2b');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26139', '10000095', 'PHẠM NGUYỄN GIA HUY', '10A3', 'Nam', '12/08/2011', 'AN-DONG', '26139@ttgdtxcva.edu.vn', '26139', '9be312a8aad7a4f9d0b18a3b69c1298b2c6d7492cadcf9776d4e032ca2f32388');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26140', '10000096', 'PHẠM NGUYỄN QUANG HUY', '10A3', 'Nam', '13/05/2011', 'AN-DONG', '26140@ttgdtxcva.edu.vn', '26140', 'ca38625ef8d41ea8351000e4b5304acec06a92d610b46869d6c95dbd197a532e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26138', '10000097', 'TẠ CAO THANH HUY', '10A3', 'Nam', '28/04/2011', 'AN-DONG', '26138@ttgdtxcva.edu.vn', '26138', '5769ca3f0dc8512a813e3222726ea5f703fe4f692265611abc404f4267aa5922');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26137', '10000098', 'NGUYỄN ĐINH QUỐC HỮU', '10A3', 'Nam', '25/05/2011', 'AN-DONG', '26137@ttgdtxcva.edu.vn', '26137', 'e0b666a8b3c70c4be94cfbca7974162c982467c290fed0a544f6cd2421dabf31');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26141', '10000099', 'VĂN NGUYỄN BẢO KHÁNH', '10A3', 'Nam', '03/07/2011', 'AN-DONG', '26141@ttgdtxcva.edu.vn', '26141', '9b775cbab98e75afe384366eca7f7862cfa2ef5ff433b7dea9171b98d9025d9f');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26142', '10000100', 'LÊ THANH KHƯƠNG', '10A3', 'Nam', '22/11/2011', 'AN-DONG', '26142@ttgdtxcva.edu.vn', '26142', 'dbe86cb1013e982a4a21bba4efcbfc795dee65f098ad4c11b0af41e7b3611d5e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26143', '10000101', 'HUỲNH TRUNG KIÊN', '10A3', 'Nam', '15/04/2011', 'AN-DONG', '26143@ttgdtxcva.edu.vn', '26143', 'b0fbaf4ce1e8bf595f24f2bd3125fbfc23c7f433486501d4a72263aac786b5ce');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26144', '10000102', 'CHÂU PHAN TÀI LỘC', '10A3', 'Nam', '03/06/2011', 'AN-DONG', '26144@ttgdtxcva.edu.vn', '26144', 'ac0d567c5023cc8e651e265a4604dc0ecfaa0db8450efdc809fc256bc4aaa4f5');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26146', '10000103', 'PHẠM MINH LUÂN', '10A3', 'Nam', '07/04/2011', 'AN-DONG', '26146@ttgdtxcva.edu.vn', '26146', 'cbbe8eee0364e7b31a89836cd601e80253a6acbd5b1c908fad0265d59d17756f');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26145', '10000104', 'VƯƠNG GIA LUÂN', '10A3', 'Nam', '29/10/2011', 'AN-DONG', '26145@ttgdtxcva.edu.vn', '26145', 'dbf1a048ed8156246cb5456189da5e5f5fa730d5d91da39598675978c6f451bd');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26148', '10000105', 'LÊ THỊ MAI', '10A3', 'Nữ', '24/01/2011', 'AN-DONG', '26148@ttgdtxcva.edu.vn', '26148', '350b2ebde9763db82ec260493c5ad8654babeca5e2bd5455e71725eb51a84bd1');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26147', '10000106', 'TRƯƠNG XUÂN MAI', '10A3', 'Nữ', '27/11/2011', 'AN-DONG', '26147@ttgdtxcva.edu.vn', '26147', '20280e177d2dc86275a7d125f964c113f71292a43307c0bd2dbedaafe2ba21d4');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26149', '10000107', 'NGUYỄN DƯƠNG NHẬT MINH', '10A3', 'Nam', '25/07/2011', 'AN-DONG', '26149@ttgdtxcva.edu.vn', '26149', 'a17debefac04ef024e6e05a894a6e096fc303e4493cd188a25b2b6b529540282');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26150', '10000108', 'NGUYỄN HOÀNG MINH', '10A3', 'Nam', '14/10/2011', 'AN-DONG', '26150@ttgdtxcva.edu.vn', '26150', '477e8f8581c4627a483b40cbdab7a56a6a2c6ad8855e588feb758ab84d3c467f');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26151', '10000109', 'TRẦN NGUYỄN NGỌC MỸ', '10A3', 'Nữ', '01/03/2010', 'AN-DONG', '26151@ttgdtxcva.edu.vn', '26151', 'cf99b75cc26c05e3e94e3c19902adc3bb92596838cd56131ae0fb55cc86f0e27');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26152', '10000110', 'HUỲNH NGUYỄN THUÝ NGA', '10A3', 'Nữ', '17/11/2011', 'AN-DONG', '26152@ttgdtxcva.edu.vn', '26152', '8a8fa144fd74d94dbed0a5124bdf213637989371fd7ab2c305dc9ee18139046b');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26154', '10000111', 'PHAN NGUYỄN YẾN NHI', '10A3', 'Nữ', '14/12/2011', 'AN-DONG', '26154@ttgdtxcva.edu.vn', '26154', '733e1e479feab22f28eb670f2976bece788a760d2443a3b3f65bc600d8b23bd2');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26153', '10000112', 'VÕ THỊ YẾN NHI', '10A3', 'Nữ', '13/04/2011', 'AN-DONG', '26153@ttgdtxcva.edu.vn', '26153', 'f12296e6b98243c42ff7abd200c05762132b98a9b26381096ab12e2ff6b506f6');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26156', '10000113', 'LÊ PHƯƠNG NHƯ', '10A3', 'Nữ', '15/12/2010', 'AN-DONG', '26156@ttgdtxcva.edu.vn', '26156', '78b6deee57d613a0e565fac1786fe2e232eb173f12eeb79adc40bd48d8d36f24');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26155', '10000114', 'NGUYỄN PHẠM QUỲNH NHƯ', '10A3', 'Nữ', '26/04/2011', 'AN-DONG', '26155@ttgdtxcva.edu.vn', '26155', '6f70b1f2019df4489accefc48e7ec196b4a185813950499441c2af9cf7f50e7f');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26157', '10000115', 'VÕ MINH QUÂN', '10A3', 'Nam', '02/01/2011', 'AN-DONG', '26157@ttgdtxcva.edu.vn', '26157', '0cc110766994470f82369d275d3968465bbdc767556f8efa98749c297c98c520');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26158', '10000116', 'CAO MINH QUỐC', '10A3', 'Nam', '05/02/2011', 'AN-DONG', '26158@ttgdtxcva.edu.vn', '26158', '91c6f97a8148c3720fe5f57f6513a28d764af80bfbe2a39552804309e897a041');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26159', '10000117', 'TRẦN HẢI SƠN', '10A3', 'Nam', '04/07/2011', 'AN-DONG', '26159@ttgdtxcva.edu.vn', '26159', 'af4e0efd98202be2f378e6ce7a0bdabb576bfaddfd247f108a01db0041d5322d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26160', '10000118', 'NGÔ HÀ ĐÌNH THÁI', '10A3', 'Nam', '29/12/2011', 'AN-DONG', '26160@ttgdtxcva.edu.vn', '26160', '89672c229d88fd0868bcd7b0405991e7a98c55750aaf4da4f635c5bf95ad03f6');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26161', '10000119', 'MAI THỊ HƯƠNG THI', '10A3', 'Nữ', '15/07/2011', 'AN-DONG', '26161@ttgdtxcva.edu.vn', '26161', '2827e6f657c8aaebd19089a936bcc65d6d67ef1411e0a2da2afb0d7c2e170c2d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26162', '10000120', 'LÂM CHÍ THIỆN', '10A3', 'Nam', '17/09/2010', 'AN-DONG', '26162@ttgdtxcva.edu.vn', '26162', '499e3d53090309a06d796fa4c5ba1d102f3c0c507b77f45fd737fe3d5d4d3d16');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26163', '10000121', 'VŨ HOÀNG ĐỨC THỊNH', '10A3', 'Nam', '09/11/2011', 'AN-DONG', '26163@ttgdtxcva.edu.vn', '26163', '5ec0364898c7957111c7865c08095d55c6a4e3ab008c27e830e0607e7e4ecdcc');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26164', '10000122', 'VŨ LỆ TIỀN', '10A3', 'Nữ', '04/06/2011', 'AN-DONG', '26164@ttgdtxcva.edu.vn', '26164', 'bf17c46547e9887cb9e3e0fbc955e85a225a68e9e3e6466ed2c0b98f15c51071');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26165', '10000123', 'VÕ PHẠM THANH TRÀ', '10A3', 'Nữ', '30/05/2011', 'AN-DONG', '26165@ttgdtxcva.edu.vn', '26165', 'e1c14d3c2116c6992339b3feef853b621aa460bf8436fe1afa4c8418b94b3b48');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26166', '10000124', 'TRẦN VĂN TRÍ', '10A3', 'Nam', '26/11/2011', 'AN-DONG', '26166@ttgdtxcva.edu.vn', '26166', '95812c7651f447d5da4a632018b69273b4691580ab920bf8b82fbe77d4b66781');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26167', '10000125', 'NGUYỄN THỊ THANH TRÚC', '10A3', 'Nữ', '11/08/2011', 'AN-DONG', '26167@ttgdtxcva.edu.vn', '26167', 'ed5714b08d901930359244baa5f50e6bab7796176cc4933d07e1e2e00efc647a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26168', '10000126', 'ĐỖ TUẤN TÚ', '10A3', 'Nam', '13/02/2011', 'AN-DONG', '26168@ttgdtxcva.edu.vn', '26168', '0abdc85eefdf48c267ab972e1b7e6d3ca559013191cbccd57284e56f1672cc14');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26169', '10000127', 'TRẦN NGÔ THÁI TUẤN', '10A3', 'Nam', '14/09/2011', 'AN-DONG', '26169@ttgdtxcva.edu.vn', '26169', 'b48fb98dcbe9c051125f198a0f2f39c6f5a8821d2a45d93b1a7f6b64f1e97e4d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26170', '10000128', 'HẠ QUỐC VINH', '10A3', 'Nam', '08/05/2011', 'AN-DONG', '26170@ttgdtxcva.edu.vn', '26170', 'd7d6b428f73a1e5fbfd6d5f89144ce7a70b09bbb341b428f592fa99fde5c23ec');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26171', '10000129', 'PHAN HÀ NGỌC VY', '10A3', 'Nữ', '21/12/2011', 'AN-DONG', '26171@ttgdtxcva.edu.vn', '26171', '18714b61260be823fae54079ecf31d22869d71cf605ba3f09f12b337c06feaf2');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26172', '10000130', 'VÕ HUỲNH GIA VỸ', '10A3', 'Nam', '22/10/2011', 'AN-DONG', '26172@ttgdtxcva.edu.vn', '26172', 'f70021826b1915457fa377063b4d57afb3df5f3804ad0eb2493d3d613a5501ef');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26173', '10000131', 'NGUYỄN THỊ NGỌC YẾN', '10A3', 'Nữ', '12/03/2011', 'AN-DONG', '26173@ttgdtxcva.edu.vn', '26173', '3818876534e4ee2c71478087d86e53ec7f929e6c38a4ae74c1b8447b36ccc3c2');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26218', '10000173', 'KIỀU ĐỨC ANH', '10A5', 'Nam', '25/05/2010', 'AN-DONG', '26218@ttgdtxcva.edu.vn', '26218', 'bfc04156f6f0875d8fd12bbea3ffec7cdd9b6ce280f00dd379abee8e62d7fd2d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26219', '10000174', 'PHAN NGUYỄN HOÀI ANH', '10A5', 'Nữ', '19/05/2011', 'AN-DONG', '26219@ttgdtxcva.edu.vn', '26219', 'c82c04aea8317d923bade6500548e906ce6d9ead3f8539dff1e6b1520e6aff6d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26217', '10000175', 'HUỲNH NGUYỄN NGỌC ÂN', '10A5', 'Nữ', '11/12/2011', 'AN-DONG', '26217@ttgdtxcva.edu.vn', '26217', '245324ac24d61c8a292a5920b7d4e424b5edf455d83a383c711beaf05ef0cbcc');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26220', '10000176', 'VÕ QUYỀN CHƯƠNG', '10A5', 'Nam', '14/06/2011', 'AN-DONG', '26220@ttgdtxcva.edu.vn', '26220', '882bd9bb193c68aaa6ecee32ca6e824b9bcb538c5cf11007368226c1af6606aa');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26221', '10000177', 'NGUYỄN NGỌC KIM CƯƠNG', '10A5', 'Nữ', '18/11/2011', 'AN-DONG', '26221@ttgdtxcva.edu.vn', '26221', '328dc2c14e3543735f5060ab217192999cbc081af7e7dd8db7024d0e08fecda5');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26224', '10000178', 'CAO DƯƠNG THUỲ DƯƠNG', '10A5', 'Nữ', '23/05/2011', 'AN-DONG', '26224@ttgdtxcva.edu.vn', '26224', 'a01991eb56c9b97acbb3ab55dc55fe0cd69177d362f50a74de358942b78bcfe2');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26223', '10000179', 'NGUYỄN TẤN ĐẠT', '10A5', 'Nam', '09/02/2011', 'AN-DONG', '26223@ttgdtxcva.edu.vn', '26223', 'b98af0233fbf58755bfaf77a524fe1c9b1dc2959be1f80578bdb2b18fb697843');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26222', '10000180', 'HUỲNH HẢI ĐĂNG', '10A5', 'Nam', '18/09/2011', 'AN-DONG', '26222@ttgdtxcva.edu.vn', '26222', 'f7c4bbcc7e4df8b336c526adc261108da36b8e7db5e8f8d515a25a023eeb7814');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26225', '10000181', 'NGUYỄN LÊ MINH HẢI', '10A5', 'Nam', '27/04/2011', 'AN-DONG', '26225@ttgdtxcva.edu.vn', '26225', 'ef5e798275e5f2783a8871136a939fd56ace2bc7d7b0823058b6832180328c44');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26226', '10000182', 'KIỀU GIA HÂN', '10A5', 'Nữ', '14/06/2011', 'AN-DONG', '26226@ttgdtxcva.edu.vn', '26226', '882bd9bb193c68aaa6ecee32ca6e824b9bcb538c5cf11007368226c1af6606aa');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26227', '10000183', 'LÂM BẢO HÂN', '10A5', 'Nữ', '21/05/2011', 'AN-DONG', '26227@ttgdtxcva.edu.vn', '26227', '68923496c7fe6bce21d49906211d64ce958f9c571694cf1462017664ccc67fcf');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26228', '10000184', 'LA GIA HƯNG', '10A5', 'Nam', '05/01/2010', 'AN-DONG', '26228@ttgdtxcva.edu.vn', '26228', '363a0373a92d17d6119fee960861fba444abf5c53e4517ee992162e42e6836df');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26229', '10000185', 'HUYÊN MINH HY', '10A5', 'Nữ', '14/06/2011', 'AN-DONG', '26229@ttgdtxcva.edu.vn', '26229', '882bd9bb193c68aaa6ecee32ca6e824b9bcb538c5cf11007368226c1af6606aa');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26230', '10000186', 'NGUYỄN XUÂN HỶ', '10A5', 'Nữ', '14/05/2011', 'AN-DONG', '26230@ttgdtxcva.edu.vn', '26230', 'b9316c6b075325ec0fabaa73990cedbcb7df28d4ce22437379554dce93380e6d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26232', '10000187', 'TRẦM GIA KIỆT', '10A5', 'Nam', '18/11/2011', 'AN-DONG', '26232@ttgdtxcva.edu.vn', '26232', '328dc2c14e3543735f5060ab217192999cbc081af7e7dd8db7024d0e08fecda5');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26231', '10000188', 'TRẦN QUỐC KIỆT', '10A5', 'Nam', '06/08/2010', 'AN-DONG', '26231@ttgdtxcva.edu.vn', '26231', '3748daded6c2795341b5c0a25b5fe992cbfcd9a630a408ea4ba96499bf6e1204');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26233', '10000189', 'TRẦN THỊ SAO MAI', '10A5', 'Nữ', '27/05/2010', 'AN-DONG', '26233@ttgdtxcva.edu.vn', '26233', '132d4117e0d987329d65fe1b96d45aeb34f777c7872a2f22a6d3740ab6f2a7d1');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26234', '10000190', 'LÊ HOÀNG MINH', '10A5', 'Nam', '14/01/2011', 'AN-DONG', '26234@ttgdtxcva.edu.vn', '26234', '4061e3aa42d7dcae3abe0b646fd97e76ba4a3fb5ff78c0cdf3a67297d7e5f901');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26235', '10000191', 'HUỲNH NGỌC NGÀ', '10A5', 'Nữ', '24/10/2011', 'AN-DONG', '26235@ttgdtxcva.edu.vn', '26235', '53df19a77055b497bc6d6c43d24639dee1165c701ebfbd76ff2502bdfe812089');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26237', '10000192', 'CUNG PHAN TÚ NGUYÊN', '10A5', 'Nữ', '08/10/2011', 'AN-DONG', '26237@ttgdtxcva.edu.vn', '26237', '163dacd95db4392da27c4dd4e2cc9f9dd29b86407886104d0c720dac8121fedd');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26236', '10000193', 'TÔ KHÁNH NGUYÊN', '10A5', 'Nam', '17/03/2011', 'AN-DONG', '26236@ttgdtxcva.edu.vn', '26236', '4422d96429ad584fee07928be510d5d201c135e19a81ad91e2c14a3f956c0d52');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26238', '10000194', 'NGUYỄN THANH NHÃ', '10A5', 'Nữ', '25/07/2011', 'AN-DONG', '26238@ttgdtxcva.edu.vn', '26238', 'a17debefac04ef024e6e05a894a6e096fc303e4493cd188a25b2b6b529540282');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26239', '10000195', 'LÂM ÁI NHI', '10A5', 'Nữ', '30/09/2011', 'AN-DONG', '26239@ttgdtxcva.edu.vn', '26239', 'ea5ed059ec838b47ccc15881a84edda354df7dac8bb196afb6d3bfdf314411e9');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26240', '10000196', 'TRẦN NGỌC NHƯ', '10A5', 'Nữ', '17/09/2011', 'AN-DONG', '26240@ttgdtxcva.edu.vn', '26240', '3b7267a2c2e74c46943765deb9841faccaf2e8f8f396094d1bed20f3292c4023');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26241', '10000197', 'TRẦN NGỌC BẢO NHƯ', '10A5', 'Nữ', '01/11/2011', 'AN-DONG', '26241@ttgdtxcva.edu.vn', '26241', '3d0d710b2844ef345831f9dc5604a958c7b04b8c17b10ec7a3035b038d4c333c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26243', '10000198', 'NGUYỄN MINH PHONG', '10A5', 'Nam', '17/09/2011', 'AN-DONG', '26243@ttgdtxcva.edu.vn', '26243', '3b7267a2c2e74c46943765deb9841faccaf2e8f8f396094d1bed20f3292c4023');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26242', '10000199', 'QUÁCH HOÀNG PHONG', '10A5', 'Nam', '30/06/2011', 'AN-DONG', '26242@ttgdtxcva.edu.vn', '26242', 'a4997234ae5bd074534c26b0cd66cfb5448305239a1f92fcb3676c84bb135d91');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26244', '10000200', 'NGUYỄN UYÊN PHƯƠNG', '10A5', 'Nữ', '24/04/2011', 'AN-DONG', '26244@ttgdtxcva.edu.vn', '26244', '95000404554bf810b1905a7dcadde2f5f0031144dd69b57c05a7021ce6e422c5');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26245', '10000201', 'TRẦN TRÍ QUỐC', '10A5', 'Nam', '09/02/2011', 'AN-DONG', '26245@ttgdtxcva.edu.vn', '26245', 'b98af0233fbf58755bfaf77a524fe1c9b1dc2959be1f80578bdb2b18fb697843');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26246', '10000202', 'PHẠM VĂN QUÝ', '10A5', 'Nam', '19/08/2011', 'AN-DONG', '26246@ttgdtxcva.edu.vn', '26246', 'bb83be3f0a51b185c0072aea5149b8ef591f25ef5e81fe9ff32910f1721e331d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26247', '10000203', 'LÝ BỘI SAN', '10A5', 'Nữ', '21/09/2011', 'AN-DONG', '26247@ttgdtxcva.edu.vn', '26247', '0e2c21c3f65a2361e95f9daf21268965b570701da7f3fee31634147693a4d474');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26248', '10000204', 'PHAN THÀNH TÀI', '10A5', 'Nam', '21/02/2010', 'AN-DONG', '26248@ttgdtxcva.edu.vn', '26248', '61a58574f57a4e7837592b6b595d6388fa5b40e7e0a92f5e1c1f2036397497c9');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26251', '10000205', 'HOÀNG PHƯƠNG THẢO', '10A5', 'Nữ', '03/12/2011', 'AN-DONG', '26251@ttgdtxcva.edu.vn', '26251', '8e7d5bc9d03b5cee7f64d621c056d06f6e9931a7addfeee121cb6ec8f75e768d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26249', '10000206', 'LÊ THỊ THANH THẢO', '10A5', 'Nữ', '18/11/2011', 'AN-DONG', '26249@ttgdtxcva.edu.vn', '26249', '328dc2c14e3543735f5060ab217192999cbc081af7e7dd8db7024d0e08fecda5');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26250', '10000207', 'TRẦN THANH THẢO', '10A5', 'Nữ', '29/11/2011', 'AN-DONG', '26250@ttgdtxcva.edu.vn', '26250', 'bb83024b8ec182ed8c372c4f34e191aca9c9999acc95850c5de8bb9c6970680c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26252', '10000208', 'TRẦN HOÀNG THIỆN', '10A5', 'Nam', '11/05/2011', 'AN-DONG', '26252@ttgdtxcva.edu.vn', '26252', 'b8d81c8afef959a551ee44d09b3ae2866d3246026bd41ddb99f7a2ee6d426246');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26253', '10000209', 'LÃ HUY THỊNH', '10A5', 'Nam', '12/11/2011', 'AN-DONG', '26253@ttgdtxcva.edu.vn', '26253', '164d7dbf8b19854fbb240c401ef0dd54d0ff50c903992bb8faa96c63c0573327');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26254', '10000210', 'NGUYỄN THỊ NGỌC THƠM', '10A5', 'Nữ', '09/08/2011', 'AN-DONG', '26254@ttgdtxcva.edu.vn', '26254', 'd795c5769d2c9c037dda4078a8d8cdfbce88aae98370643d16a222f8242ab722');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26255', '10000211', 'CAO NGUYỄN BẢO TRÂN', '10A5', 'Nữ', '29/11/2011', 'AN-DONG', '26255@ttgdtxcva.edu.vn', '26255', 'bb83024b8ec182ed8c372c4f34e191aca9c9999acc95850c5de8bb9c6970680c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26256', '10000212', 'NGUYỄN ĐỖ MINH TRƯỜNG', '10A5', 'Nam', '01/06/2011', 'AN-DONG', '26256@ttgdtxcva.edu.vn', '26256', '6e2b458924ea242581eff94fbc920a614610897f23ce1d155643c18e65c00355');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26257', '10000213', 'ĐÀM TỊNH VĂN', '10A5', 'Nữ', '15/01/2011', 'AN-DONG', '26257@ttgdtxcva.edu.vn', '26257', '920b0a309caaec4df3b71b94ddaa9ca786a58f6f093fcdab93373208050f9ed7');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26258', '10000214', 'LÊ QUỐC VINH', '10A5', 'Nam', '10/09/2010', 'AN-DONG', '26258@ttgdtxcva.edu.vn', '26258', '1774e66475842597761dee46c16b49edf4247c80becb92404f2762aabfb99c2a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26259', '10000215', 'TRẦN NHÃ VY', '10A5', 'Nữ', '09/11/2011', 'AN-DONG', '26259@ttgdtxcva.edu.vn', '26259', '5ec0364898c7957111c7865c08095d55c6a4e3ab008c27e830e0607e7e4ecdcc');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26260', '10000216', 'TRỊNH NGỌC VY', '10A5', 'Nữ', '14/12/2011', 'AN-DONG', '26260@ttgdtxcva.edu.vn', '26260', '733e1e479feab22f28eb670f2976bece788a760d2443a3b3f65bc600d8b23bd2');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26432', '10000428', 'LƯƠNG NGỌC ANH', '10A10', 'Nữ', '27/12/2011', 'AN-DONG', '26432@ttgdtxcva.edu.vn', '26432', '84bd347e27ce26b1e491e963c8d597f040ee4a8dd99d2a451cc4a9d7548e4be4');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26433', '10000429', 'PHẠM CAO CƯỜNG', '10A10', 'Nam', '03/06/2011', 'AN-DONG', '26433@ttgdtxcva.edu.vn', '26433', 'ac0d567c5023cc8e651e265a4604dc0ecfaa0db8450efdc809fc256bc4aaa4f5');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26435', '10000430', 'DƯƠNG ĐẠI DŨNG', '10A10', 'Nam', '17/02/2011', 'AN-DONG', '26435@ttgdtxcva.edu.vn', '26435', '626ede8776ba7f4cd6501d845caa2f30eac45379f50a65015a720f44ff0a9ad4');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26434', '10000431', 'NGUYỄN CHÍ DŨNG', '10A10', 'Nam', '30/08/2011', 'AN-DONG', '26434@ttgdtxcva.edu.vn', '26434', '1e7fff47fff6d4d738b695e58133fa988049d13bf751fbd8ced4c8b0641869a7');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26437', '10000432', 'VŨ NGỌC THÚY HẰNG', '10A10', 'Nữ', '07/11/2011', 'AN-DONG', '26437@ttgdtxcva.edu.vn', '26437', 'fb1442d35b19f093ef8dbe6b026e2146c88bf020bf3d8f890b2c12bb0ef49f53');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26436', '10000433', 'ĐỖ HOÀNG GIA HÂN', '10A10', 'Nữ', '09/09/2011', 'AN-DONG', '26436@ttgdtxcva.edu.vn', '26436', '476179c12a35972955757eb222d15cfae94273d51e01598f7ba33ff1aa0d585c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26438', '10000434', 'TRƯƠNG TRỌNG HIẾU', '10A10', 'Nam', '01/07/2011', 'AN-DONG', '26438@ttgdtxcva.edu.vn', '26438', '2c1a4a451c3b5492ea81646bd5a65d3b2abc8c26f302291f766e8147c3795e6a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26439', '10000435', 'MẠCH TIẾN HƯNG', '10A10', 'Nam', '31/05/2011', 'AN-DONG', '26439@ttgdtxcva.edu.vn', '26439', '2aeecc4ee49e100585e9ce142e35053d27ffaf5818ccdb4a845ee96f515f4ad9');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26440', '10000436', 'TRẦN GIA HƯNG', '10A10', 'Nam', '11/03/2011', 'AN-DONG', '26440@ttgdtxcva.edu.vn', '26440', '95adb32f3cc00e532ceb35bd8eded7f1e408c5f7e7571ffdd4c5299b63c2ab0e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26441', '10000437', 'HÀ ANH KHẢI', '10A10', 'Nam', '05/02/2011', 'AN-DONG', '26441@ttgdtxcva.edu.vn', '26441', '91c6f97a8148c3720fe5f57f6513a28d764af80bfbe2a39552804309e897a041');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26442', '10000438', 'ĐOÀN HUY KHANG', '10A10', 'Nam', '09/10/2011', 'AN-DONG', '26442@ttgdtxcva.edu.vn', '26442', 'f7d31dbba1d21251cb71543b59ef5b2327c95b77b3891a11c920c8f0ce415575');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26443', '10000439', 'LÊ NAM KHIÊM', '10A10', 'Nam', '25/09/2011', 'AN-DONG', '26443@ttgdtxcva.edu.vn', '26443', 'd0db3bf64fbac2425a16b51843588502f6be8a100a92892338d38f1248d3541e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26444', '10000440', 'PHÙ MỸ LINH', '10A10', 'Nữ', '18/03/2011', 'AN-DONG', '26444@ttgdtxcva.edu.vn', '26444', '9f3070f749cb3422fe240a05892d0ff956cb3d67366971728ff1141d75684010');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26445', '10000441', 'NGUYỄN HẠ MY', '10A10', 'Nữ', '23/06/2011', 'AN-DONG', '26445@ttgdtxcva.edu.vn', '26445', '331664e64af3f6151ef2ea9a9ede34c1393f1723d510789ded7d1e96ed79590a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26446', '10000442', 'LÊ HOÀNG MỸ', '10A10', 'Nữ', '28/05/2011', 'AN-DONG', '26446@ttgdtxcva.edu.vn', '26446', '2cdbb3d655c53585236064e1bcbc0d85314d20c6529358d325f5f5993ca1fba4');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26448', '10000443', 'MAI NHẬT KHÁNH NHI', '10A10', 'Nữ', '20/09/2011', 'AN-DONG', '26448@ttgdtxcva.edu.vn', '26448', '5e82459d588a3fe068c51eae2dd78ae9f74464779c259a37a59700d98d60507a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26447', '10000444', 'TRỊNH DƯƠNG YẾN NHI', '10A10', 'Nữ', '05/11/2011', 'AN-DONG', '26447@ttgdtxcva.edu.vn', '26447', '01c50a207a02aa0d05aa3e13cb4ff1b040e5f077a33a7dd55e9d71b03192fb1e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26449', '10000445', 'TRỊNH HUỲNH HỮU QUANG', '10A10', 'Nam', '27/11/2011', 'AN-DONG', '26449@ttgdtxcva.edu.vn', '26449', '20280e177d2dc86275a7d125f964c113f71292a43307c0bd2dbedaafe2ba21d4');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26450', '10000446', 'TRẦN NGỌC QUẾ', '10A10', 'Nữ', '14/06/2011', 'AN-DONG', '26450@ttgdtxcva.edu.vn', '26450', '882bd9bb193c68aaa6ecee32ca6e824b9bcb538c5cf11007368226c1af6606aa');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26451', '10000447', 'PHẠM XUÂN QUỲNH', '10A10', 'Nữ', '30/11/2011', 'AN-DONG', '26451@ttgdtxcva.edu.vn', '26451', '3577f8918584e818c5dbec14432ef099e90007717d1725465f7a831ab1ef9dfc');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26452', '10000448', 'NGUYỄN VĂN SÁNG', '10A10', 'Nam', '12/05/2011', 'AN-DONG', '26452@ttgdtxcva.edu.vn', '26452', 'f89460fc77df8aa3be111cb910e0a966f32c8312dcd90f5805204ccbb4fb63be');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26454', '10000449', 'LÂM TUẤN THÀNH', '10A10', 'Nam', '09/12/2011', 'AN-DONG', '26454@ttgdtxcva.edu.vn', '26454', 'ccc7a7ed62e8af4cd4fadcff5276e9b74cc4626561ffd332d80c7917e449944b');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26455', '10000450', 'TRỊNH KỲ THÀNH', '10A10', 'Nam', '01/06/2011', 'AN-DONG', '26455@ttgdtxcva.edu.vn', '26455', '6e2b458924ea242581eff94fbc920a614610897f23ce1d155643c18e65c00355');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26456', '10000451', 'LƯU THANH THẢO', '10A10', 'Nữ', '23/06/2011', 'AN-DONG', '26456@ttgdtxcva.edu.vn', '26456', '331664e64af3f6151ef2ea9a9ede34c1393f1723d510789ded7d1e96ed79590a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26457', '10000452', 'HÀNG NGỌC MINH THƯ', '10A10', 'Nữ', '02/02/2011', 'AN-DONG', '26457@ttgdtxcva.edu.vn', '26457', '24241a99ad55c2c850f2f1cb9eb6aa0b0805e647f2c79ef3bc833ee017fe3695');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26458', '10000453', 'TRỊNH NGỌC ANH THƯ', '10A10', 'Nữ', '06/02/2011', 'AN-DONG', '26458@ttgdtxcva.edu.vn', '26458', '5bf775126f76c21c9aae63601a4c77e14e3f39c8f2a39b60278a176665d86062');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26459', '10000454', 'PHẠM NGỌC THƯƠNG', '10A10', 'Nữ', '25/12/2011', 'AN-DONG', '26459@ttgdtxcva.edu.vn', '26459', 'c0ba62ef2ae272cb5cd5c40f885129725c537a0600f416ac8a0d8fa31a256e3c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26461', '10000455', 'LÝ TRỌNG TÍN', '10A10', 'Nam', '15/12/2009', 'AN-DONG', '26461@ttgdtxcva.edu.vn', '26461', 'fd6bef1452726f838f0380136660a969622ace6d87b0e68605f8789f9d1c8198');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26464', '10000456', 'HỒ NGỌC HOÀI TRANG', '10A10', 'Nữ', '15/01/2011', 'AN-DONG', '26464@ttgdtxcva.edu.vn', '26464', '920b0a309caaec4df3b71b94ddaa9ca786a58f6f093fcdab93373208050f9ed7');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26463', '10000457', 'NGUYỄN THỊ THÙY TRANG', '10A10', 'Nữ', '21/10/2010', 'AN-DONG', '26463@ttgdtxcva.edu.vn', '26463', 'f0039b5fd8d5c53dfb2a21598f0e9eead9b417a1b46640a321a8b253245dcd3e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26462', '10000458', 'GIANG MỸ TRÂN', '10A10', 'Nữ', '21/07/2011', 'AN-DONG', '26462@ttgdtxcva.edu.vn', '26462', '5bba0dd5be154de9c9624d36806984b42c585c036b67b91019de0f2ce14b9949');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26465', '10000459', 'NGUYỄN TRẦN THANH TRÚC', '10A10', 'Nữ', '21/11/2011', 'AN-DONG', '26465@ttgdtxcva.edu.vn', '26465', '797386c634910e94dbd8013e01fcd5e5c9fb179fa7ad591ecd630c569b6304f1');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26466', '10000460', 'TRẦN PHAN NGỌC THANH TRÚC', '10A10', 'Nữ', '07/06/2011', 'AN-DONG', '26466@ttgdtxcva.edu.vn', '26466', 'e70b47c44f272ef50c9846f35415252baa63eb9968a94e50a7aa1c1a30be8ab3');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26467', '10000461', 'TRẦN NGUYỄN TIẾN TRUNG', '10A10', 'Nam', '14/01/2011', 'AN-DONG', '26467@ttgdtxcva.edu.vn', '26467', '4061e3aa42d7dcae3abe0b646fd97e76ba4a3fb5ff78c0cdf3a67297d7e5f901');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26469', '10000462', 'CAO NGỌC ÁNH TUYẾT', '10A10', 'Nữ', '31/08/2010', 'AN-DONG', '26469@ttgdtxcva.edu.vn', '26469', '8edc62e7aae6e6079dc0862d5b446fe35ef8d4ce34beddb41ced76346dad5874');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26470', '10000463', 'HUỲNH LAN VI', '10A10', 'Nữ', '03/08/2010', 'AN-DONG', '26470@ttgdtxcva.edu.vn', '26470', '23ea77965f29f6c7867c71fb87c8923959309db70aee357f110e2c5fb3f1a08c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26471', '10000464', 'LÊ KHÁNH VY', '10A10', 'Nữ', '06/03/2011', 'AN-DONG', '26471@ttgdtxcva.edu.vn', '26471', '5c482bab2c7cf3454c5b021997d21eedbb57fab136e160c2570a9cc4fb3c5aa1');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26474', '10000465', 'NGUYỄN PHƯƠNG BẢO VY', '10A10', 'Nữ', '11/03/2010', 'AN-DONG', '26474@ttgdtxcva.edu.vn', '26474', '3f25b76963816162d0986b86827b4c012893b2d29b12352d4b5850ff368f53e2');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26473', '10000466', 'NGUYỄN THỊ NGỌC VY', '10A10', 'Nữ', '08/02/2011', 'AN-DONG', '26473@ttgdtxcva.edu.vn', '26473', '0f287310f4d3d9d0ddc9e349c7be7413eca41fef9907cc30aa119670e975238c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26472', '10000467', 'TRƯƠNG NÔNG TUYẾT VY', '10A10', 'Nữ', '12/07/2011', 'AN-DONG', '26472@ttgdtxcva.edu.vn', '26472', '2d527cee0ec78cd397fe3e0d9d12947a4a03b4849d5afce7378f994e74f5cd37');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26475', '10000468', 'NGUYỄN TRẦN KIM XUÂN', '10A10', 'Nữ', '11/08/2011', 'AN-DONG', '26475@ttgdtxcva.edu.vn', '26475', 'ed5714b08d901930359244baa5f50e6bab7796176cc4933d07e1e2e00efc647a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26001', '10000390', 'TRẦN HOÀNG ANH', '10TN', 'Nam', '10/05/2011', 'AN-DONG', '26001@ttgdtxcva.edu.vn', '26001', 'd2f1adc092ed3f89d695f43b9bfa04f737579900e757380df132439b67f052c7');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26002', '10000391', 'PHAN GIA BẢO', '10TN', 'Nam', '09/03/2011', 'AN-DONG', '26002@ttgdtxcva.edu.vn', '26002', '0deb1bd3140ff8f5736ba355547a23934543aa60865ffab564632b931662802f');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26004', '10000392', 'HUỲNH NGỌC PHƯƠNG DUNG', '10TN', 'Nữ', '06/05/2011', 'AN-DONG', '26004@ttgdtxcva.edu.vn', '26004', 'badf1bfe64c9a8fb323be8ce7b57467c1d74195a3596d1f632e9e2c89ab010de');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26003', '10000393', 'TRẦN ĐÌNH HẢI ĐĂNG', '10TN', 'Nam', '17/03/2011', 'AN-DONG', '26003@ttgdtxcva.edu.vn', '26003', '4422d96429ad584fee07928be510d5d201c135e19a81ad91e2c14a3f956c0d52');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26005', '10000394', 'DƯƠNG THỊ HUỆ HIẾU', '10TN', 'Nữ', '05/12/2011', 'AN-DONG', '26005@ttgdtxcva.edu.vn', '26005', '6cc53f648e523d3a4fef598b2d543206f6b51a41d4e870333fcfe3e29f20ae74');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26006', '10000395', 'ĐẶNG LÊ HOÀNG', '10TN', 'Nam', '06/04/2011', 'AN-DONG', '26006@ttgdtxcva.edu.vn', '26006', '1f85f4e96df8c3603a08f09e04b54554544a22e703ca43d322b0716fbce3488c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26007', '10000396', 'NGUYỄN THỊ THU HỒNG', '10TN', 'Nữ', '26/05/2011', 'AN-DONG', '26007@ttgdtxcva.edu.vn', '26007', '6b18e3ed55966ee1a83fa05b17def762da5605d80316dada6f6b790f101856d6');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26008', '10000397', 'TRẦN NGUYỄN SINH HÙNG', '10TN', 'Nam', '29/10/2011', 'AN-DONG', '26008@ttgdtxcva.edu.vn', '26008', 'dbf1a048ed8156246cb5456189da5e5f5fa730d5d91da39598675978c6f451bd');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26009', '10000398', 'TRƯƠNG HỮU KHANG', '10TN', 'Nam', '02/04/2011', 'AN-DONG', '26009@ttgdtxcva.edu.vn', '26009', '8378bf83db3b58c36617f5dc206a7b35959d0411b5bc2dbf71e9e57be6d0a9eb');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26011', '10000399', 'LẦM QUỐC KHÁNH', '10TN', 'Nam', '29/04/2011', 'AN-DONG', '26011@ttgdtxcva.edu.vn', '26011', '43e0e212990a51ee687aec2ce29cf7d5745b940a76c3cb31b807001ace8d6add');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26012', '10000400', 'NGUYỄN HỮU KHÁNH', '10TN', 'Nam', '28/01/2011', 'AN-DONG', '26012@ttgdtxcva.edu.vn', '26012', '2091126f77091323830dfd235769d55d9a9a7398bd91a7a16af0488761ec1fbc');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26013', '10000401', 'TRẦN BẢO KHOA', '10TN', 'Nam', '18/08/2011', 'AN-DONG', '26013@ttgdtxcva.edu.vn', '26013', '1105fc0291d24ce2d3567900036661b2e3ae9692f980d79cfdd2942977f08195');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26015', '10000402', 'ĐẶNG ĐĂNG KHÔI', '10TN', 'Nam', '07/05/2011', 'AN-DONG', '26015@ttgdtxcva.edu.vn', '26015', '0f38dcc6d1349f8a62c6b0a75696797c07fffe0fcfc8a9a78eda7ed22149987d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26016', '10000403', 'LÊ MINH KHÔI', '10TN', 'Nam', '12/06/2011', 'AN-DONG', '26016@ttgdtxcva.edu.vn', '26016', '302fafc114761d4d486b9f9bdf4a5475b2b17a6e970227d041fca5e930d69643');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26014', '10000404', 'TRẦN ĐĂNG KHÔI', '10TN', 'Nam', '21/06/2011', 'AN-DONG', '26014@ttgdtxcva.edu.vn', '26014', '2b72c43eee9b3f503c5b67277d4ae2fdc4cfafeb9efa75d2c1a6da21460bd040');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26017', '10000405', 'VŨ HỒNG LAM', '10TN', 'Nam', '08/03/2011', 'AN-DONG', '26017@ttgdtxcva.edu.vn', '26017', '7dc56b00c05aa27e446e9b6b9b35bd5d291e5de41e62cd666c0d7ca2b6bd127f');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26018', '10000406', 'NGUYỄN KIỀU MY', '10TN', 'Nữ', '10/01/2010', 'AN-DONG', '26018@ttgdtxcva.edu.vn', '26018', '9363a8515890c7b327978fb8c669a1d86ac17e54454fd984921942c56b2c413c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26019', '10000407', 'CAO HOÀI BẢO NGỌC', '10TN', 'Nữ', '13/11/2011', 'AN-DONG', '26019@ttgdtxcva.edu.vn', '26019', '6175897b46059ac40ccc856807519a67d8f14258b55df9cb09ce5dc8ec8e35c9');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26021', '10000408', 'HÀ BẢO NHI', '10TN', 'Nữ', '04/02/2011', 'AN-DONG', '26021@ttgdtxcva.edu.vn', '26021', 'b9339e4cc5d9f9bec6c44379d1b43919aae0567f027fd8adc7c16dc7faea737a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26020', '10000409', 'LÊ HUỲNH PHƯƠNG NHI', '10TN', 'Nữ', '08/01/2011', 'AN-DONG', '26020@ttgdtxcva.edu.vn', '26020', 'd01b4b1d82646541e84e84185a8554007761011590fe09982ce2765ef7118c54');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26025', '10000410', 'HỶ HỌC NHƯ', '10TN', 'Nữ', '24/05/2011', 'AN-DONG', '26025@ttgdtxcva.edu.vn', '26025', '7e627d80a10a042fc310ef1c00964d364f9ddef4f558859c97ba06f44906fbe5');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26023', '10000411', 'LÝ NGỌC BẢO NHƯ', '10TN', 'Nữ', '11/09/2011', 'AN-DONG', '26023@ttgdtxcva.edu.vn', '26023', '62b16b01a907f2ca4237c5021f9bd001980b7da43e506beabe303649ccd0d9c9');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26024', '10000412', 'NGUYỄN QUỲNH NHƯ', '10TN', 'Nữ', '10/04/2011', 'AN-DONG', '26024@ttgdtxcva.edu.vn', '26024', '2ec07a7d02c2d0b4110b2b590d93a2de65450a7dc62a7d796d69520ca96072cc');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26022', '10000413', 'NGUYỄN TRẦN BẢO NHƯ', '10TN', 'Nữ', '09/06/2011', 'AN-DONG', '26022@ttgdtxcva.edu.vn', '26022', '52d7762923cbb1d2b3a7c84218da9c192900f7fd3c64c319f26969a30bd0d737');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26026', '10000414', 'LÊ TRẦN CÔNG PHÚ', '10TN', 'Nam', '13/06/2011', 'AN-DONG', '26026@ttgdtxcva.edu.vn', '26026', 'dd47e8651eff9579e18387336332a8eb81951da947f0e31a5642258a73a5f996');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26027', '10000415', 'THÁI GIA PHÚC', '10TN', 'Nam', '30/11/2011', 'AN-DONG', '26027@ttgdtxcva.edu.vn', '26027', '3577f8918584e818c5dbec14432ef099e90007717d1725465f7a831ab1ef9dfc');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26028', '10000416', 'NGUYỄN HOÀI PHƯƠNG', '10TN', 'Nam', '24/12/2011', 'AN-DONG', '26028@ttgdtxcva.edu.vn', '26028', 'e9d070626ac8a6df1eeacdad2d195b0c6517a7dd9e6b93bf48d54532c35b5f9f');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26029', '10000417', 'HỒ KIM QUI', '10TN', 'Nữ', '28/07/2010', 'AN-DONG', '26029@ttgdtxcva.edu.vn', '26029', 'dd445920a392ac2a85e7e56efdaaf474c8b9e29c6559d9b67cc7b2ca8a7ed1ad');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26030', '10000418', 'HUỲNH THỊ NGỌC TÂM', '10TN', 'Nữ', '23/08/2011', 'AN-DONG', '26030@ttgdtxcva.edu.vn', '26030', '10ff6fa431ad63b053b1784f5019d098642dd3594d7a5c25975cbd377255a552');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26031', '10000419', 'NGUYỄN QUANG THÁI', '10TN', 'Nam', '23/04/2011', 'AN-DONG', '26031@ttgdtxcva.edu.vn', '26031', 'd0a6644f2676d1babf3e1c5c1e5dd2a1b904c7aa59702f49bbe60c3470d5573f');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26032', '10000420', 'NGUYỄN GIA THÀNH', '10TN', 'Nam', '06/03/2011', 'AN-DONG', '26032@ttgdtxcva.edu.vn', '26032', '5c482bab2c7cf3454c5b021997d21eedbb57fab136e160c2570a9cc4fb3c5aa1');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26033', '10000421', 'DANH NGUYỄN KIM THI', '10TN', 'Nữ', '06/03/2011', 'AN-DONG', '26033@ttgdtxcva.edu.vn', '26033', '5c482bab2c7cf3454c5b021997d21eedbb57fab136e160c2570a9cc4fb3c5aa1');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26034', '10000422', 'TRẦN HOÀNG ANH THƯ', '10TN', 'Nữ', '29/05/2011', 'AN-DONG', '26034@ttgdtxcva.edu.vn', '26034', '9be8c9b73d2712bb154c0528c677484ad27366c1529cc985aa8f42cb3229f397');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26035', '10000423', 'NGUYỄN TRẦN NGỌC TRINH', '10TN', 'Nữ', '06/11/2011', 'AN-DONG', '26035@ttgdtxcva.edu.vn', '26035', 'af0c6ab3cf621c148688c49ee2a62f85f47e237e1ad633e76c56be85126bb516');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26427', '10000424', 'TRẦN NGỌC THANH TRÚC', '10TN', 'Nữ', '20/04/2011', 'AN-DONG', '26427@ttgdtxcva.edu.vn', '26427', '4ed337a72722a1c79d9ccafe90a821574b602c48f157ff08fbd8a8fcc76a5ee1');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26037', '10000425', 'TRẦN MINH TUẤN', '10TN', 'Nam', '24/10/2011', 'AN-DONG', '26037@ttgdtxcva.edu.vn', '26037', '53df19a77055b497bc6d6c43d24639dee1165c701ebfbd76ff2502bdfe812089');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26038', '10000426', 'LÝ GIA VĨNH', '10TN', 'Nam', '16/06/2011', 'AN-DONG', '26038@ttgdtxcva.edu.vn', '26038', '62fdf3030831ce3af34b94e0b9eae88655c780d02e2d3befdc8025ac5d65cdad');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26039', '10000427', 'LÊ NGUYÊN THIÊN Ý', '10TN', 'Nam', '29/10/2011', 'AN-DONG', '26039@ttgdtxcva.edu.vn', '26039', 'dbf1a048ed8156246cb5456189da5e5f5fa730d5d91da39598675978c6f451bd');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26174', '10000132', 'TRƯƠNG VĂN TUẤN ANH', '10A4', 'Nam', '02/11/2011', 'AN-DONG', '26174@ttgdtxcva.edu.vn', '26174', '3ff1dbfe1ef540170a352d6c760c3daf002f5e3e9d49b5cbd63a44cea62dbdee');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26177', '10000133', 'HUỲNH GIA BẢO', '10A4', 'Nam', '03/06/2011', 'AN-DONG', '26177@ttgdtxcva.edu.vn', '26177', 'ac0d567c5023cc8e651e265a4604dc0ecfaa0db8450efdc809fc256bc4aaa4f5');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26178', '10000134', 'NGUYỄN QUỐC BẢO', '10A4', 'Nam', '02/10/2010', 'AN-DONG', '26178@ttgdtxcva.edu.vn', '26178', '39e06f2257435a7c8b2ffccc979f1d7e7b0a1e510c871eabc00c8e526a3ac700');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26175', '10000135', 'TRẦN GIA BẢO', '10A4', 'Nam', '13/03/2011', 'AN-DONG', '26175@ttgdtxcva.edu.vn', '26175', 'e86440d5fd15264dd06ebfa7a375060502b4a0cd4b92f4c987ae62ea2a3176f9');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26176', '10000136', 'TRẦN VÕ GIA BẢO', '10A4', 'Nam', '12/12/2011', 'AN-DONG', '26176@ttgdtxcva.edu.vn', '26176', '004de706a318cb6ee77b641921341ea4fad85cb78eb6bcd955e8e1c121bf4018');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26179', '10000137', 'TRƯƠNG TUẤN BÌNH', '10A4', 'Nam', '28/07/2011', 'AN-DONG', '26179@ttgdtxcva.edu.vn', '26179', '033393ef46850119525e217a00a80d75d2dae864d718345c3b25409854d2c68e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26180', '10000138', 'DIỆC HIẾU CẦN', '10A4', 'Nam', '02/11/2010', 'AN-DONG', '26180@ttgdtxcva.edu.vn', '26180', '02e6476e8e69064585b32f33371e994a5b58626593d9728cfba786ad674eda64');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26181', '10000139', 'NGUYỄN CAO MINH ĐẠT', '10A4', 'Nam', '11/08/2010', 'AN-DONG', '26181@ttgdtxcva.edu.vn', '26181', '4bd699978c5c35989dd60183227c62e7c80fb389020d8c74d642f69ecd68fbf5');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26182', '10000140', 'NGÔ PHƯƠNG ĐÔNG', '10A4', 'Nam', '09/05/2011', 'AN-DONG', '26182@ttgdtxcva.edu.vn', '26182', 'd3ea84b91129d2399d6c15881dab8a0b83258fcc657d4a08844f3846ad85c82d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26183', '10000141', 'TRẦN TƯ HẠNH', '10A4', 'Nữ', '27/04/2011', 'AN-DONG', '26183@ttgdtxcva.edu.vn', '26183', 'ef5e798275e5f2783a8871136a939fd56ace2bc7d7b0823058b6832180328c44');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26184', '10000142', 'VÒNG THẾ HÀO', '10A4', 'Nam', '29/07/2011', 'AN-DONG', '26184@ttgdtxcva.edu.vn', '26184', 'a1501ef5397902e43fdc6a4b2c0f25c9e6430c9b6e5757da79902d72151211f1');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26185', '10000143', 'Trương Gia Hiền', '10A4', 'Nam', '02/11/2011', 'AN-DONG', '26185@ttgdtxcva.edu.vn', '26185', '3ff1dbfe1ef540170a352d6c760c3daf002f5e3e9d49b5cbd63a44cea62dbdee');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26186', '10000144', 'LÊ MINH HIẾU', '10A4', 'Nam', '18/10/2011', 'AN-DONG', '26186@ttgdtxcva.edu.vn', '26186', '2fd21ef04abc4e2a881c8791408974ab67305da23180dd48371ba946b4e9590e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26188', '10000145', 'TRẦM KIM GIA HUY', '10A4', 'Nam', '29/03/2011', 'AN-DONG', '26188@ttgdtxcva.edu.vn', '26188', 'a933d0eddac8459d33b4931518e81fbc9c2c32a3703fa67d1efa1e17acd2bb27');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26187', '10000146', 'NGUYỄN TRUNG HƯNG', '10A4', 'Nam', '17/02/2011', 'AN-DONG', '26187@ttgdtxcva.edu.vn', '26187', '626ede8776ba7f4cd6501d845caa2f30eac45379f50a65015a720f44ff0a9ad4');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26190', '10000148', 'NGUYỄN ĐẶNG TRỌNG KHANG', '10A4', 'Nam', '17/04/2011', 'AN-DONG', '26190@ttgdtxcva.edu.vn', '26190', '52810f5751f17c2b347ac7101eacec29fd1c4fd34de84ec203eed53744301ae2');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26191', '10000149', 'PHẠM ĐĂNG KHOA', '10A4', 'Nam', '01/03/2011', 'AN-DONG', '26191@ttgdtxcva.edu.vn', '26191', '9a0243ae857c634466fe5559fcd78593a06d74c6973c173ca0e9623f90c7a4ba');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26192', '10000150', 'TRẦN ĐĂNG KHÔI', '10A4', 'Nam', '16/09/2011', 'AN-DONG', '26192@ttgdtxcva.edu.vn', '26192', '797cbdffb3f66f4b3b13f0a03f24e8748e8d64ec53d3eaae745277173aadeddc');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26194', '10000151', 'TRẦN BẢO LUÂN', '10A4', 'Nam', '11/04/2011', 'AN-DONG', '26194@ttgdtxcva.edu.vn', '26194', '1911ae86a0546b0e7c330a549cb1d83cbaedc8b705db4d1733135a1cfb26ffda');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26195', '10000152', 'LỮ ĐẠI LỰC', '10A4', 'Nam', '03/05/2011', 'AN-DONG', '26195@ttgdtxcva.edu.vn', '26195', '77862176e8989228b14aa2331ec0a3f4466838da9a17862fd00fd228e8dc9a8d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26196', '10000153', 'PHẠM KIM NGỌC', '10A4', 'Nữ', '27/04/2011', 'AN-DONG', '26196@ttgdtxcva.edu.vn', '26196', 'ef5e798275e5f2783a8871136a939fd56ace2bc7d7b0823058b6832180328c44');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26197', '10000154', 'NGUYỄN HOÀNG TRANG NGUYÊN', '10A4', 'Nữ', '05/09/2011', 'AN-DONG', '26197@ttgdtxcva.edu.vn', '26197', 'f7847ca41edcdb10ffb02d5d461b966ca8fea092097eb9edfc671e45b4952974');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26198', '10000155', 'NGUYỄN TRẦN YẾN NHI', '10A4', 'Nữ', '09/11/2011', 'AN-DONG', '26198@ttgdtxcva.edu.vn', '26198', '5ec0364898c7957111c7865c08095d55c6a4e3ab008c27e830e0607e7e4ecdcc');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26199', '10000156', 'KHẤU MINH NHỰT', '10A4', 'Nam', '27/11/2011', 'AN-DONG', '26199@ttgdtxcva.edu.vn', '26199', '20280e177d2dc86275a7d125f964c113f71292a43307c0bd2dbedaafe2ba21d4');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26200', '10000157', 'CHUNG GIA PHÚ', '10A4', 'Nam', '12/10/2011', 'AN-DONG', '26200@ttgdtxcva.edu.vn', '26200', 'a293e8b1797ec84c1464aad89b5a830ac06873fad9f03a87723e550dce1be10a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26201', '10000158', 'NGUYỄN ĐẶNG TRỌNG PHÚC', '10A4', 'Nam', '17/04/2011', 'AN-DONG', '26201@ttgdtxcva.edu.vn', '26201', '52810f5751f17c2b347ac7101eacec29fd1c4fd34de84ec203eed53744301ae2');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26203', '10000159', 'NGUYỄN TOÀN PHÚC', '10A4', 'Nam', '12/06/2011', 'AN-DONG', '26203@ttgdtxcva.edu.vn', '26203', '302fafc114761d4d486b9f9bdf4a5475b2b17a6e970227d041fca5e930d69643');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26202', '10000160', 'TRẦN NGUYỄN GIA PHÚC', '10A4', 'Nam', '30/11/2011', 'AN-DONG', '26202@ttgdtxcva.edu.vn', '26202', '3577f8918584e818c5dbec14432ef099e90007717d1725465f7a831ab1ef9dfc');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('10000147', '10000147', 'TRẦN I Q', '10A4', 'Nam', '21/05/2011', 'AN-DONG', NULL, NULL, '68923496c7fe6bce21d49906211d64ce958f9c571694cf1462017664ccc67fcf');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26204', '10000161', 'VŨ ĐĂNG MINH QUÂN', '10A4', 'Nam', '23/11/2010', 'AN-DONG', '26204@ttgdtxcva.edu.vn', '26204', 'dda24e0bd9738478ac4dd07af0beaa9ab176007cf6219e148d581ca05c071ba5');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26205', '10000162', 'NGUYỄN ĐỨC SANG', '10A4', 'Nam', '06/12/2011', 'AN-DONG', '26205@ttgdtxcva.edu.vn', '26205', 'cb825846860890d43c0adbcd4ccf99a3c34bc45ddc3f74c4efb379700658e139');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26207', '10000163', 'NGUYỄN HOÀNG TẤN', '10A4', 'Nam', '16/03/2011', 'AN-DONG', '26207@ttgdtxcva.edu.vn', '26207', 'a7996d4666b01f43b7fb829ab0c721b1910665bfabf9cff6ea5cefa020f6d415');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26208', '10000164', 'NGUYỄN THÀNH THÁI', '10A4', 'Nam', '21/01/2011', 'AN-DONG', '26208@ttgdtxcva.edu.vn', '26208', 'a62b3e9145794296ce90e646f9785054f08654aa1108c96e9b8091cc3194baf2');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26209', '10000165', 'VÕ THUỴ THANH THẢO', '10A4', 'Nữ', '02/11/2011', 'AN-DONG', '26209@ttgdtxcva.edu.vn', '26209', '3ff1dbfe1ef540170a352d6c760c3daf002f5e3e9d49b5cbd63a44cea62dbdee');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26210', '10000166', 'HÀ PHAN TRƯỜNG THỊNH', '10A4', 'Nam', '30/12/2011', 'AN-DONG', '26210@ttgdtxcva.edu.vn', '26210', '359fd771045c3856967bb1bf6af4e73f2f94a27b849991e37beb2239c6051bf5');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26211', '10000167', 'TRỊNH QUỐC GIA THỊNH', '10A4', 'Nam', '13/03/2011', 'AN-DONG', '26211@ttgdtxcva.edu.vn', '26211', 'e86440d5fd15264dd06ebfa7a375060502b4a0cd4b92f4c987ae62ea2a3176f9');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26212', '10000168', 'HOÀNG HUỲNH DIỄM TRANG', '10A4', 'Nữ', '26/11/2011', 'AN-DONG', '26212@ttgdtxcva.edu.vn', '26212', '95812c7651f447d5da4a632018b69273b4691580ab920bf8b82fbe77d4b66781');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26213', '10000169', 'NGUYỄN MINH TRÍ', '10A4', 'Nam', '31/08/2010', 'AN-DONG', '26213@ttgdtxcva.edu.vn', '26213', '8edc62e7aae6e6079dc0862d5b446fe35ef8d4ce34beddb41ced76346dad5874');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26214', '10000170', 'HỒNG NHÂM HOÀNG TRIỀU', '10A4', 'Nam', '29/08/2011', 'AN-DONG', '26214@ttgdtxcva.edu.vn', '26214', '9801029560fff14cc3163d41c68558127377fd3dfe765dc7ed0927fcabab9ad2');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26215', '10000171', 'PHẠM THANH TRÚC', '10A4', 'Nữ', '05/10/2011', 'AN-DONG', '26215@ttgdtxcva.edu.vn', '26215', 'f8298dec15ed7a6a744cd9194143defd01e843814d851e2c3ab5abf61235361e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26216', '10000172', 'HUỲNH THỊ KIM YẾN', '10A4', 'Nữ', '16/02/2011', 'AN-DONG', '26216@ttgdtxcva.edu.vn', '26216', 'b89218e35843935d2bb44c1d1cbf68c5565755a3e11ea4dcfa494949c1c470c8');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26476', '10000469', 'PHẠM THỊ NGỌC ÁNH', '10A11', 'Nữ', '25/07/2011', 'AN-DONG', '26476@ttgdtxcva.edu.vn', '26476', 'a17debefac04ef024e6e05a894a6e096fc303e4493cd188a25b2b6b529540282');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26477', '10000470', 'QUAN GIA BỘI', '10A11', 'Nữ', '02/02/2010', 'AN-DONG', '26477@ttgdtxcva.edu.vn', '26477', 'b88e57eb8da7c85369068a16eceea1041af479975f1ed051fa6af704cd7793eb');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26478', '10000471', 'TRẦN KIM CHÂU', '10A11', 'Nữ', '26/06/2011', 'AN-DONG', '26478@ttgdtxcva.edu.vn', '26478', 'f9f8336524c221c55098a5e564689a1f2e846a94c06e7b8c9984c2a1303a75d7');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26480', '10000472', 'TĂNG TÔN MỸ DUYÊN', '10A11', 'Nữ', '04/11/2011', 'AN-DONG', '26480@ttgdtxcva.edu.vn', '26480', 'a73bc49f09453d71ea0bd624599a1604e5babc45d478c03790edb5e1d07d4228');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26479', '10000473', 'HOẮC KHÁNH ĐẠT', '10A11', 'Nam', '15/09/2010', 'AN-DONG', '26479@ttgdtxcva.edu.vn', '26479', 'b44a3ce5b649168c2587ef9221cab4b2d8c973a798889695461b693c74408494');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26481', '10000474', 'TRẦN GIA HÀO', '10A11', 'Nam', '10/12/2011', 'AN-DONG', '26481@ttgdtxcva.edu.vn', '26481', 'e9dc794c3bc84172ae8fbe12f0b6e625cfe5901754b60c81a102d92012f55781');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26482', '10000475', 'ĐƯỜNG NGUYỆT HIỀN', '10A11', 'Nữ', '08/06/2011', 'AN-DONG', '26482@ttgdtxcva.edu.vn', '26482', '47772d973a01b017d585720e9eee13a67ca2a934255ab28bc079220296087279');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26483', '10000476', 'NGUYỄN TUẤN HUY', '10A11', 'Nam', '12/09/2011', 'AN-DONG', '26483@ttgdtxcva.edu.vn', '26483', '079718e6516c76a15e69bfbab8125ce33d8622bb2f76640e8aecc747d79c58a7');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26485', '10000477', 'HUỲNH TẤN KHANG', '10A11', 'Nam', '03/05/2011', 'AN-DONG', '26485@ttgdtxcva.edu.vn', '26485', '77862176e8989228b14aa2331ec0a3f4466838da9a17862fd00fd228e8dc9a8d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26487', '10000478', 'PHẠM DUY KHANG', '10A11', 'Nam', '18/08/2011', 'AN-DONG', '26487@ttgdtxcva.edu.vn', '26487', '1105fc0291d24ce2d3567900036661b2e3ae9692f980d79cfdd2942977f08195');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26484', '10000479', 'TRẦN ĐẠO KHANG', '10A11', 'Nam', '06/10/2011', 'AN-DONG', '26484@ttgdtxcva.edu.vn', '26484', '7a4b57a8b6711abef289d107816a6794fe23426abe4739ea73119651914cdec7');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26486', '10000480', 'TRẦN TÚ KHANG', '10A11', 'Nam', '18/04/2011', 'AN-DONG', '26486@ttgdtxcva.edu.vn', '26486', 'f8efcb7c1ac0c7e9f3c5b2a70d5985fd84dbbc1965740f17a1d2600b4060e710');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26488', '10000481', 'TRẦN TUẤN KHANH', '10A11', 'Nam', '20/07/2011', 'AN-DONG', '26488@ttgdtxcva.edu.vn', '26488', 'aba0ef9592b0c305ced4c1ce1e274619783355852c5ab793037b52ba28d8c2e0');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26489', '10000482', 'TỪ VŨ DUY KHANH', '10A11', 'Nam', '22/09/2011', 'AN-DONG', '26489@ttgdtxcva.edu.vn', '26489', '42c180b4e13ef7a13372aa0a8770c37c924e244339fde8c9902f722f4f90841a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26490', '10000483', 'BÙI NGUYỄN ĐĂNG KHÔI', '10A11', 'Nam', '11/04/2011', 'AN-DONG', '26490@ttgdtxcva.edu.vn', '26490', '1911ae86a0546b0e7c330a549cb1d83cbaedc8b705db4d1733135a1cfb26ffda');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26491', '10000484', 'NGUYỄN TRUNG KIÊN', '10A11', 'Nam', '02/06/2010', 'AN-DONG', '26491@ttgdtxcva.edu.vn', '26491', '19775f53087f6a13d5b9e08cc6cd45e4a975d5c579f0961a9592ac6116dc1f6e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26492', '10000485', 'NGUYỄN BÁ TÙNG LÂM', '10A11', 'Nam', '07/09/2011', 'AN-DONG', '26492@ttgdtxcva.edu.vn', '26492', 'd518554fa6f191952edc3656214c26a8c284ea839a117a71099d155085daf82a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26493', '10000486', 'LIÊU NGỌC TÚ LINH', '10A11', 'Nữ', '05/10/2011', 'AN-DONG', '26493@ttgdtxcva.edu.vn', '26493', 'f8298dec15ed7a6a744cd9194143defd01e843814d851e2c3ab5abf61235361e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26494', '10000487', 'LÊ TẤN LỘC', '10A11', 'Nam', '04/02/2011', 'AN-DONG', '26494@ttgdtxcva.edu.vn', '26494', 'b9339e4cc5d9f9bec6c44379d1b43919aae0567f027fd8adc7c16dc7faea737a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26495', '10000488', 'LÂM GIA MẪN', '10A11', 'Nữ', '31/08/2011', 'AN-DONG', '26495@ttgdtxcva.edu.vn', '26495', '0f742fc6f8e578a455fb4a8e532060e8b4f25d6e054107010db7eb7e07c0822e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26496', '10000489', 'NGUYỄN HOÀI BẢO NAM', '10A11', 'Nam', '16/08/2011', 'AN-DONG', '26496@ttgdtxcva.edu.vn', '26496', 'a2075f0dd064905676210bc456fd76bba3f9642bc8bc99414b799cb9ab2b8c74');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26497', '10000490', 'TẠ NGỌC BẢO NGHI', '10A11', 'Nữ', '22/03/2011', 'AN-DONG', '26497@ttgdtxcva.edu.vn', '26497', '7025c451752d2aa4bfe9b759f730c9abf413239a88d2b9ff1157f55bfacbdb1b');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26498', '10000491', 'TĂNG TUYẾT NGHI', '10A11', 'Nữ', '24/10/2011', 'AN-DONG', '26498@ttgdtxcva.edu.vn', '26498', '53df19a77055b497bc6d6c43d24639dee1165c701ebfbd76ff2502bdfe812089');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26499', '10000492', 'PHẠM THỊ THANH NHÀN', '10A11', 'Nữ', '11/04/2011', 'AN-DONG', '26499@ttgdtxcva.edu.vn', '26499', '1911ae86a0546b0e7c330a549cb1d83cbaedc8b705db4d1733135a1cfb26ffda');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26500', '10000493', 'LA HÂN NHI', '10A11', 'Nữ', '07/10/2011', 'AN-DONG', '26500@ttgdtxcva.edu.vn', '26500', 'ac9433fe488c7ebff7bedf24db580afb7e876dc49c4aeaebe7f06b5b08b80c40');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26501', '10000494', 'TỪ HẠO NHIÊN', '10A11', 'Nam', '30/07/2011', 'AN-DONG', '26501@ttgdtxcva.edu.vn', '26501', 'f1a590990c0eaec0b8fc02fdc6356d4edaf4ad19dbc38be1fb9e02e9121fb4c9');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26502', '10000495', 'NGUYỄN NGỌC NHƯ', '10A11', 'Nữ', '05/09/2011', 'AN-DONG', '26502@ttgdtxcva.edu.vn', '26502', 'f7847ca41edcdb10ffb02d5d461b966ca8fea092097eb9edfc671e45b4952974');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26503', '10000496', 'NGUYỄN PHẠM TẤN PHÚC', '10A11', 'Nam', '08/01/2011', 'AN-DONG', '26503@ttgdtxcva.edu.vn', '26503', 'd01b4b1d82646541e84e84185a8554007761011590fe09982ce2765ef7118c54');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26504', '10000497', 'LÊ HOÀNG UYÊN PHƯƠNG', '10A11', 'Nữ', '07/06/2011', 'AN-DONG', '26504@ttgdtxcva.edu.vn', '26504', 'e70b47c44f272ef50c9846f35415252baa63eb9968a94e50a7aa1c1a30be8ab3');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26505', '10000498', 'NGÔ TRẦN PHƯƠNG QUỲNH', '10A11', 'Nữ', '19/07/2011', 'AN-DONG', '26505@ttgdtxcva.edu.vn', '26505', '635c07fa66da6c06cc2e299732bdaaada6d09443a7f44fbb4a35b916c51618e4');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26506', '10000499', 'NGUYỄN NHƯ QUỲNH', '10A11', 'Nữ', '09/04/2011', 'AN-DONG', '26506@ttgdtxcva.edu.vn', '26506', '45490054eed67e3c86fa76c9109b76142a5a98ab4f36b1d041c40002f1af565c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26507', '10000500', 'NGUYỄN TUẤN TÀI', '10A11', 'Nam', '26/10/2011', 'AN-DONG', '26507@ttgdtxcva.edu.vn', '26507', 'f42afc4edfb6b917ffca994fbbc6f3735cb516218d6091fe5deec65d77ee07a1');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26508', '10000501', 'NGUYỄN THỊ THANH THẢO', '10A11', 'Nữ', '15/03/2010', 'AN-DONG', '26508@ttgdtxcva.edu.vn', '26508', '5f3b0a5caab2e8275997a5d727e51b2636dce27c6783995dfce061dcaf24b57b');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26509', '10000502', 'NGUYỄN HẠO THIÊN', '10A11', 'Nam', '15/12/2011', 'AN-DONG', '26509@ttgdtxcva.edu.vn', '26509', '1bab667835646d88a4717c937fdffd2b4045ecacbfaf83b84ce3f432c537f753');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26511', '10000503', 'NGUYỄN ĐÔNG THÙY', '10A11', 'Nữ', '17/04/2011', 'AN-DONG', '26511@ttgdtxcva.edu.vn', '26511', '52810f5751f17c2b347ac7101eacec29fd1c4fd34de84ec203eed53744301ae2');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26510', '10000504', 'NGUYỄN THỊ HOÀI THƯ', '10A11', 'Nữ', '04/09/2011', 'AN-DONG', '26510@ttgdtxcva.edu.vn', '26510', '14a9cb94cf5ec176028197f9d738f6c3e3b3987a0c31c5e7e3998ea764dea453');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26513', '10000505', 'NGUYỄN XUÂN TRANG', '10A11', 'Nữ', '07/06/2011', 'AN-DONG', '26513@ttgdtxcva.edu.vn', '26513', 'e70b47c44f272ef50c9846f35415252baa63eb9968a94e50a7aa1c1a30be8ab3');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26512', '10000506', 'LÝ TÔ HUYỀN TRÂN', '10A11', 'Nữ', '23/07/2011', 'AN-DONG', '26512@ttgdtxcva.edu.vn', '26512', 'b438d4133c6b4a1bee6d1eb2025c7109b1e949523bdf3348b9622ef3c0a1dfd7');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26514', '10000507', 'NGÔ QUANG TRIỀU', '10A11', 'Nam', '17/08/2011', 'AN-DONG', '26514@ttgdtxcva.edu.vn', '26514', 'b1119a54f0b871c9ab31e49183823e81eea95d5bf16f684e79497509966acbb1');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26515', '10000508', 'HỨA KHẢI TRINH', '10A11', 'Nữ', '03/04/2011', 'AN-DONG', '26515@ttgdtxcva.edu.vn', '26515', 'd363590be2b46b792662066859bc3e52ecb442038957d6e39b2653434a5ff78f');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26516', '10000509', 'TRẦN LÊ QUANG TRƯỞNG', '10A11', 'Nam', '29/09/2011', 'AN-DONG', '26516@ttgdtxcva.edu.vn', '26516', 'e107517463d734b6e24148a4c0a2b6cacdd1a18c54526860e51d2f9004d4a8ca');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26517', '10000510', 'HUỲNH THANH TUYỀN', '10A11', 'Nữ', '21/12/2011', 'AN-DONG', '26517@ttgdtxcva.edu.vn', '26517', '18714b61260be823fae54079ecf31d22869d71cf605ba3f09f12b337c06feaf2');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26518', '10000511', 'NGUYỄN NGUYỄN TUYẾT VY', '10A11', 'Nữ', '26/05/2011', 'AN-DONG', '26518@ttgdtxcva.edu.vn', '26518', '6b18e3ed55966ee1a83fa05b17def762da5605d80316dada6f6b790f101856d6');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26519', '10000512', 'NGUYỄN ĐẶNG HƯƠNG XUÂN', '10A11', 'Nữ', '03/08/2010', 'AN-DONG', '26519@ttgdtxcva.edu.vn', '26519', '23ea77965f29f6c7867c71fb87c8923959309db70aee357f110e2c5fb3f1a08c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26392', '10000513', 'ĐOÀN GIA BẢO', '10A12', 'Nam', '01/07/2011', 'AN-DONG', '26392@ttgdtxcva.edu.vn', '26392', '2c1a4a451c3b5492ea81646bd5a65d3b2abc8c26f302291f766e8147c3795e6a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26520', '10000514', 'LÊ NGUYỄN GIA BẢO', '10A12', 'Nam', '02/12/2011', 'AN-DONG', '26520@ttgdtxcva.edu.vn', '26520', '9a400b75f5261ba8df513f4c97765731fe0010aeba15ba59628eda47c5b91b43');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26523', '10000515', 'KHƯU KIM HOÀNG DIỆU', '10A12', 'Nữ', '13/05/2011', 'AN-DONG', '26523@ttgdtxcva.edu.vn', '26523', 'ca38625ef8d41ea8351000e4b5304acec06a92d610b46869d6c95dbd197a532e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26524', '10000516', 'NGUYỄN THÙY DƯƠNG', '10A12', 'Nữ', '20/05/2011', 'AN-DONG', '26524@ttgdtxcva.edu.vn', '26524', '0286bc81905317c6527b08c7be658f6ded40261daa1790f531acebb41de461a1');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26522', '10000517', 'PHẠM THÁI MINH ĐĂNG', '10A12', 'Nam', '05/08/2011', 'AN-DONG', '26522@ttgdtxcva.edu.vn', '26522', '71b127257b4645c0863497e38b6199173163e7ec2f1b8c9fa635d3296a67b492');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26526', '10000518', 'NGUYỄN THÚY HÂN', '10A12', 'Nữ', '23/02/2011', 'AN-DONG', '26526@ttgdtxcva.edu.vn', '26526', 'd1643ed568d063983746c945b7c94e11e7f57f19b1851decb01f24e3d71a0c4c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26527', '10000519', 'QUAN GIA HÂN', '10A12', 'Nữ', '29/07/2011', 'AN-DONG', '26527@ttgdtxcva.edu.vn', '26527', 'a1501ef5397902e43fdc6a4b2c0f25c9e6430c9b6e5757da79902d72151211f1');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26525', '10000520', 'TIÊU LÝ GIA HÂN', '10A12', 'Nữ', '08/03/2011', 'AN-DONG', '26525@ttgdtxcva.edu.vn', '26525', '7dc56b00c05aa27e446e9b6b9b35bd5d291e5de41e62cd666c0d7ca2b6bd127f');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26528', '10000521', 'NGUYỄN THANH HIỀN', '10A12', 'Nữ', '15/08/2011', 'AN-DONG', '26528@ttgdtxcva.edu.vn', '26528', 'f79d1b68a02583e1d257de4d9a97a290be45b4c806bbf40fc4ead9b953ea8237');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26529', '10000522', 'MẠCH GIA HUỆ', '10A12', 'Nữ', '10/08/2011', 'AN-DONG', '26529@ttgdtxcva.edu.vn', '26529', '9d2ca77f59ee5fb5a515711936b5d23edc192df39b3e70f06924f99585dd6fc1');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26530', '10000523', 'DIỆP TƯ HÙNG', '10A12', 'Nam', '22/07/2010', 'AN-DONG', '26530@ttgdtxcva.edu.vn', '26530', '813c47977c757f9e3a7db87093b0c0766e55d0ab45b3b2184fa75bdcf244afcc');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26531', '10000524', 'TRẦN GIA HƯNG', '10A12', 'Nam', '08/06/2011', 'AN-DONG', '26531@ttgdtxcva.edu.vn', '26531', '47772d973a01b017d585720e9eee13a67ca2a934255ab28bc079220296087279');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26533', '10000525', 'NGỤY THỤC KHANH', '10A12', 'Nữ', '13/01/2011', 'AN-DONG', '26533@ttgdtxcva.edu.vn', '26533', '6569d062ae95b10827b00fd36cb99c5ce4c6c789dc2929a21226364c59d729a8');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26532', '10000526', 'TRƯƠNG ĐAN ÁI KHANH', '10A12', 'Nữ', '10/10/2011', 'AN-DONG', '26532@ttgdtxcva.edu.vn', '26532', '5153505d75470e58b0f0495b4d3cea8124ea9de06b25a6b4be82eaa4e5e9b8c6');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26534', '10000527', 'NGUYỄN QUỐC MINH KHÔI', '10A12', 'Nam', '18/08/2011', 'AN-DONG', '26534@ttgdtxcva.edu.vn', '26534', '1105fc0291d24ce2d3567900036661b2e3ae9692f980d79cfdd2942977f08195');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26535', '10000528', 'ĐỖ HOÀNG KIM', '10A12', 'Nữ', '26/04/2011', 'AN-DONG', '26535@ttgdtxcva.edu.vn', '26535', '6f70b1f2019df4489accefc48e7ec196b4a185813950499441c2af9cf7f50e7f');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26536', '10000529', 'THƯƠNG GIA LINH', '10A12', 'Nữ', '10/08/2011', 'AN-DONG', '26536@ttgdtxcva.edu.vn', '26536', '9d2ca77f59ee5fb5a515711936b5d23edc192df39b3e70f06924f99585dd6fc1');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26537', '10000530', 'TRẦN LÊ BỘI LINH', '10A12', 'Nữ', '12/12/2011', 'AN-DONG', '26537@ttgdtxcva.edu.vn', '26537', '004de706a318cb6ee77b641921341ea4fad85cb78eb6bcd955e8e1c121bf4018');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26538', '10000531', 'MẠCH GIA MẪN', '10A12', 'Nữ', '10/08/2011', 'AN-DONG', '26538@ttgdtxcva.edu.vn', '26538', '9d2ca77f59ee5fb5a515711936b5d23edc192df39b3e70f06924f99585dd6fc1');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26539', '10000532', 'PHẠM QUỐC MINH', '10A12', 'Nam', '19/12/2011', 'AN-DONG', '26539@ttgdtxcva.edu.vn', '26539', 'be39eaf950981bc599184ae08db3af376c5de6e8e0ed662abef13381ef07a200');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26540', '10000533', 'TRƯƠNG NGỌC BÌNH MINH', '10A12', 'Nữ', '03/10/2011', 'AN-DONG', '26540@ttgdtxcva.edu.vn', '26540', 'b987bb02e3efa21feb379f43b3a0be86fc349e58cf406968010e017382afb24e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26541', '10000534', 'LÊ HỒNG MỸ', '10A12', 'Nữ', '13/10/2011', 'AN-DONG', '26541@ttgdtxcva.edu.vn', '26541', 'e645d3d895882a90e4e7c959922c403bddff7ae803c2d7d41347ccd3446df59c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26542', '10000535', 'HUỲNH GIA NGHI', '10A12', 'Nữ', '06/03/2010', 'AN-DONG', '26542@ttgdtxcva.edu.vn', '26542', '21dd20653b95145ccaa9e3df9363d320861ae07ac1bf49c519f0b4a9ecabf5bb');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26544', '10000536', 'NGUYỄN ANH NGUYÊN', '10A12', 'Nữ', '16/06/2011', 'AN-DONG', '26544@ttgdtxcva.edu.vn', '26544', '62fdf3030831ce3af34b94e0b9eae88655c780d02e2d3befdc8025ac5d65cdad');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26543', '10000537', 'PHẠM TRỌNG NGUYÊN', '10A12', 'Nam', '13/08/2011', 'AN-DONG', '26543@ttgdtxcva.edu.vn', '26543', '78fb55dd5ad64af78e2ec8fd3c7a49fe633df217b77b4d491d787b65e525fc95');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26546', '10000538', 'TĂNG HIỂU NHI', '10A12', 'Nữ', '30/12/2011', 'AN-DONG', '26546@ttgdtxcva.edu.vn', '26546', '359fd771045c3856967bb1bf6af4e73f2f94a27b849991e37beb2239c6051bf5');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26545', '10000539', 'VÕ THỊ TUYẾT NHI', '10A12', 'Nữ', '04/10/2011', 'AN-DONG', '26545@ttgdtxcva.edu.vn', '26545', '2ef2950a5ec72ed776d54e009da4d08375e0ddf343177de714ab790642c8db73');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26547', '10000540', 'DƯƠNG THỊ AN NHIÊN', '10A12', 'Nữ', '02/09/2011', 'AN-DONG', '26547@ttgdtxcva.edu.vn', '26547', '17aa497bbe3ca6c374b518b4ca248b667e0677d34e2113aa3a3dc116f2a444bb');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26548', '10000541', 'NGUYỄN NGỌC THẢO NHƯ', '10A12', 'Nữ', '29/12/2011', 'AN-DONG', '26548@ttgdtxcva.edu.vn', '26548', '89672c229d88fd0868bcd7b0405991e7a98c55750aaf4da4f635c5bf95ad03f6');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26549', '10000542', 'ĐẶNG VĂN NINH', '10A12', 'Nam', '15/07/2011', 'AN-DONG', '26549@ttgdtxcva.edu.vn', '26549', '2827e6f657c8aaebd19089a936bcc65d6d67ef1411e0a2da2afb0d7c2e170c2d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26550', '10000543', 'TIÊU PHONG', '10A12', 'Nam', '04/07/2011', 'AN-DONG', '26550@ttgdtxcva.edu.vn', '26550', 'af4e0efd98202be2f378e6ce7a0bdabb576bfaddfd247f108a01db0041d5322d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26551', '10000544', 'CHUNG HỒNG PHƯỢNG', '10A12', 'Nữ', '22/10/2011', 'AN-DONG', '26551@ttgdtxcva.edu.vn', '26551', 'f70021826b1915457fa377063b4d57afb3df5f3804ad0eb2493d3d613a5501ef');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26552', '10000545', 'NGUYỄN BÁ TÀI', '10A12', 'Nam', '11/12/2011', 'AN-DONG', '26552@ttgdtxcva.edu.vn', '26552', '245324ac24d61c8a292a5920b7d4e424b5edf455d83a383c711beaf05ef0cbcc');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26553', '10000546', 'PHAN MINH THÔNG', '10A12', 'Nam', '11/11/2011', 'AN-DONG', '26553@ttgdtxcva.edu.vn', '26553', '5f11428eb9009b8f4338f5d0b11d0322117d72a0a37b9da435ec7eb646b8bec4');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26555', '10000547', 'LƯU NGUYỄN HOÀNG THƯ', '10A12', 'Nữ', '11/10/2011', 'AN-DONG', '26555@ttgdtxcva.edu.vn', '26555', 'b1fc406128775c58a7e827539299dab6d772a12c9af32d4ba4abb78786669dd7');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26554', '10000548', 'NGUYỄN HÁO ANH THƯ', '10A12', 'Nữ', '25/04/2011', 'AN-DONG', '26554@ttgdtxcva.edu.vn', '26554', 'e9e629c972c0aabb63573a74d6f00154d0e142c1b811e2de56802dab207e6d7c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26556', '10000549', 'NGUYỄN VŨ THANH TRÚC', '10A12', 'Nữ', '06/01/2011', 'AN-DONG', '26556@ttgdtxcva.edu.vn', '26556', '059f50e7d35932ffb94f950258a14dad3125b55dab8b9ba8634710a3235be082');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26557', '10000550', 'HÀ TÚ TÚ', '10A12', 'Nữ', '18/11/2011', 'AN-DONG', '26557@ttgdtxcva.edu.vn', '26557', '328dc2c14e3543735f5060ab217192999cbc081af7e7dd8db7024d0e08fecda5');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26558', '10000551', 'LÊ THANH TUẤN', '10A12', 'Nam', '13/10/2010', 'AN-DONG', '26558@ttgdtxcva.edu.vn', '26558', 'bfd482e22d66b683202779de8ca9a9959cae592194a4d7bc25054030487a2624');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26559', '10000552', 'SƠN NGỌC MAI UYÊN', '10A12', 'Nữ', '27/10/2011', 'AN-DONG', '26559@ttgdtxcva.edu.vn', '26559', 'ba24fda26aa30e841cce77e5a28ff99b85d2d849ebb2ec23d4d65d20bd9d217a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26560', '10000553', 'NGUYỄN KHÁNH VI', '10A12', 'Nữ', '27/05/2010', 'AN-DONG', '26560@ttgdtxcva.edu.vn', '26560', '132d4117e0d987329d65fe1b96d45aeb34f777c7872a2f22a6d3740ab6f2a7d1');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26561', '10000554', 'LÂM THÚY VY', '10A12', 'Nữ', '29/06/2011', 'AN-DONG', '26561@ttgdtxcva.edu.vn', '26561', 'c2868b4219e053d0bdb8c97e990d976820cc1ab7e395b6d4ffc5c8a15a347d3b');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26562', '10000555', 'NGUYỄN NGỌC TƯỜNG VY', '10A12', 'Nữ', '05/10/2011', 'AN-DONG', '26562@ttgdtxcva.edu.vn', '26562', 'f8298dec15ed7a6a744cd9194143defd01e843814d851e2c3ab5abf61235361e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26563', '10000556', 'LÊ CHUNG NHƯ Ý', '10A12', 'Nữ', '21/09/2011', 'AN-DONG', '26563@ttgdtxcva.edu.vn', '26563', '0e2c21c3f65a2361e95f9daf21268965b570701da7f3fee31634147693a4d474');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26347', '10000303', 'TRƯƠNG KHÁNH BĂNG', '10A8', 'Nữ', '24/01/2011', 'AN-DONG', '26347@ttgdtxcva.edu.vn', '26347', '350b2ebde9763db82ec260493c5ad8654babeca5e2bd5455e71725eb51a84bd1');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26348', '10000304', 'BÙI NGỌC KHÁNH CHUYÊN', '10A8', 'Nữ', '31/05/2011', 'AN-DONG', '26348@ttgdtxcva.edu.vn', '26348', '2aeecc4ee49e100585e9ce142e35053d27ffaf5818ccdb4a845ee96f515f4ad9');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26351', '10000305', 'PHÙNG BỘI DINH', '10A8', 'Nữ', '04/12/2011', 'AN-DONG', '26351@ttgdtxcva.edu.vn', '26351', '01e508b8ab8d5024715706f3ce7e5cb7ed7b05146e75f27afcabfe88eb5f97ad');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26350', '10000306', 'TRẦN VĨ ĐẠT', '10A8', 'Nam', '16/05/2011', 'AN-DONG', '26350@ttgdtxcva.edu.vn', '26350', 'fa6ef7a20c805ae887c3437638bd9f223570ae6df6c983cf8188cb3cf6c7e0f4');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26349', '10000307', 'VÕ NGUYÊN ĐĂNG', '10A8', 'Nam', '22/04/2011', 'AN-DONG', '26349@ttgdtxcva.edu.vn', '26349', 'fea8f09e9bd5f2d72216aabd691466f376083834cc21d83fd8f85ed92f16e534');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26352', '10000308', 'TRƯƠNG NGỌC HÂN', '10A8', 'Nữ', '29/04/2010', 'AN-DONG', '26352@ttgdtxcva.edu.vn', '26352', '2ce662d1ae971389584611156227b969e4abc59008ec80b41a638d8051bcb17d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26353', '10000309', 'ĐỖ QUỲNH HOA', '10A8', 'Nữ', '15/01/2011', 'AN-DONG', '26353@ttgdtxcva.edu.vn', '26353', '920b0a309caaec4df3b71b94ddaa9ca786a58f6f093fcdab93373208050f9ed7');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26356', '10000310', 'LÂM ĐỖ NHẬT HUY', '10A8', 'Nam', '02/11/2011', 'AN-DONG', '26356@ttgdtxcva.edu.vn', '26356', '3ff1dbfe1ef540170a352d6c760c3daf002f5e3e9d49b5cbd63a44cea62dbdee');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26354', '10000311', 'TRẦN MINH HUY', '10A8', 'Nam', '30/08/2011', 'AN-DONG', '26354@ttgdtxcva.edu.vn', '26354', '1e7fff47fff6d4d738b695e58133fa988049d13bf751fbd8ced4c8b0641869a7');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26355', '10000312', 'TRẦN QUỐC HUY', '10A8', 'Nam', '28/04/2011', 'AN-DONG', '26355@ttgdtxcva.edu.vn', '26355', '5769ca3f0dc8512a813e3222726ea5f703fe4f692265611abc404f4267aa5922');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26565', '10000313', 'NGUYỄN HOÀNG BẢO HƯNG', '10A8', 'Nam', '02/07/2011', 'AN-DONG', '26565@ttgdtxcva.edu.vn', '26565', '492d306f39dd7cbdd1c7b48fd0e480a610cffe9b7e45c092ef463ed41fdfe8f1');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26357', '10000314', 'PHẠM NGUYỄN BẢO KHÁNH', '10A8', 'Nam', '23/07/2011', 'AN-DONG', '26357@ttgdtxcva.edu.vn', '26357', 'b438d4133c6b4a1bee6d1eb2025c7109b1e949523bdf3348b9622ef3c0a1dfd7');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26358', '10000315', 'ĐÀO ANH KHÔI', '10A8', 'Nam', '14/09/2011', 'AN-DONG', '26358@ttgdtxcva.edu.vn', '26358', 'b48fb98dcbe9c051125f198a0f2f39c6f5a8821d2a45d93b1a7f6b64f1e97e4d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26359', '10000316', 'LƯU PHẠM CÔNG NGUYÊN KHÔI', '10A8', 'Nam', '20/10/2011', 'AN-DONG', '26359@ttgdtxcva.edu.vn', '26359', '6a49d1dfc380ce53f504be9765f8f6729478b2b4089b6804fdb1772f82d75fcc');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26360', '10000317', 'TRẦN NGÔ MINH KHÔI', '10A8', 'Nam', '24/10/2011', 'AN-DONG', '26360@ttgdtxcva.edu.vn', '26360', '53df19a77055b497bc6d6c43d24639dee1165c701ebfbd76ff2502bdfe812089');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26361', '10000318', 'TRẦN NGUYỄN QUỲNH LAM', '10A8', 'Nữ', '12/03/2011', 'AN-DONG', '26361@ttgdtxcva.edu.vn', '26361', '3818876534e4ee2c71478087d86e53ec7f929e6c38a4ae74c1b8447b36ccc3c2');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26362', '10000319', 'NGUYỄN HOÀNG KHÁNH LINH', '10A8', 'Nữ', '29/01/2011', 'AN-DONG', '26362@ttgdtxcva.edu.vn', '26362', '1d502396be3c465bf6b5745376d4540fc2e2ce8b43057dd66b308070a0848c27');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26363', '10000320', 'TRƯƠNG HỒNG LOAN', '10A8', 'Nữ', '22/12/2010', 'AN-DONG', '26363@ttgdtxcva.edu.vn', '26363', 'ce5bb0b196fc34867eaf4936dc181541351332a83277969abaf5002ecbdb5bc9');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26364', '10000321', 'NGUYỄN CAO KIM MAI', '10A8', 'Nữ', '05/08/2011', 'AN-DONG', '26364@ttgdtxcva.edu.vn', '26364', '71b127257b4645c0863497e38b6199173163e7ec2f1b8c9fa635d3296a67b492');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26365', '10000322', 'TỪ NGUYỄN HOÀNG MINH', '10A8', 'Nam', '14/10/2010', 'AN-DONG', '26365@ttgdtxcva.edu.vn', '26365', '52f6016607b4c3a55d1bec560977089a937de3d843edcb3d8b1a0202fbc8bc71');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26366', '10000323', 'TRẦN KHỞI MY', '10A8', 'Nữ', '04/07/2011', 'AN-DONG', '26366@ttgdtxcva.edu.vn', '26366', 'af4e0efd98202be2f378e6ce7a0bdabb576bfaddfd247f108a01db0041d5322d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26367', '10000324', 'BÙI DIỆP TỐ NGÂN', '10A8', 'Nữ', '29/10/2011', 'AN-DONG', '26367@ttgdtxcva.edu.vn', '26367', 'dbf1a048ed8156246cb5456189da5e5f5fa730d5d91da39598675978c6f451bd');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26368', '10000325', 'VŨ THỊ TUYẾT NHUNG', '10A8', 'Nữ', '08/10/2010', 'AN-DONG', '26368@ttgdtxcva.edu.vn', '26368', 'e3c34c999d9781db32fabbbd2ef5d2daf010d1fde76dbee02cc12577a6811892');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26369', '10000326', 'NGUYỄN PHẠM HỒNG PHẤN', '10A8', 'Nữ', '23/01/2011', 'AN-DONG', '26369@ttgdtxcva.edu.vn', '26369', '482375b4d5b6c72e5a35e8ae007affc072b6e597cbf54e7e03a4dbea31473dc8');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26370', '10000327', 'TĂNG TOÀN PHONG', '10A8', 'Nam', '10/10/2011', 'AN-DONG', '26370@ttgdtxcva.edu.vn', '26370', '5153505d75470e58b0f0495b4d3cea8124ea9de06b25a6b4be82eaa4e5e9b8c6');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26371', '10000328', 'NGUYỄN HOÀNG QUÂN', '10A8', 'Nam', '05/12/2011', 'AN-DONG', '26371@ttgdtxcva.edu.vn', '26371', '6cc53f648e523d3a4fef598b2d543206f6b51a41d4e870333fcfe3e29f20ae74');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26372', '10000329', 'NGUYỄN HOÀNG KHÁNH QUYÊN', '10A8', 'Nữ', '04/11/2010', 'AN-DONG', '26372@ttgdtxcva.edu.vn', '26372', '122fabb21caec7b0261091d633a9f84c9d2fabb2ed6cbfdd806db6da4299d0d7');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26373', '10000330', 'HUỲNH QUỲNH TÂM', '10A8', 'Nữ', '15/07/2011', 'AN-DONG', '26373@ttgdtxcva.edu.vn', '26373', '2827e6f657c8aaebd19089a936bcc65d6d67ef1411e0a2da2afb0d7c2e170c2d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26375', '10000331', 'KIM GIA THỊNH', '10A8', 'Nam', '21/12/2011', 'AN-DONG', '26375@ttgdtxcva.edu.vn', '26375', '18714b61260be823fae54079ecf31d22869d71cf605ba3f09f12b337c06feaf2');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26374', '10000332', 'NGUYỄN VŨ THỊNH', '10A8', 'Nam', '13/10/2011', 'AN-DONG', '26374@ttgdtxcva.edu.vn', '26374', 'e645d3d895882a90e4e7c959922c403bddff7ae803c2d7d41347ccd3446df59c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26377', '10000333', 'VŨ PHƯƠNG THUỲ', '10A8', 'Nữ', '22/04/2011', 'AN-DONG', '26377@ttgdtxcva.edu.vn', '26377', 'fea8f09e9bd5f2d72216aabd691466f376083834cc21d83fd8f85ed92f16e534');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26376', '10000334', 'ĐÀM PHẠM ANH THƯ', '10A8', 'Nữ', '06/08/2011', 'AN-DONG', '26376@ttgdtxcva.edu.vn', '26376', '4b0503ec18737cc84ee26080e841661bb9b6137159ecdc59e9c23de1acb3a21f');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26381', '10000335', 'ĐỖ NGUYỄN AN THY', '10A8', 'Nữ', '05/11/2011', 'AN-DONG', '26381@ttgdtxcva.edu.vn', '26381', '01c50a207a02aa0d05aa3e13cb4ff1b040e5f077a33a7dd55e9d71b03192fb1e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26380', '10000337', 'NGUYỄN NGỌC UYÊN THY', '10A8', 'Nữ', '11/04/2011', 'AN-DONG', '26380@ttgdtxcva.edu.vn', '26380', '1911ae86a0546b0e7c330a549cb1d83cbaedc8b705db4d1733135a1cfb26ffda');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26379', '10000336', 'NGUYỄN NGỌC UYÊN THY', '10A8', 'Nữ', '06/07/2011', 'AN-DONG', '26379@ttgdtxcva.edu.vn', '26379', '71dd2feb8e748e4676870867d30394a7bdd8cae6fa5cfbb75a64ea7be0180108');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26378', '10000338', 'TRẦN NGỌC THY', '10A8', 'Nữ', '04/07/2011', 'AN-DONG', '26378@ttgdtxcva.edu.vn', '26378', 'af4e0efd98202be2f378e6ce7a0bdabb576bfaddfd247f108a01db0041d5322d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26382', '10000339', 'NGÔ KIM TIỀN', '10A8', 'Nữ', '16/12/2011', 'AN-DONG', '26382@ttgdtxcva.edu.vn', '26382', '19c423fe01ecc16e25656d341a71630edce1bee44dd8a80fddc46be945f30ff9');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26383', '10000340', 'NGUYỄN TRẦN BẢO TRÂM', '10A8', 'Nữ', '21/06/2011', 'AN-DONG', '26383@ttgdtxcva.edu.vn', '26383', '2b72c43eee9b3f503c5b67277d4ae2fdc4cfafeb9efa75d2c1a6da21460bd040');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26385', '10000341', 'ĐIỀN THỊ THANH TRÚC', '10A8', 'Nữ', '21/07/2011', 'AN-DONG', '26385@ttgdtxcva.edu.vn', '26385', '5bba0dd5be154de9c9624d36806984b42c585c036b67b91019de0f2ce14b9949');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26384', '10000342', 'TRƯƠNG HOÀI THANH TRÚC', '10A8', 'Nữ', '03/06/2011', 'AN-DONG', '26384@ttgdtxcva.edu.vn', '26384', 'ac0d567c5023cc8e651e265a4604dc0ecfaa0db8450efdc809fc256bc4aaa4f5');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26564', '10000343', 'HOÀNG ANH TUẤN', '10A8', 'Nam', '03/04/2010', 'AN-DONG', '26564@ttgdtxcva.edu.vn', '26564', '91eba8e95e57ec8592050106f04d3aa92b1798e0cdccb74914aff552cbcb5536');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26386', '10000344', 'TRẦN NGỌC MINH TUYỀN', '10A8', 'Nữ', '25/10/2011', 'AN-DONG', '26386@ttgdtxcva.edu.vn', '26386', '69b17946b5980fe6528be7bce0676913609e14fcb428101a75b5eda5f2f7b2ec');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26387', '10000345', 'NGUYỄN THIÊNG Ý', '10A8', 'Nữ', '06/09/2011', 'AN-DONG', '26387@ttgdtxcva.edu.vn', '26387', 'fefa9f3d0d25d33994299ef76596628731bf577f3730275dbf50a6786e5ab870');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24230', '12000203', 'HỒ HOÀI AN', '12A6', 'Nữ', '02/07/2009', 'AN-DONG', '24230@ttgdtxcva.edu.vn', '24230', '9fb15cfb41d7ae0c0fd3f3d9c5c1069cfbb0db0dd0822733f1f6a32321ebdf4f');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24470', '12000204', 'NGUYỄN HOÀI AN', '12A6', 'Nam', '28/03/2009', 'AN-DONG', '24470@ttgdtxcva.edu.vn', '24470', 'bbc4fda526b68f6fe9bab2dd2e70cca4589883a67e79277f80ae603e17c69f2e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24233', '12000205', 'VÕ TÚ ANH', '12A6', 'Nữ', '03/05/2009', 'AN-DONG', '24233@ttgdtxcva.edu.vn', '24233', '9b36c639267c3dd6f8787fad8af9ae65d132f29b617b61b25f4b28a3f0b79c81');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24232', '12000206', 'VÕ TUYẾT ANH', '12A6', 'Nữ', '11/10/2009', 'AN-DONG', '24232@ttgdtxcva.edu.vn', '24232', 'c3b2bbe83d1877fc4538c31844e1ce01d33a9c82f2f32e49f1815c798be8dfd0');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24231', '12000207', 'VÕ GIA ÂN', '12A6', 'Nam', '04/12/2009', 'AN-DONG', '24231@ttgdtxcva.edu.vn', '24231', 'a29693ca0e5d2b5974ff7874846fa3e0c4ac6439f8eedefa9369d8725a9a01ad');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24234', '12000208', 'NGUYỄN THÁI BẢO', '12A6', 'Nam', '02/06/2009', 'AN-DONG', '24234@ttgdtxcva.edu.vn', '24234', '163cb5d5816439f853a53f8641b4d5b2f23db417baed6dd28dac8e7a411b076a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24235', '12000209', 'TRẦN THỊ TUYẾT DIỄM', '12A6', 'Nữ', '03/11/2009', 'AN-DONG', '24235@ttgdtxcva.edu.vn', '24235', 'd078a8ea05a9a979e750c401994f4e4dfa09292b38705799db87b2d2e924a33d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24236', '12000210', 'TRẦN THỊ MỸ DUNG', '12A6', 'Nữ', '05/12/2009', 'AN-DONG', '24236@ttgdtxcva.edu.vn', '24236', 'af901fa8a7174ba2521349cda2d40ca112bad433add7089b2263c9691cf5353b');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24237', '12000211', 'NGUYỄN ĐỨC DUY', '12A6', 'Nam', '22/02/2009', 'AN-DONG', '24237@ttgdtxcva.edu.vn', '24237', 'bb784394302c9adb16b1535a0a8d6c406bfe9566d15084dc39aafe528ae2a15c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24240', '12000212', 'HUỲNH TUẤN HẠO', '12A6', 'Nam', '25/10/2009', 'AN-DONG', '24240@ttgdtxcva.edu.vn', '24240', '9dddf15d5e34ebc414601f8e55a44a79ab4f5208458043f616a0853acee5ff77');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24239', '12000213', 'NGÔ GIA HÂN', '12A6', 'Nữ', '30/12/2009', 'AN-DONG', '24239@ttgdtxcva.edu.vn', '24239', 'd53afa4dd0a27ce594c6a78e1b5230a76eba313074ec04ec68beef2e62d9dba9');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24242', '12000214', 'BÙI QUỐC HUY', '12A6', 'Nam', '24/10/2009', 'AN-DONG', '24242@ttgdtxcva.edu.vn', '24242', '0f68234be0e77edf52126db6a6f863fa60f6686f2046df17a5f7aa42b6d30489');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24243', '12000215', 'NGUYỄN TUẤN KIỆT', '12A6', 'Nam', '16/10/2009', 'AN-DONG', '24243@ttgdtxcva.edu.vn', '24243', 'e2bf6613253edcbce154fb9c3356166dc2b9ce5bde25aad199e21ecf4a2c8d25');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24245', '12000216', 'ĐÀO KIM LƯƠNG', '12A6', 'Nam', '29/07/2009', 'AN-DONG', '24245@ttgdtxcva.edu.vn', '24245', 'b9c09263d7f9856dcc2da95e3b73bdba6fb6d1b29cd84d23e15a76a4c011d33a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24246', '12000217', 'LÊ THỊ NGỌC MAI', '12A6', 'Nữ', '11/02/2009', 'AN-DONG', '24246@ttgdtxcva.edu.vn', '24246', 'b6dcb8a5e0a1bfd7d47d1e16acb6cec83804d05af927f07171f50c0163524791');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24247', '12000218', 'ĐINH QUANG MINH', '12A6', 'Nam', '05/08/2009', 'AN-DONG', '24247@ttgdtxcva.edu.vn', '24247', 'cd78ca74eada271baf1b8cdc6fecd3ddb60e37c71520cb49746f660b7fac3237');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24249', '12000219', 'HUỲNH TRƯƠNG BẢO NGỌC', '12A6', 'Nữ', '14/07/2009', 'AN-DONG', '24249@ttgdtxcva.edu.vn', '24249', 'cb862921782fcd93350249ee7228e3df6a95d659808270e0b86cfe77b6727925');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24248', '12000220', 'NGUYỄN BẢO NGỌC', '12A6', 'Nữ', '11/06/2009', 'AN-DONG', '24248@ttgdtxcva.edu.vn', '24248', 'c827c745f353aab0d2ba354ed86e382562dd4869cbe2b2f76e404658736843dd');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24251', '12000221', 'NGUYỄN LÊ HỮU NHÂN', '12A6', 'Nam', '15/08/2009', 'AN-DONG', '24251@ttgdtxcva.edu.vn', '24251', 'b1af4958098edb17229ad8feba92e9c263d137b2be0597632a8106b0dba1cf6e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24250', '12000222', 'TRẦN ĐỨC NHÂN', '12A6', 'Nam', '22/12/2009', 'AN-DONG', '24250@ttgdtxcva.edu.vn', '24250', '71880ae32716450d1e3f1b6b3c3fa187b18852c4a47d78d873d5ca50f369097f');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24252', '12000223', 'TỐNG THIỀU NGUYỄN NHẬT', '12A6', 'Nam', '11/11/2009', 'AN-DONG', '24252@ttgdtxcva.edu.vn', '24252', '867c134be5c9f33c52898020bac9bf639f971a23f155db16c8c8ea9d214b8790');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24253', '12000224', 'LÃ NGỌC QUỲNH NHI', '12A6', 'Nữ', '09/03/2009', 'AN-DONG', '24253@ttgdtxcva.edu.vn', '24253', '4584eaab93c0337a852a5e844aa88e440a35536caafb7325e3b451d19d51bc46');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24254', '12000225', 'NGUYỄN THỊ YẾN NHI', '12A6', 'Nữ', '28/03/2009', 'AN-DONG', '24254@ttgdtxcva.edu.vn', '24254', 'bbc4fda526b68f6fe9bab2dd2e70cca4589883a67e79277f80ae603e17c69f2e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24255', '12000226', 'ĐOÀN YẾN NHƯ', '12A6', 'Nữ', '06/11/2009', 'AN-DONG', '24255@ttgdtxcva.edu.vn', '24255', 'afd592ee64f83dd4f6e63b4fc301567ba2717a5112f7801aea2e727d94dbb7fc');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24256', '12000227', 'NGUYỄN XUÂN PHÁT', '12A6', 'Nam', '07/09/2009', 'AN-DONG', '24256@ttgdtxcva.edu.vn', '24256', '430fc87330f3913730a7824d68e1cf5d298bc33dafff739139f981d7150ff74d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24257', '12000228', 'HÀNG TÚ PHƯƠNG', '12A6', 'Nữ', '06/09/2009', 'AN-DONG', '24257@ttgdtxcva.edu.vn', '24257', '0732859888ddfb438881e768a14307f47e09ca7976ba0ea64c0843a0a7d590c7');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24258', '12000229', 'NGUYỄN VĂN MINH QUÂN', '12A6', 'Nam', '04/05/2009', 'AN-DONG', '24258@ttgdtxcva.edu.vn', '24258', 'cac122523e9ed99c84671820cb3c6454a236d6b5f608fece0a1b0b11464f5392');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24259', '12000230', 'HUỲNH NGỌC NHÃ QUYÊN', '12A6', 'Nữ', '10/02/2009', 'AN-DONG', '24259@ttgdtxcva.edu.vn', '24259', 'f766b720b19226ea7719976d1926b33fb219cb4eaaf375d36e0cdc417e062f6b');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24260', '12000231', 'NGUYỄN VÕ NHƯ QUỲNH', '12A6', 'Nữ', '15/09/2009', 'AN-DONG', '24260@ttgdtxcva.edu.vn', '24260', '6968b9bdb4dd6ad3b1b97416fa1052274174f3b7f7d192d0201e8a750e8ae322');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24261', '12000232', 'HỒ NGỌC SƠN', '12A6', 'Nam', '18/10/2009', 'AN-DONG', '24261@ttgdtxcva.edu.vn', '24261', '76e92d21777df0dd5040c187a6ea8af63f032528e66fe85a7d3dfd3924108456');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24262', '12000233', 'NGUYỄN QUÁCH GIA THIÊN', '12A6', 'Nam', '12/11/2009', 'AN-DONG', '24262@ttgdtxcva.edu.vn', '24262', 'f36ed013aa3214ce07f41c1cfbbf2ce5661ab89bc40498692ad448ba312db790');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24263', '12000234', 'NGUYỄN QUANG THỊNH', '12A6', 'Nam', '09/09/2009', 'AN-DONG', '24263@ttgdtxcva.edu.vn', '24263', 'def4b8371c55f888c802f0228cdd9f3d035efc77d974f347fcd8536bf3fcaf0a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24264', '12000235', 'CHẠC GIA THUẬN', '12A6', 'Nam', '24/08/2009', 'AN-DONG', '24264@ttgdtxcva.edu.vn', '24264', '1502e9ae60b128282896cdcde58782f188b1db0506f44d9d32a726b68f327c79');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24266', '12000236', 'NGUYỄN NGỌC MINH THÙY', '12A6', 'Nữ', '17/12/2009', 'AN-DONG', '24266@ttgdtxcva.edu.vn', '24266', '46e9d22f3bc04be7b03d294863485433241dc2488d35e270666367f452698252');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24265', '12000237', 'MAI NGUYỄN HOÀI THƯƠNG', '12A6', 'Nữ', '28/06/2009', 'AN-DONG', '24265@ttgdtxcva.edu.vn', '24265', '717a04db97503a222163adbb6f96680c13673dff78d59597b6e1548f82603359');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24267', '12000238', 'HUỲNH CHIÊM ĐẠI TIÊN', '12A6', 'Nữ', '07/02/2009', 'AN-DONG', '24267@ttgdtxcva.edu.vn', '24267', '43c75fdb504012dcd687477db0a50902ea5d725004ee159b1ee00717665fcd91');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24269', '12000239', 'NGUYỄN THANH TUYỀN', '12A6', 'Nữ', '18/06/2009', 'AN-DONG', '24269@ttgdtxcva.edu.vn', '24269', '5e4ae1ba3ae7d299e52a86cec6923d4b8a727ebb54fbc5333f5d46f637db390c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24270', '12000240', 'NGUYỄN THỊ THANH TUYỀN', '12A6', 'Nữ', '31/10/2008', 'AN-DONG', '24270@ttgdtxcva.edu.vn', '24270', '7e5a2d652a2978f9d46e041c7aa0d1f52f10722b14af9637490becd359650f9e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24271', '12000241', 'NGUYỄN TRƯƠNG THÀNH VINH', '12A6', 'Nam', '01/06/2009', 'AN-DONG', '24271@ttgdtxcva.edu.vn', '24271', '96ebbe2f08f57b9b32f5d6c16504b4a2c02b9ec7143c785a7dfcc2ebc9b6f069');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24274', '12000242', 'HUỲNH DƯƠNG KHÁNH VY', '12A6', 'Nữ', '02/10/2009', 'AN-DONG', '24274@ttgdtxcva.edu.vn', '24274', '4766e8e777f25460412cf6522b98ef705ee6897d4dc77e4f80151c1c887a23ff');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24275', '12000243', 'LÊ LÂM TƯỜNG VY', '12A6', 'Nữ', '01/09/2009', 'AN-DONG', '24275@ttgdtxcva.edu.vn', '24275', 'a1f806329b78d510c2b8a92c1e5a19097ee613d928e246026ce208ee898b97d1');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24273', '12000244', 'PHƯƠNG THANH VY', '12A6', 'Nữ', '26/10/2009', 'AN-DONG', '24273@ttgdtxcva.edu.vn', '24273', '3c5b52e7e90320691fbc82ba43f363fb56e5650c7e974994754a1d83b3cb0a5a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24272', '12000245', 'TẠ ÂU LẠC VY', '12A6', 'Nữ', '29/09/2009', 'AN-DONG', '24272@ttgdtxcva.edu.vn', '24272', 'f219d4b0a9f8a5f758387e4537fe6aa538b7f0ca1d64760d0acf53b040123204');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24047', '12000042', 'LƯ NGUYỄN KHÁNH AN', '12A2', 'Nữ', '28/10/2009', 'AN-DONG', '24047@ttgdtxcva.edu.vn', '24047', '2ffccc44c424a99e6ae1b2f10629a4bba503463aa0e89f1b45377c565a5fd014');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('12000043', '12000043', 'PHAN LÂM QUỲNH ANH', '12A2', 'Nữ', '16/09/2008', 'AN-DONG', NULL, NULL, '4581e5725b95021de6b96889af85b604ba34a94d9d7294d57638405124d8d0f1');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24048', '12000044', 'VŨ GIA ÂN', '12A2', 'Nam', '25/04/2009', 'AN-DONG', '24048@ttgdtxcva.edu.vn', '24048', 'cefea92d09e51a72c412376bbef14ce1735a07f38f92f4bb76e4bd0b3e46806a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24051', '12000045', 'NGÔ THIÊN HOÀI BẢO', '12A2', 'Nam', '08/03/2009', 'AN-DONG', '24051@ttgdtxcva.edu.vn', '24051', 'bccecebbd4c000f16abc69c7168c0d98d71c098513a677e7051769270a2280ea');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24052', '12000046', 'TRẦN NGỌC BẢO', '12A2', 'Nam', '27/10/2009', 'AN-DONG', '24052@ttgdtxcva.edu.vn', '24052', 'f45e34588e8414a685cb1f69157a94271a3d89d65c712dfe9ca631d733613ee4');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24055', '12000047', 'LƯƠNG NGỌC DIỄM', '12A2', 'Nữ', '14/10/2009', 'AN-DONG', '24055@ttgdtxcva.edu.vn', '24055', '5ba565b81bc099618116df422333f16bbd7a1ee28e0a7bba7d0fcbba37e5cb75');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24056', '12000048', 'TRẦN THÙY DƯƠNG', '12A2', 'Nữ', '13/11/2009', 'AN-DONG', '24056@ttgdtxcva.edu.vn', '24056', '2da222474dc51b87fb07e73ff1e95b01d2e55e20709246d2389fe9ffff88f7a6');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24054', '12000049', 'CHÂU TRƯỜNG ĐẠT', '12A2', 'Nam', '30/01/2009', 'AN-DONG', '24054@ttgdtxcva.edu.vn', '24054', '16b888988f275bfae1cfa5d39ef74fea51cff7d573a2078b99e644935142e5a9');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24053', '12000050', 'NGUYỄN THÀNH ĐẠT', '12A2', 'Nam', '07/09/2009', 'AN-DONG', '24053@ttgdtxcva.edu.vn', '24053', '430fc87330f3913730a7824d68e1cf5d298bc33dafff739139f981d7150ff74d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24057', '12000051', 'NGUYỄN LÊ NGỌC HÂN', '12A2', 'Nữ', '02/11/2009', 'AN-DONG', '24057@ttgdtxcva.edu.vn', '24057', '0dbe590c7427edf7259099934a589816d355d2cf0d4fa8f8eb062c92fb35db85');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24059', '12000052', 'NGUYỄN MINH HOÀNG', '12A2', 'Nam', '21/01/2009', 'AN-DONG', '24059@ttgdtxcva.edu.vn', '24059', '0186d7c17ba502f4f4faa03005795f256f0ad8deab7f82fb748e509780a9a737');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24062', '12000053', 'NGUYỄN PHAN MINH HUY', '12A2', 'Nam', '19/01/2009', 'AN-DONG', '24062@ttgdtxcva.edu.vn', '24062', '29fd848ce67963d4f4055b74693e68d24f09abf4d9f58186497c1591d83f32c3');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24063', '12000054', 'NGUYỄN NGỌC HUỲNH', '12A2', 'Nữ', '24/02/2009', 'AN-DONG', '24063@ttgdtxcva.edu.vn', '24063', 'dbf42b85df3130095ffbe9ec8924eabdda957a5e1ffbf55c613d719e86fcd56c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24061', '12000055', 'LÝ THẾ HƯƠNG', '12A2', 'Nữ', '08/04/2009', 'AN-DONG', '24061@ttgdtxcva.edu.vn', '24061', '6d85ae2477d33ea10706f3ada2d5fb321963e212d334970c4a6a93ae08121bd3');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24066', '12000056', 'NGUYỄN BÙI NGÂN KHÁNH', '12A2', 'Nữ', '30/01/2009', 'AN-DONG', '24066@ttgdtxcva.edu.vn', '24066', '16b888988f275bfae1cfa5d39ef74fea51cff7d573a2078b99e644935142e5a9');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24065', '12000057', 'NGUYỄN VÂN KHÁNH', '12A2', 'Nữ', '12/03/2009', 'AN-DONG', '24065@ttgdtxcva.edu.vn', '24065', '664e154c2648299a42d2a6a82508cda9dffaea55455870f835b02d14f8b88bc4');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24067', '12000058', 'NGÔ ANH KIỆT', '12A2', 'Nam', '24/03/2009', 'AN-DONG', '24067@ttgdtxcva.edu.vn', '24067', '7ecacdede5ecf81e4a80489bfacc9a92bc920cda7a5fd704e9d2b27dca17275d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24068', '12000059', 'HỒ NGUYỄN HẢI LAM', '12A2', 'Nữ', '18/03/2009', 'AN-DONG', '24068@ttgdtxcva.edu.vn', '24068', '7a82f489dbf0830b4f07346ef82fbb66c0fb78f9545f9d3aec2cee16d144b8a1');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24069', '12000060', 'LÂM GIA LINH', '12A2', 'Nữ', '10/05/2009', 'AN-DONG', '24069@ttgdtxcva.edu.vn', '24069', '4fb941e6ebea10f6316b44441fffa7e18d6ba3d9ee66a7df39592557a27f613b');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24071', '12000061', 'LÊ KIM LOAN', '12A2', 'Nữ', '05/09/2009', 'AN-DONG', '24071@ttgdtxcva.edu.vn', '24071', 'bbc33cbe6473144fb3706ce45a480d1270be65581318fd0d8b59e4252d2321e6');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24072', '12000062', 'HÀ THỊ TUYẾT MAI', '12A2', 'Nữ', '28/12/2008', 'AN-DONG', '24072@ttgdtxcva.edu.vn', '24072', '96e052f0c7af9e9a739fafb0e22405feffb8845d95bf074f243d2a6f5a374e6b');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24074', '12000063', 'LÊ PHAN KIM NGÂN', '12A2', 'Nữ', '16/04/2009', 'AN-DONG', '24074@ttgdtxcva.edu.vn', '24074', 'ea54c1a710d25a7efcb764383bbf665ad790d629762c1ed6defb5cd92179f0ba');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24073', '12000064', 'NGUYỄN THỊ THANH NGÂN', '12A2', 'Nữ', '30/12/2009', 'AN-DONG', '24073@ttgdtxcva.edu.vn', '24073', 'd53afa4dd0a27ce594c6a78e1b5230a76eba313074ec04ec68beef2e62d9dba9');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24075', '12000065', 'NGUYỄN HOÀNG ĐÔNG NGHI', '12A2', 'Nữ', '12/03/2009', 'AN-DONG', '24075@ttgdtxcva.edu.vn', '24075', '664e154c2648299a42d2a6a82508cda9dffaea55455870f835b02d14f8b88bc4');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24076', '12000066', 'LÂM THIÊN NHI', '12A2', 'Nữ', '21/07/2009', 'AN-DONG', '24076@ttgdtxcva.edu.vn', '24076', '97b6deea5dce4cd874bc41a314e639d4dfd471feb7b7bb3f5a7b97298c086b72');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24077', '12000067', 'NGUYỄN HẢI PHI', '12A2', 'Nam', '17/02/2009', 'AN-DONG', '24077@ttgdtxcva.edu.vn', '24077', 'd6e539e51cb60d77508cb905c5451af5d5653b94352f0d259f6d8743de022713');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24078', '12000068', 'NGUYỄN CAO MỸ PHƯƠNG', '12A2', 'Nữ', '10/09/2009', 'AN-DONG', '24078@ttgdtxcva.edu.vn', '24078', '12482a8618928a60774d9fbb19d3cfb6da599485784261c1a05317f247638a15');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24079', '12000069', 'HỒ NGUYỄN NHƯ QUỲNH', '12A2', 'Nữ', '30/11/2009', 'AN-DONG', '24079@ttgdtxcva.edu.vn', '24079', '98cadffbf5f26a397f2186b7e31e02999baec9c44c9e3f92bcf2b65d69ef1418');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24357', '12000070', 'LÊ NHƯ QUỲNH', '12A2', 'Nữ', '14/12/2009', 'AN-DONG', '24357@ttgdtxcva.edu.vn', '24357', '5652794061a8de0d62b13f74714ebdddcc2660e6d435edf188104eaec78be3ed');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24082', '12000071', 'TRẦN NGỌC THẢO', '12A2', 'Nữ', '22/06/2009', 'AN-DONG', '24082@ttgdtxcva.edu.vn', '24082', 'a849ab6b0946f03c69b8ab039f8ac4320df1e799963630110fa940d365a14d4e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24081', '12000072', 'TRẦN NGUYỄN QUỐC THẮNG', '12A2', 'Nam', '28/01/2009', 'AN-DONG', '24081@ttgdtxcva.edu.vn', '24081', '7992e2bf2f824dca22878c8db1ea3b06cece716172a9467e9674534c02c57d48');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24084', '12000073', 'PHAN NGỌC MINH THIỆN', '12A2', 'Nam', '06/08/2009', 'AN-DONG', '24084@ttgdtxcva.edu.vn', '24084', 'f55cbea57b4f9185aa58849f3fcda925ef1fc66fd8fc713d04a3cd18d887eb44');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24085', '12000074', 'PHAN VÕ MINH TIẾN', '12A2', 'Nam', '20/04/2009', 'AN-DONG', '24085@ttgdtxcva.edu.vn', '24085', '29810e0bb4d9388e50b3506e4bc3c66e9d18a172042ba159c3ca8ba30ac781e4');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24087', '12000075', 'VÕ HOÀNG UYÊN TRANG', '12A2', 'Nữ', '20/01/2009', 'AN-DONG', '24087@ttgdtxcva.edu.vn', '24087', 'ad45b7df65b7e16d1e9fd8e0f945a7ed241d87a32a7f853821a58f745bb26434');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24086', '12000076', 'LÊ BẢO TRÂN', '12A2', 'Nữ', '13/12/2009', 'AN-DONG', '24086@ttgdtxcva.edu.vn', '24086', 'b65191a185831a74333be17c29de35a82a5c416b9fb50795ec678aa43a745e98');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24088', '12000077', 'LƯU BỈNH TRÍ', '12A2', 'Nam', '31/08/2009', 'AN-DONG', '24088@ttgdtxcva.edu.vn', '24088', '7a85322e8378fe32e390b23cd347b9add92d2ee5442f269dd60e12e290117a14');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24089', '12000078', 'NGUYỄN NGỌC TRÚC', '12A2', 'Nữ', '23/09/2009', 'AN-DONG', '24089@ttgdtxcva.edu.vn', '24089', 'ebfb0b0bd6574bc168753407f44ba1a98a76dbf199b9c8a7d48c703bb0064196');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24090', '12000079', 'NGUYỄN HOÀNG YẾN VY', '12A2', 'Nữ', '14/05/2009', 'AN-DONG', '24090@ttgdtxcva.edu.vn', '24090', '25b2ec54c968fb13c20702175f1c621eec5679b9a97945ab8273e8eebf45c3fc');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24091', '12000080', 'NGUYỄN NGỌC TƯỜNG VY', '12A2', 'Nữ', '08/06/2009', 'AN-DONG', '24091@ttgdtxcva.edu.vn', '24091', 'b72ed7df515636e7ae7d476d4d0d5ec8eb5dc96b0ed08f0c656b64d1801e07da');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24010', '12000010', 'CHÂU MINH HẢI', '12A1', 'Nam', '31/07/2009', 'AN-DONG', '24010@ttgdtxcva.edu.vn', '24010', '3f9b9c2822c04f55534deb74410458a8ce91ae19f77b21a2999c8754db35fa81');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24141', '12000011', 'HUỲNH GIA HÂN', '12A1', 'Nữ', '08/04/2009', 'AN-DONG', '24141@ttgdtxcva.edu.vn', '24141', '6d85ae2477d33ea10706f3ada2d5fb321963e212d334970c4a6a93ae08121bd3');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24012', '12000012', 'HUỲNH QUỐC HIỆP', '12A1', 'Nam', '27/08/2009', 'AN-DONG', '24012@ttgdtxcva.edu.vn', '24012', '35089ba5ca67e828b0ac1398a72fa84826ad4ee316e289067422e1259d3e1b97');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24013', '12000013', 'ĐẶNG PHÚC HUY HOÀNG', '12A1', 'Nam', '25/03/2009', 'AN-DONG', '24013@ttgdtxcva.edu.vn', '24013', '6e6cf49f7c1f287d885ebf8c815f3fbd8ba4d4e9ec1506caf32648ba1fa355da');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24014', '12000014', 'ĐỖ TẤN HƯNG', '12A1', 'Nam', '20/09/2009', 'AN-DONG', '24014@ttgdtxcva.edu.vn', '24014', '33f63fdca6471586f33c5c4ea3c79b10ccf1ae6281410815a66a45f3457c6192');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24015', '12000015', 'TRẦN LONG HỶ', '12A1', 'Nam', '24/06/2009', 'AN-DONG', '24015@ttgdtxcva.edu.vn', '24015', '59c1279fd10030b01dcec97435ed2f0af5698d16d14b80269bcd29d9156ec953');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24016', '12000016', 'TRƯƠNG BẢO KHA', '12A1', 'Nam', '15/05/2009', 'AN-DONG', '24016@ttgdtxcva.edu.vn', '24016', '1139edafe7ea660d2a94521ca69c07a34420e5fe4d43b1824b5a789ee312f525');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24017', '12000017', 'MAI HỒNG KHANG', '12A1', 'Nữ', '27/02/2009', 'AN-DONG', '24017@ttgdtxcva.edu.vn', '24017', '30ea8588962793026f9eff125a0fa8f893be9fce8f78e48c1949c68e213e6394');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24018', '12000018', 'NGUYỄN MAI KHANH', '12A1', 'Nữ', '24/11/2009', 'AN-DONG', '24018@ttgdtxcva.edu.vn', '24018', 'b49c5849dd87c6de0ab38f56b1f8e9655f2a4fed348f56c7ded27ff6a4ac0757');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24521', '12000019', 'NGUYỄN NGỌC PHƯƠNG LINH', '12A1', 'Nữ', '19/09/2009', 'AN-DONG', '24521@ttgdtxcva.edu.vn', '24521', '3cda20af2ef7cbbf4ce93a56444cbd3e16a622f416d6de7bcc507c0056100df6');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24021', '12000020', 'HUỲNH CHIÊM ĐẠI MỸ', '12A1', 'Nữ', '07/02/2009', 'AN-DONG', '24021@ttgdtxcva.edu.vn', '24021', '43c75fdb504012dcd687477db0a50902ea5d725004ee159b1ee00717665fcd91');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24022', '12000021', 'LÊ TUẤN NGHĨA', '12A1', 'Nam', '27/04/2009', 'AN-DONG', '24022@ttgdtxcva.edu.vn', '24022', 'cccd15106d391471ab866b7e045d6f93fc496b8e5acb3a5aa2c2976bb8e97ee8');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24023', '12000022', 'LÊ THỊ QUẾ NHI', '12A1', 'Nữ', '01/09/2009', 'AN-DONG', '24023@ttgdtxcva.edu.vn', '24023', 'a1f806329b78d510c2b8a92c1e5a19097ee613d928e246026ce208ee898b97d1');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24024', '12000023', 'TRẦN BẢO NHƯ', '12A1', 'Nữ', '11/07/2009', 'AN-DONG', '24024@ttgdtxcva.edu.vn', '24024', '3f181b35a4b4b19b473d20f1b347659512e1d26bff4fcf1ad00d122dcd62c92b');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24025', '12000024', 'TRƯƠNG THANH PHONG', '12A1', 'Nam', '09/10/2009', 'AN-DONG', '24025@ttgdtxcva.edu.vn', '24025', 'e45e5fbd2ca6523f2638d12a25f9f64864b4ff74e75284aae5b3139a56aa8bed');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24026', '12000025', 'NGUYỄN NGỌC PHÚC', '12A1', 'Nam', '03/01/2009', 'AN-DONG', '24026@ttgdtxcva.edu.vn', '24026', '9e9ab185705ec61e3687f57c64194c97cfd54ed4a753eb77a63284ac2c641f75');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24028', '12000026', 'TRƯƠNG NHƯ QUỲNH', '12A1', 'Nữ', '26/10/2009', 'AN-DONG', '24028@ttgdtxcva.edu.vn', '24028', '3c5b52e7e90320691fbc82ba43f363fb56e5650c7e974994754a1d83b3cb0a5a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24029', '12000027', 'TRẦN BẢO SAN', '12A1', 'Nữ', '15/12/2009', 'AN-DONG', '24029@ttgdtxcva.edu.vn', '24029', 'fd6bef1452726f838f0380136660a969622ace6d87b0e68605f8789f9d1c8198');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24030', '12000028', 'TRẦN QUÝ SANG', '12A1', 'Nam', '08/01/2009', 'AN-DONG', '24030@ttgdtxcva.edu.vn', '24030', '488648d1f3390dd43a8b766bb7daaedc27d94041106f2dfe7005ac6c19883fce');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24031', '12000029', 'HÀ THANH SƠN', '12A1', 'Nam', '13/08/2009', 'AN-DONG', '24031@ttgdtxcva.edu.vn', '24031', '11776ac0fb79fb00a5452ace9e93f7bb85a15e30513020df66ab801e6901a74a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24032', '12000030', 'NGUYỄN HÀ PHƯỚC THÊM', '12A1', 'Nam', '18/10/2009', 'AN-DONG', '24032@ttgdtxcva.edu.vn', '24032', '76e92d21777df0dd5040c187a6ea8af63f032528e66fe85a7d3dfd3924108456');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24035', '12000031', 'NGUYỄN MAI BẢO THY', '12A1', 'Nữ', '05/09/2009', 'AN-DONG', '24035@ttgdtxcva.edu.vn', '24035', 'bbc33cbe6473144fb3706ce45a480d1270be65581318fd0d8b59e4252d2321e6');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24034', '12000032', 'NGUYỄN PHẠM BẢO THY', '12A1', 'Nữ', '15/07/2009', 'AN-DONG', '24034@ttgdtxcva.edu.vn', '24034', 'f66174f049df52c47fabe4d0cef591e1f48d85e5c47b1e0e3aea37f90e63904a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24036', '12000033', 'PHAN QUỐC MINH TỊNH', '12A1', 'Nam', '24/04/2008', 'AN-DONG', '24036@ttgdtxcva.edu.vn', '24036', '40d2a6951e286c2000c2e36243e7791b7c5351406f5ac26e8580890987b04d2f');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24037', '12000034', 'NGUYỄN TRỌNG TOÀN', '12A1', 'Nam', '17/02/2009', 'AN-DONG', '24037@ttgdtxcva.edu.vn', '24037', 'd6e539e51cb60d77508cb905c5451af5d5653b94352f0d259f6d8743de022713');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24038', '12000035', 'TẠ NGUYỄN QUANG TUẤN', '12A1', 'Nam', '01/07/2007', 'AN-DONG', '24038@ttgdtxcva.edu.vn', '24038', 'ef7e09eaa03f0337a70208ad405ebc8aef355b7666b710cffb5c50ba81569eea');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24039', '12000036', 'NGUYỄN THANH TÙNG', '12A1', 'Nam', '18/08/2009', 'AN-DONG', '24039@ttgdtxcva.edu.vn', '24039', '8a289cf01183d3aa0134ba2c07c7ddf47ba449c7f64bf9c07cbfbb44a7ce336f');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24040', '12000037', 'ĐÀO PHẠM BÍCH TUYỀN', '12A1', 'Nữ', '07/12/2009', 'AN-DONG', '24040@ttgdtxcva.edu.vn', '24040', '785f68e1fe03d6a51d73e5d514b3272377969cbd2ca7e2486469a00de7c5be23');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24041', '12000038', 'HUỲNH NHÃ TUYẾT', '12A1', 'Nữ', '30/05/2009', 'AN-DONG', '24041@ttgdtxcva.edu.vn', '24041', 'f2d2e0155a41aa5e66596ffbaf8240a8e6cce2bf65e0af1653ea0c49d9d9e073');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24043', '12000039', 'NGUYỄN QUỐC VŨ', '12A1', 'Nam', '22/01/2009', 'AN-DONG', '24043@ttgdtxcva.edu.vn', '24043', 'ab7e9c59a8e941b8ca562c7867e5e198a45900b53a3dcb26f99f4506fc80c844');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24046', '12000040', 'NGUYỄN HUỲNH PHƯƠNG VY', '12A1', 'Nữ', '08/07/2009', 'AN-DONG', '24046@ttgdtxcva.edu.vn', '24046', '35aee7a27d0c62cd39fef510894c44fccb50a93e598e8b015b5e6ecc5d4561c7');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24044', '12000041', 'NGUYỄN PHAN NGỌC VY', '12A1', 'Nữ', '16/03/2009', 'AN-DONG', '24044@ttgdtxcva.edu.vn', '24044', 'aa0a14faa5ea071a689b0fcca11c167388cb28b3e38926420ce8200fd416e32a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24184', '12000163', 'NGUYỄN CHÂU BẢO AN', '12A5', 'Nữ', '22/08/2009', 'AN-DONG', '24184@ttgdtxcva.edu.vn', '24184', '8d217de87759abeca78b486058ba8bc33b55bc01e52a29a2c8b34acf1a30025b');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24185', '12000164', 'NGUYỄN HOÀI BẢO', '12A5', 'Nam', '11/10/2009', 'AN-DONG', '24185@ttgdtxcva.edu.vn', '24185', 'c3b2bbe83d1877fc4538c31844e1ce01d33a9c82f2f32e49f1815c798be8dfd0');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24186', '12000165', 'TRẦN NGỌC MINH CHÂU', '12A5', 'Nữ', '20/04/2009', 'AN-DONG', '24186@ttgdtxcva.edu.vn', '24186', '29810e0bb4d9388e50b3506e4bc3c66e9d18a172042ba159c3ca8ba30ac781e4');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24187', '12000166', 'TRẦN Y MINH CƯỜNG', '12A5', 'Nam', '19/08/2009', 'AN-DONG', '24187@ttgdtxcva.edu.vn', '24187', '77aa8814f9041c73088f2d3916aa6b452ca670c31b38f5014926fa588c69b699');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24189', '12000167', 'NGUYỄN MỸ DUNG', '12A5', 'Nữ', '04/10/2009', 'AN-DONG', '24189@ttgdtxcva.edu.vn', '24189', '52a6695140936447129e7a1467daeb9592bbba5490817b66eacfe9cb1f7d5d77');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24188', '12000168', 'TRẦN TRÍ ĐỨC', '12A5', 'Nam', '16/09/2009', 'AN-DONG', '24188@ttgdtxcva.edu.vn', '24188', '4ad8520655d752a9f8f813e8ef303992a59d1a8f48029faf1168bc13f5292deb');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24192', '12000169', 'HUỲNH NHẬT HÀO', '12A5', 'Nam', '05/06/2009', 'AN-DONG', '24192@ttgdtxcva.edu.vn', '24192', 'd68b2ff3d51393d02605ce6f80c0597ead274ddee432b6142b10c9a9b9aaeab9');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24191', '12000170', 'TRƯƠNG TUẤN HÀO', '12A5', 'Nam', '20/04/2009', 'AN-DONG', '24191@ttgdtxcva.edu.vn', '24191', '29810e0bb4d9388e50b3506e4bc3c66e9d18a172042ba159c3ca8ba30ac781e4');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24190', '12000171', 'LÝ GIA HÂN', '12A5', 'Nữ', '07/09/2009', 'AN-DONG', '24190@ttgdtxcva.edu.vn', '24190', '430fc87330f3913730a7824d68e1cf5d298bc33dafff739139f981d7150ff74d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24193', '12000172', 'DƯ TRẦN GIA HUY', '12A5', 'Nam', '11/04/2009', 'AN-DONG', '24193@ttgdtxcva.edu.vn', '24193', '4d1f31ec259939003df00474b24f8b473c7a498141f347b281f4316609deb508');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24194', '12000173', 'TRẦN QUỐC HUY', '12A5', 'Nam', '19/06/2009', 'AN-DONG', '24194@ttgdtxcva.edu.vn', '24194', 'b690b1e9f1059df5d338233270ef043ac4b7bc75d3bfdd57fa3002d9960258b4');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24195', '12000174', 'CHÂU VĂN KHẢI', '12A5', 'Nam', '27/01/2009', 'AN-DONG', '24195@ttgdtxcva.edu.vn', '24195', '7b3e3703a8c235748591adcda7c7d75e1dbb24be40492646ec35baf055f850bc');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24197', '12000175', 'NGUYỄN PHÚC PHAN KHANG', '12A5', 'Nam', '21/10/2009', 'AN-DONG', '24197@ttgdtxcva.edu.vn', '24197', 'df8a8f512c0cfd23dafd5674e22543dd0f2b0dbdedc7c70b7cad35354f6b5837');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24196', '12000176', 'TRẦN NGUYỄN MINH KHANG', '12A5', 'Nam', '10/04/2009', 'AN-DONG', '24196@ttgdtxcva.edu.vn', '24196', '61d365258324f10d4296109682bd91099b70f1d852fd252234b542aae4a9dede');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24198', '12000177', 'TRỊNH BẢO KHANG', '12A5', 'Nam', '11/01/2009', 'AN-DONG', '24198@ttgdtxcva.edu.vn', '24198', 'a8e52f6fc228a3cfd742da07d05450ea6b747bdbedb9a88e428ac8e9f2ade2f3');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24199', '12000178', 'ĐỖ QUỐC ĐĂNG KHOA', '12A5', 'Nam', '10/01/2009', 'AN-DONG', '24199@ttgdtxcva.edu.vn', '24199', 'af4bb958a125abc6a55554a9e036a0be676fdf7425e9ae9d70fbf51e77e62501');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24200', '12000179', 'NGUYỄN ANH KHÔI', '12A5', 'Nam', '30/03/2008', 'AN-DONG', '24200@ttgdtxcva.edu.vn', '24200', 'f847245d59ff5dd6329b0c85e6bf80e038880dceb3ddcd821da31ad9fd269e13');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24201', '12000180', 'TRẦN ANH KHÔI', '12A5', 'Nam', '07/09/2008', 'AN-DONG', '24201@ttgdtxcva.edu.vn', '24201', '60cf872f63eeaed3282da20cad05ab6926b810e99378f7b0a79cad4600879668');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24202', '12000181', 'VÕ THỊ NHỰT LINH', '12A5', 'Nữ', '03/12/2009', 'AN-DONG', '24202@ttgdtxcva.edu.vn', '24202', 'c0468fff90ff61d042e8e81caefcf67d4c61a5d3ebb46efbd318fb9d6f13bc1e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24203', '12000182', 'NGUYỄN LÊ TẤN LỘC', '12A5', 'Nam', '09/05/2009', 'AN-DONG', '24203@ttgdtxcva.edu.vn', '24203', 'd3fe81b99efd1229473cbb411f0350f7f37d362e5bace6228e4b6101a9bed366');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24204', '12000183', 'GIANG TUẤN LỢI', '12A5', 'Nam', '04/06/2009', 'AN-DONG', '24204@ttgdtxcva.edu.vn', '24204', 'db53b3c31e8bc79dc9d3204b5fdb22c14a721356100bcbd59b64b0cc02ad0481');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24206', '12000184', 'LÊ THỊ TUYẾT MAI', '12A5', 'Nữ', '23/12/2009', 'AN-DONG', '24206@ttgdtxcva.edu.vn', '24206', 'b8d6ddf0a45349b1c25fdcf45ebeadcb80ca37a044bfad87c635ea5dd05495fd');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24207', '12000185', 'TẠ GIA MẪN', '12A5', 'Nữ', '25/03/2009', 'AN-DONG', '24207@ttgdtxcva.edu.vn', '24207', '6e6cf49f7c1f287d885ebf8c815f3fbd8ba4d4e9ec1506caf32648ba1fa355da');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24208', '12000186', 'CHUNG NGỌC DIỄM MY', '12A5', 'Nữ', '13/03/2009', 'AN-DONG', '24208@ttgdtxcva.edu.vn', '24208', 'b8a8212bbc56b016cddd628c5491095f9a9e53dfcc379249e3f8ca44ac720ae0');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24209', '12000187', 'TRẦN HỮU NAM', '12A5', 'Nam', '04/09/2009', 'AN-DONG', '24209@ttgdtxcva.edu.vn', '24209', '831e6ec1f3a0de157f471cd481b1bc1855ef877b45a6a623be6210742d0fc5c5');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24211', '12000188', 'DƯƠNG BÍCH NGỌC', '12A5', 'Nữ', '17/08/2009', 'AN-DONG', '24211@ttgdtxcva.edu.vn', '24211', 'a09d07644b14a008ba3ad8872883c5106233a85b11269dd659bfba4d4d771bb4');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24210', '12000189', 'LƯU TUYẾT NGỌC', '12A5', 'Nữ', '02/02/2009', 'AN-DONG', '24210@ttgdtxcva.edu.vn', '24210', '72e6836f9e3d655abc2525daf66444ffcc0fbc0ec3104aa95d5089980d817650');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24213', '12000190', 'NGUYỄN PHÚC NGUYÊN', '12A5', 'Nam', '11/12/2009', 'AN-DONG', '24213@ttgdtxcva.edu.vn', '24213', 'ce0b4ff065ad403bffc836046e68b7f4846ee2fa3ba9407ecd63b45f9384d2de');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24214', '12000191', 'VŨ LÝ YẾN NHI', '12A5', 'Nữ', '11/11/2008', 'AN-DONG', '24214@ttgdtxcva.edu.vn', '24214', '1909a3051130ce7b7062680635cf78ca8ecea5e4a9d13092d75e84fdcff62f8c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24216', '12000192', 'NUD RU HA NI', '12A5', 'Nữ', '07/05/2008', 'AN-DONG', '24216@ttgdtxcva.edu.vn', '24216', '91ac32d12f4c9c5dfa420f3b9899e147a31c850d1277493bf0b8263f6fb82b59');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24217', '12000193', 'NGUYỄN MINH BẢO PHI', '12A5', 'Nam', '23/12/2009', 'AN-DONG', '24217@ttgdtxcva.edu.vn', '24217', 'b8d6ddf0a45349b1c25fdcf45ebeadcb80ca37a044bfad87c635ea5dd05495fd');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24219', '12000194', 'HUỲNH NGUYỄN NHƯ QUỲNH', '12A5', 'Nữ', '09/08/2009', 'AN-DONG', '24219@ttgdtxcva.edu.vn', '24219', '16b1288908af47c8d6ead69a9d176acd99f9c715700f1a72f936dc3a6157f535');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24218', '12000195', 'NGUYỄN THỊ DIỄM QUỲNH', '12A5', 'Nữ', '15/05/2009', 'AN-DONG', '24218@ttgdtxcva.edu.vn', '24218', '1139edafe7ea660d2a94521ca69c07a34420e5fe4d43b1824b5a789ee312f525');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24223', '12000196', 'HUỲNH NGỌC THIÊN THẢO', '12A5', 'Nữ', '29/08/2009', 'AN-DONG', '24223@ttgdtxcva.edu.vn', '24223', '39c7761e17f2244691a024deaf8aaef29fac099afe09b15026ef5881f046e3b4');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24222', '12000197', 'LÊ KIM PHƯƠNG THẢO', '12A5', 'Nữ', '07/06/2008', 'AN-DONG', '24222@ttgdtxcva.edu.vn', '24222', '837a80c338be56b978d4d36c5864d345334da4433b7139a5b5568855a52f0348');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24224', '12000198', 'PHAN HUỲNH TRÂM', '12A5', 'Nữ', '14/01/2009', 'AN-DONG', '24224@ttgdtxcva.edu.vn', '24224', '9c0cd0bc61a6c1839f4a886c19db55379ba62d9eff72e7d3e80aee84ad2b45f6');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24225', '12000199', 'ĐOÀN KIM PHƯƠNG TRINH', '12A5', 'Nữ', '16/08/2009', 'AN-DONG', '24225@ttgdtxcva.edu.vn', '24225', '513679cc0ec2063e5b7a624e76a96c310298c69cace78943ca57d513bec0aca0');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24226', '12000200', 'LÂM THANH TRÚC', '12A5', 'Nữ', '11/06/2009', 'AN-DONG', '24226@ttgdtxcva.edu.vn', '24226', 'c827c745f353aab0d2ba354ed86e382562dd4869cbe2b2f76e404658736843dd');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24228', '12000201', 'MAI NHẬT KHÁNH VY', '12A5', 'Nữ', '20/06/2009', 'AN-DONG', '24228@ttgdtxcva.edu.vn', '24228', 'a3e871b9f56adc4b79d0aad78dcf061926622040932859bb7fa03484b0d9a0fb');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24229', '12000202', 'LƯƠNG LỆ YẾN', '12A5', 'Nữ', '07/11/2009', 'AN-DONG', '24229@ttgdtxcva.edu.vn', '24229', '1198980217073634ef866a080462bdd5ece30e98bfaa0bf7f28128d00e9e2413');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24092', '12000081', 'QUÁCH TRIỀU AN', '12A3', 'Nam', '06/03/2009', 'AN-DONG', '24092@ttgdtxcva.edu.vn', '24092', '6f2d447c73404f3bee2175c78cd72f6fd730d9d055342ab774c86e11b11492a2');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24093', '12000082', 'BÀNH DIỆU ANH', '12A3', 'Nữ', '15/12/2009', 'AN-DONG', '24093@ttgdtxcva.edu.vn', '24093', 'fd6bef1452726f838f0380136660a969622ace6d87b0e68605f8789f9d1c8198');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24095', '12000083', 'NGUYỄN LÊ CÔNG DANH', '12A3', 'Nam', '20/02/2009', 'AN-DONG', '24095@ttgdtxcva.edu.vn', '24095', '89f5a3becbee9a41b1f4acfcf09722f4ddab90f03c477f566cde87516bbb61ba');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24096', '12000084', 'NGUYỄN TIẾN ĐẠT', '12A3', 'Nam', '14/12/2009', 'AN-DONG', '24096@ttgdtxcva.edu.vn', '24096', '5652794061a8de0d62b13f74714ebdddcc2660e6d435edf188104eaec78be3ed');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24094', '12000085', 'NGUYỄN ĐẮC HẢI ĐĂNG', '12A3', 'Nam', '24/08/2008', 'AN-DONG', '24094@ttgdtxcva.edu.vn', '24094', '1fc2180decdb888a745090e64d00e267b97d59f045aa67bcfa027cab5da51e60');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24097', '12000086', 'LƯƠNG HUỲNH GIANG', '12A3', 'Nữ', '23/12/2009', 'AN-DONG', '24097@ttgdtxcva.edu.vn', '24097', 'b8d6ddf0a45349b1c25fdcf45ebeadcb80ca37a044bfad87c635ea5dd05495fd');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24098', '12000087', 'NGUYỄN THỊ THU HẰNG', '12A3', 'Nữ', '02/08/2009', 'AN-DONG', '24098@ttgdtxcva.edu.vn', '24098', 'bb3586779667f0adb6d42423fca81aa04bff6ca1190d72d5c449080fa04b3578');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24100', '12000088', 'NGUYỄN THỊ NGỌC HUỆ', '12A3', 'Nữ', '05/08/2009', 'AN-DONG', '24100@ttgdtxcva.edu.vn', '24100', 'cd78ca74eada271baf1b8cdc6fecd3ddb60e37c71520cb49746f660b7fac3237');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24101', '12000089', 'HÀ GIA HUY', '12A3', 'Nam', '22/10/2009', 'AN-DONG', '24101@ttgdtxcva.edu.vn', '24101', 'd2933d8dd971a72e7d73dca3f26f98b079ba0cba1c52b533f006ed843bc79833');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24102', '12000090', 'LÊ KIM HUYỀN', '12A3', 'Nữ', '28/10/2009', 'AN-DONG', '24102@ttgdtxcva.edu.vn', '24102', '2ffccc44c424a99e6ae1b2f10629a4bba503463aa0e89f1b45377c565a5fd014');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24103', '12000091', 'VÕ TUẤN KHẢI', '12A3', 'Nam', '07/01/2009', 'AN-DONG', '24103@ttgdtxcva.edu.vn', '24103', '0980859c15bb72a6a80f55e41c6d7e0a12de5298e0ef5b80f6a9315bbfcba725');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24104', '12000092', 'PHAN KHANG', '12A3', 'Nam', '19/10/2009', 'AN-DONG', '24104@ttgdtxcva.edu.vn', '24104', '9a61e9aa78ad7fc3a5bdafa30e18f9692dfa85cab45947fcb29032ea5c96e7a5');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24105', '12000093', 'PHAN VÕ KIM KHÁNH', '12A3', 'Nữ', '13/06/2009', 'AN-DONG', '24105@ttgdtxcva.edu.vn', '24105', '6b99293b09d2cacd045f8c05b4819f661a7fc8df00324c47076a3c2107cd8462');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24108', '12000094', 'NGUYỄN MAI LAN', '12A3', 'Nữ', '27/11/2009', 'AN-DONG', '24108@ttgdtxcva.edu.vn', '24108', '1ad7f4637b34b984e43f3653247a0496e5c19ebe4f634e7dab574bdea4b810d7');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24109', '12000095', 'TRẦN NHẬT KHÁNH LINH', '12A3', 'Nữ', '03/09/2009', 'AN-DONG', '24109@ttgdtxcva.edu.vn', '24109', 'c95e8717a1c55287ee4fda40284771fa1533e85a8e0e4ca5783a3fa073208dff');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24110', '12000096', 'HÀNG ĐẠT LUÂN', '12A3', 'Nam', '25/01/2009', 'AN-DONG', '24110@ttgdtxcva.edu.vn', '24110', '77230bf9d4bf7ddfd8c32135bf45aaa1f4eb5fb98d62fc669880c34741e1fb5d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24111', '12000097', 'NGUYỄN DUY MẠNH', '12A3', 'Nam', '23/03/2009', 'AN-DONG', '24111@ttgdtxcva.edu.vn', '24111', '893f8a4d7beb48bde093675a94e9285b7f8338e0417fada7cd456c2000d2eb56');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24112', '12000098', 'BÙI NHẬT MINH', '12A3', 'Nam', '22/02/2009', 'AN-DONG', '24112@ttgdtxcva.edu.vn', '24112', 'bb784394302c9adb16b1535a0a8d6c406bfe9566d15084dc39aafe528ae2a15c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24113', '12000099', 'CAO KIM NGÂN', '12A3', 'Nữ', '28/12/2009', 'AN-DONG', '24113@ttgdtxcva.edu.vn', '24113', 'bc778de8943f756c7184fb71d8bf3430c10d5d89e7753e5def646939ea5af26b');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24114', '12000100', 'KIỀU NGUYỄN HOÀNG NGỌC', '12A3', 'Nữ', '21/08/2009', 'AN-DONG', '24114@ttgdtxcva.edu.vn', '24114', 'c09bd0befa254119f705f84aa767afeeb994a07701fd818611fc252d3aeb5a8a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24116', '12000101', 'CAO NGỌC NHI', '12A3', 'Nữ', '20/10/2009', 'AN-DONG', '24116@ttgdtxcva.edu.vn', '24116', '686bbe06ed05e896803570a83190e43bcf67b777bc1761bfdcb3e46d6feb4f89');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24117', '12000102', 'LÂM TÂM NHI', '12A3', 'Nữ', '12/08/2009', 'AN-DONG', '24117@ttgdtxcva.edu.vn', '24117', '80b8f3e22684c4144d2d9085c6d0d11b0fe05a1ee286f09f0f884335c1e2beb8');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24115', '12000103', 'NGUYỄN ĐOÀN PHƯƠNG NHI', '12A3', 'Nữ', '22/08/2009', 'AN-DONG', '24115@ttgdtxcva.edu.vn', '24115', '8d217de87759abeca78b486058ba8bc33b55bc01e52a29a2c8b34acf1a30025b');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24118', '12000104', 'NGUYỄN THỊ THANH NHƯ', '12A3', 'Nữ', '06/08/2009', 'AN-DONG', '24118@ttgdtxcva.edu.vn', '24118', 'f55cbea57b4f9185aa58849f3fcda925ef1fc66fd8fc713d04a3cd18d887eb44');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24119', '12000105', 'PHAN ANH PHÚC', '12A3', 'Nam', '21/01/2009', 'AN-DONG', '24119@ttgdtxcva.edu.vn', '24119', '0186d7c17ba502f4f4faa03005795f256f0ad8deab7f82fb748e509780a9a737');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24120', '12000106', 'TRƯƠNG HUỆ PHƯƠNG', '12A3', 'Nữ', '30/11/2008', 'AN-DONG', '24120@ttgdtxcva.edu.vn', '24120', 'afbd05115d00dcbfeede0bb2f89471233d376d7b8740357f2c5c86c9a7ad23d4');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24121', '12000107', 'TRẦN PHÚ QUÝ', '12A3', 'Nam', '09/05/2009', 'AN-DONG', '24121@ttgdtxcva.edu.vn', '24121', 'd3fe81b99efd1229473cbb411f0350f7f37d362e5bace6228e4b6101a9bed366');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24122', '12000108', 'NGUYỄN THỊ MỸ TÂM', '12A3', 'Nữ', '26/05/2009', 'AN-DONG', '24122@ttgdtxcva.edu.vn', '24122', 'ca8e528772d54ca57ed5ed6ed13b822f9bde835b776728f6c332d3b08116a52c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24123', '12000109', 'TRẦN UYỂN TÂY', '12A3', 'Nữ', '10/09/2009', 'AN-DONG', '24123@ttgdtxcva.edu.vn', '24123', '12482a8618928a60774d9fbb19d3cfb6da599485784261c1a05317f247638a15');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24126', '12000110', 'NGUYỄN HOÀNG NHÃ THY', '12A3', 'Nữ', '20/05/2009', 'AN-DONG', '24126@ttgdtxcva.edu.vn', '24126', 'f8dcdc7f7fa9c126ebe90e3a7f024b33beacaf02673aaa4520d3884c41400e1a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24127', '12000111', 'NGUYỄN HOÀNG SƠN TIẾN', '12A3', 'Nam', '14/11/2009', 'AN-DONG', '24127@ttgdtxcva.edu.vn', '24127', 'c8003f9abfcb9e4d49d8d68496b20ee41a80078a99c65bac516e6b9577365496');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24128', '12000112', 'LAI TRÍ TÍN', '12A3', 'Nam', '15/04/2009', 'AN-DONG', '24128@ttgdtxcva.edu.vn', '24128', 'd172b9540362bf384923f43f7709c9fc3cff38e4fe193baa681e3bb89a26b61d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24133', '12000113', 'NGUYỄN ĐÀM HỒNG TRANG', '12A3', 'Nữ', '19/07/2009', 'AN-DONG', '24133@ttgdtxcva.edu.vn', '24133', '0e612f903b7b7d038550047238535c330402b7c4738c596acaa3027c0fbc668d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24129', '12000114', 'NGUYỄN HUỲNH ANH TRÂM', '12A3', 'Nữ', '30/04/2009', 'AN-DONG', '24129@ttgdtxcva.edu.vn', '24129', 'f9200681e0480f81cd1436d64085ed94b6cc9ffcd954f28a71f620b4406b96a0');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24130', '12000115', 'NGUYỄN NGỌC QUỲNH TRÂM', '12A3', 'Nữ', '09/10/2009', 'AN-DONG', '24130@ttgdtxcva.edu.vn', '24130', 'e45e5fbd2ca6523f2638d12a25f9f64864b4ff74e75284aae5b3139a56aa8bed');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24131', '12000116', 'PHẠM NGUYỄN HOÀN TRÂN', '12A3', 'Nữ', '16/02/2009', 'AN-DONG', '24131@ttgdtxcva.edu.vn', '24131', 'd0097d4a6b4269576230dee5634dcb49fda53a6fe07bd2953cb28a56096fcc85');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24466', '12000117', 'NGUYỄN LÊ THANH TRÚC', '12A3', 'Nữ', '24/04/2009', 'AN-DONG', '24466@ttgdtxcva.edu.vn', '24466', '250d8c77be50c38767f6a328081e7b58020379627527ed86531c9ef386cd503e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24134', '12000118', 'NGUYỄN NGỌC PHƯƠNG VI', '12A3', 'Nữ', '08/05/2009', 'AN-DONG', '24134@ttgdtxcva.edu.vn', '24134', '177b63b9c57f679118017e070e79acb47a2d7a8b4bf8a78de1693628fa238a2f');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24136', '12000119', 'HUỲNH THÚY VY', '12A3', 'Nữ', '08/12/2009', 'AN-DONG', '24136@ttgdtxcva.edu.vn', '24136', '6fed8ca52609773aa08bf97724b1707e321b28d0e18aeecb28a2b6fd3ad7efb9');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24135', '12000120', 'NGUYỄN THANH TƯỜNG VY', '12A3', 'Nữ', '14/09/2009', 'AN-DONG', '24135@ttgdtxcva.edu.vn', '24135', '0d191755d980da2a59444c215b13be917bb8278c5fa0cb5f2b61731a88f1202b');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24371', '12000330', 'BÙI NGỌC VÂN ANH', '12A9', 'Nữ', '01/06/2009', 'AN-DONG', '24371@ttgdtxcva.edu.vn', '24371', '96ebbe2f08f57b9b32f5d6c16504b4a2c02b9ec7143c785a7dfcc2ebc9b6f069');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24373', '12000331', 'NGUYỄN TRẦN NHƯ CÁC', '12A9', 'Nữ', '11/06/2009', 'AN-DONG', '24373@ttgdtxcva.edu.vn', '24373', 'c827c745f353aab0d2ba354ed86e382562dd4869cbe2b2f76e404658736843dd');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24374', '12000332', 'TRẦN NGỌC BẢO CHÂU', '12A9', 'Nữ', '30/04/2008', 'AN-DONG', '24374@ttgdtxcva.edu.vn', '24374', '0d5c7899f2a4b69032e73248fbc52a281bf14bf2b8c647092c4cd72675e9c405');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24376', '12000333', 'PHÙNG MINH DUY', '12A9', 'Nam', '21/02/2009', 'AN-DONG', '24376@ttgdtxcva.edu.vn', '24376', 'df8882e57959fd639da90c92257524ba9be19b7f30d085d055710e5189ab802d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24375', '12000334', 'PHẠM THIÊN ĐĂNG', '12A9', 'Nam', '29/10/2009', 'AN-DONG', '24375@ttgdtxcva.edu.vn', '24375', '44e23b60c4ea8703c496ce1af92f1d7805577ccf3b17aaf7480b3ca0910e8309');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24377', '12000335', 'NGUYỄN NGỌC QUỲNH GIANG', '12A9', 'Nữ', '02/02/2009', 'AN-DONG', '24377@ttgdtxcva.edu.vn', '24377', '72e6836f9e3d655abc2525daf66444ffcc0fbc0ec3104aa95d5089980d817650');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24378', '12000336', 'TRẦN NGỌC GIA HÂN', '12A9', 'Nữ', '16/05/2009', 'AN-DONG', '24378@ttgdtxcva.edu.vn', '24378', '906365e074d57dd509b24ff2d0cc932ebe8812982ae606d090ea6a33eba8da32');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24379', '12000337', 'NGUYỄN TRUNG HIẾU', '12A9', 'Nam', '21/10/2009', 'AN-DONG', '24379@ttgdtxcva.edu.vn', '24379', 'df8a8f512c0cfd23dafd5674e22543dd0f2b0dbdedc7c70b7cad35354f6b5837');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24380', '12000338', 'LA MỸ KHANH', '12A9', 'Nữ', '03/03/2009', 'AN-DONG', '24380@ttgdtxcva.edu.vn', '24380', '874e73ac37218f0c2cc665e223cf7261b63e205b4922a321fa77f95851ea7c2a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24381', '12000339', 'BÙI QUANG BẢO KHÁNH', '12A9', 'Nam', '25/06/2009', 'AN-DONG', '24381@ttgdtxcva.edu.vn', '24381', '6645bed4246ac759bd01ad94452a019e593a0f0e60899ece2d4c5f59f0ef2f31');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24382', '12000340', 'NGUYỄN ĐĂNG KHOA', '12A9', 'Nam', '13/09/2009', 'AN-DONG', '24382@ttgdtxcva.edu.vn', '24382', '9581be7826a4e90e115db585b7f4d4515abcb2c1617d0065dcd52d807e4a1596');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24383', '12000341', 'VÕ THỊ TRÚC LINH', '12A9', 'Nữ', '02/01/2009', 'AN-DONG', '24383@ttgdtxcva.edu.vn', '24383', '65e0981f7168296cb5986a403953b12a717dfad155de6d815597661d31aeeed6');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24384', '12000342', 'NGUYỄN XUÂN MAI', '12A9', 'Nữ', '28/01/2009', 'AN-DONG', '24384@ttgdtxcva.edu.vn', '24384', '7992e2bf2f824dca22878c8db1ea3b06cece716172a9467e9674534c02c57d48');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24385', '12000343', 'LÊ NGỌC MINH', '12A9', 'Nam', '16/07/2009', 'AN-DONG', '24385@ttgdtxcva.edu.vn', '24385', 'faa82c729c3ff14e8c9c969bc1d13d303ebf4130edafc4bcd91f96432b33afc2');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24386', '12000344', 'PHAN LÊ THẢO MY', '12A9', 'Nữ', '11/06/2009', 'AN-DONG', '24386@ttgdtxcva.edu.vn', '24386', 'c827c745f353aab0d2ba354ed86e382562dd4869cbe2b2f76e404658736843dd');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24388', '12000345', 'HUỲNH THỊ KIM NGÂN', '12A9', 'Nữ', '29/10/2009', 'AN-DONG', '24388@ttgdtxcva.edu.vn', '24388', '44e23b60c4ea8703c496ce1af92f1d7805577ccf3b17aaf7480b3ca0910e8309');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24389', '12000346', 'TRẦN PHÚC KIM NGÂN', '12A9', 'Nữ', '13/06/2009', 'AN-DONG', '24389@ttgdtxcva.edu.vn', '24389', '6b99293b09d2cacd045f8c05b4819f661a7fc8df00324c47076a3c2107cd8462');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24392', '12000347', 'LÊ NGỌC', '12A9', 'Nữ', '13/11/2009', 'AN-DONG', '24392@ttgdtxcva.edu.vn', '24392', '2da222474dc51b87fb07e73ff1e95b01d2e55e20709246d2389fe9ffff88f7a6');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24390', '12000348', 'TRẦN BẢO NGỌC', '12A9', 'Nữ', '21/02/2009', 'AN-DONG', '24390@ttgdtxcva.edu.vn', '24390', 'df8882e57959fd639da90c92257524ba9be19b7f30d085d055710e5189ab802d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24391', '12000349', 'VÕ HỒNG BẢO NGỌC', '12A9', 'Nữ', '28/10/2009', 'AN-DONG', '24391@ttgdtxcva.edu.vn', '24391', '2ffccc44c424a99e6ae1b2f10629a4bba503463aa0e89f1b45377c565a5fd014');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24393', '12000350', 'LÊ THỊ THẢO NGUYÊN', '12A9', 'Nữ', '31/08/2009', 'AN-DONG', '24393@ttgdtxcva.edu.vn', '24393', '7a85322e8378fe32e390b23cd347b9add92d2ee5442f269dd60e12e290117a14');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24394', '12000351', 'QUÁCH BẢO NHI', '12A9', 'Nữ', '07/03/2009', 'AN-DONG', '24394@ttgdtxcva.edu.vn', '24394', '67cf69e03359efbc181a076a917108281e913eb81f7de01f3579f09551355316');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24395', '12000352', 'ĐỖ NGUYỄN QUỲNH NHƯ', '12A9', 'Nữ', '14/11/2009', 'AN-DONG', '24395@ttgdtxcva.edu.vn', '24395', 'c8003f9abfcb9e4d49d8d68496b20ee41a80078a99c65bac516e6b9577365496');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24396', '12000353', 'NGUYỄN VĨNH PHÚC', '12A9', 'Nam', '27/10/2009', 'AN-DONG', '24396@ttgdtxcva.edu.vn', '24396', 'f45e34588e8414a685cb1f69157a94271a3d89d65c712dfe9ca631d733613ee4');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24397', '12000354', 'NGUYỄN NGỌC UYÊN PHƯƠNG', '12A9', 'Nữ', '02/03/2009', 'AN-DONG', '24397@ttgdtxcva.edu.vn', '24397', 'afce32dd26ed5f6d7f414eeb069cb8db1a1ca12454847a4c265e588a686023d3');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24027', '12000355', 'NGUYỄN TRẦN THANH QUANG', '12A9', 'Nam', '24/10/2009', 'AN-DONG', '24027@ttgdtxcva.edu.vn', '24027', '0f68234be0e77edf52126db6a6f863fa60f6686f2046df17a5f7aa42b6d30489');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24399', '12000356', 'HUỲNH ANH QUÂN', '12A9', 'Nam', '21/10/2009', 'AN-DONG', '24399@ttgdtxcva.edu.vn', '24399', 'df8a8f512c0cfd23dafd5674e22543dd0f2b0dbdedc7c70b7cad35354f6b5837');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24398', '12000357', 'HỨA MINH QUÂN', '12A9', 'Nam', '16/02/2009', 'AN-DONG', '24398@ttgdtxcva.edu.vn', '24398', 'd0097d4a6b4269576230dee5634dcb49fda53a6fe07bd2953cb28a56096fcc85');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24400', '12000358', 'NGUYỄN VĂN PHÁT TÀI', '12A9', 'Nam', '04/07/2009', 'AN-DONG', '24400@ttgdtxcva.edu.vn', '24400', '5e1b3d482aff0c2421c325e98cefef32824ab28daca8a8672ca5b68cb33c7a83');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24401', '12000359', 'LÊ TRẦN THIỆN TÂM', '12A9', 'Nam', '11/05/2009', 'AN-DONG', '24401@ttgdtxcva.edu.vn', '24401', 'ae6e51098f9b8cca17fc2c276283e6b9e7df230463eeebea065bbd023d69897e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24403', '12000360', 'HUỲNH NGỌC THANH THẢO', '12A9', 'Nữ', '09/05/2009', 'AN-DONG', '24403@ttgdtxcva.edu.vn', '24403', 'd3fe81b99efd1229473cbb411f0350f7f37d362e5bace6228e4b6101a9bed366');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24402', '12000361', 'NGUYỄN THANH THẢO', '12A9', 'Nữ', '03/03/2008', 'AN-DONG', '24402@ttgdtxcva.edu.vn', '24402', '281e42fcee60a6e99c9d68051df977111764fe89166e8979204d56be6fff68de');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24404', '12000362', 'HUỲNH THỊ CẨM THU', '12A9', 'Nữ', '28/11/2009', 'AN-DONG', '24404@ttgdtxcva.edu.vn', '24404', '93096293e7e12be8f6190c92befe9ce2d2d8f4591e822203a9d0743bfcc5bf8f');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24406', '12000363', 'PHẠM THUẬN TRÍ TÍN', '12A9', 'Nam', '25/12/2009', 'AN-DONG', '24406@ttgdtxcva.edu.vn', '24406', '7d3485d27490542bb827c8b5a50ac8f8afe51d4e2deaaa46ddc2f0111858b386');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24407', '12000364', 'PHAN NGUYỄN THÀNH TÍN', '12A9', 'Nam', '17/10/2009', 'AN-DONG', '24407@ttgdtxcva.edu.vn', '24407', '1943eb52b1e009541d27114cbd29abb2c5e15682682446390f9e976e543949ad');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24410', '12000365', 'HÀ PHƯƠNG TRANG', '12A9', 'Nữ', '21/01/2009', 'AN-DONG', '24410@ttgdtxcva.edu.vn', '24410', '0186d7c17ba502f4f4faa03005795f256f0ad8deab7f82fb748e509780a9a737');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24411', '12000366', 'TRẦN NGỌC THÙY TRANG', '12A9', 'Nữ', '26/11/2008', 'AN-DONG', '24411@ttgdtxcva.edu.vn', '24411', 'b25a055ff220c57e897f9e78a1ba4f005a28bfa551f6ecf00465a44d74709dcc');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24408', '12000367', 'TRẦN NGỌC THÙY TRÂM', '12A9', 'Nữ', '15/04/2009', 'AN-DONG', '24408@ttgdtxcva.edu.vn', '24408', 'd172b9540362bf384923f43f7709c9fc3cff38e4fe193baa681e3bb89a26b61d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24409', '12000368', 'NGUYỄN LÊ BẢO TRÂN', '12A9', 'Nữ', '30/04/2009', 'AN-DONG', '24409@ttgdtxcva.edu.vn', '24409', 'f9200681e0480f81cd1436d64085ed94b6cc9ffcd954f28a71f620b4406b96a0');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24412', '12000369', 'TRẦN KHẢ TÚ', '12A9', 'Nữ', '04/03/2009', 'AN-DONG', '24412@ttgdtxcva.edu.vn', '24412', 'f3deec8984ad1d704b0022a9c476572c04a15f7b3325fb9a60a8dca5019fd1b5');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24414', '12000370', 'TĂNG THANH TUYỀN', '12A9', 'Nữ', '21/02/2009', 'AN-DONG', '24414@ttgdtxcva.edu.vn', '24414', 'df8882e57959fd639da90c92257524ba9be19b7f30d085d055710e5189ab802d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24413', '12000371', 'NGUYỄN NGỌC CÁT TƯỜNG', '12A9', 'Nữ', '02/09/2009', 'AN-DONG', '24413@ttgdtxcva.edu.vn', '24413', '900a0efd1d29c88991ea8e407a3aa6dffa60ed045ed8b02a9ef5c4c2b010c30f');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24415', '12000372', 'PHAN NGỌC MINH VI', '12A9', 'Nữ', '11/09/2009', 'AN-DONG', '24415@ttgdtxcva.edu.vn', '24415', 'e11fed696675415c8990ed69a353ae866def6de810df4213199bf3616c91937e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24417', '12000373', 'ĐỖ HUỲNH PHƯƠNG VY', '12A9', 'Nữ', '08/09/2009', 'AN-DONG', '24417@ttgdtxcva.edu.vn', '24417', '7d84b3ef6ff06a403092af5cbf28b68b1a70687d895af4fff030d5bc632e0944');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24418', '12000374', 'TRẦN BẢO VY', '12A9', 'Nữ', '18/01/2009', 'AN-DONG', '24418@ttgdtxcva.edu.vn', '24418', 'd42b5db01f3fa242e875a2793c04fd67061069c3c42f8c5561c6edc2e4eea0c7');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24137', '12000121', 'LÊ ĐOÀN BẢO ANH', '12A4', 'Nữ', '10/07/2009', 'AN-DONG', '24137@ttgdtxcva.edu.vn', '24137', '18f91344752634c9cdaad82fbf1bc4f8918699591f08db41dab951fc557285d7');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24138', '12000122', 'TRẦN TUẤN ANH', '12A4', 'Nam', '03/12/2008', 'AN-DONG', '24138@ttgdtxcva.edu.vn', '24138', '80b95038778b777af8dc8f644a9a111822913de6d425f8b76f7b0addd991f230');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24139', '12000123', 'TRẦN THU HOÀI BĂNG', '12A4', 'Nữ', '10/05/2009', 'AN-DONG', '24139@ttgdtxcva.edu.vn', '24139', '4fb941e6ebea10f6316b44441fffa7e18d6ba3d9ee66a7df39592557a27f613b');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24140', '12000124', 'VÕ HUỲNH THIÊN DI', '12A4', 'Nữ', '17/08/2009', 'AN-DONG', '24140@ttgdtxcva.edu.vn', '24140', 'a09d07644b14a008ba3ad8872883c5106233a85b11269dd659bfba4d4d771bb4');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24144', '12000125', 'TRẦN THỊ BÍCH HẢO', '12A4', 'Nữ', '07/12/2009', 'AN-DONG', '24144@ttgdtxcva.edu.vn', '24144', '785f68e1fe03d6a51d73e5d514b3272377969cbd2ca7e2486469a00de7c5be23');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24142', '12000126', 'ĐINH HỨA GIA HÂN', '12A4', 'Nữ', '15/11/2009', 'AN-DONG', '24142@ttgdtxcva.edu.vn', '24142', '2a70a939f69fe320cbb9063a6f0637a9e8e3fca8c0504e0b4f859453d6e9bba2');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24011', '12000127', 'HUỲNH GIA HÂN', '12A4', 'Nữ', '27/03/2009', 'AN-DONG', '24011@ttgdtxcva.edu.vn', '24011', '1df1d3cf215ac47f86296be0f9148d19c33afd688dc4dda5f81eaefabb1e2d02');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24143', '12000128', 'TRẦN GIA HÂN', '12A4', 'Nữ', '02/06/2009', 'AN-DONG', '24143@ttgdtxcva.edu.vn', '24143', '163cb5d5816439f853a53f8641b4d5b2f23db417baed6dd28dac8e7a411b076a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24146', '12000129', 'TRẦN KHÁNH HUY', '12A4', 'Nam', '30/09/2009', 'AN-DONG', '24146@ttgdtxcva.edu.vn', '24146', '731405230b2fd77e152315df76a0f412eeca6e9910434e7d5bd5a5c63eb96a55');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24145', '12000130', 'NGUYỄN TUẤN HỮU', '12A4', 'Nam', '02/10/2009', 'AN-DONG', '24145@ttgdtxcva.edu.vn', '24145', '4766e8e777f25460412cf6522b98ef705ee6897d4dc77e4f80151c1c887a23ff');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24147', '12000131', 'HỒ AN LẠC', '12A4', 'Nam', '08/10/2009', 'AN-DONG', '24147@ttgdtxcva.edu.vn', '24147', '917726f6a54c6387af918509b933d5c0e81885df2ae9745bab13b9d257e76bae');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24149', '12000132', 'NGÔ QUỐC LONG', '12A4', 'Nam', '25/02/2009', 'AN-DONG', '24149@ttgdtxcva.edu.vn', '24149', '95b7d6f3a5d7578bb7c6975787d8713eb144b461d58bf7107011d0057999d6a6');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24150', '12000133', 'PHẠM KHÁNH LONG', '12A4', 'Nam', '25/10/2009', 'AN-DONG', '24150@ttgdtxcva.edu.vn', '24150', '9dddf15d5e34ebc414601f8e55a44a79ab4f5208458043f616a0853acee5ff77');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24148', '12000134', 'LÊ TẤN LỘC', '12A4', 'Nam', '26/10/2009', 'AN-DONG', '24148@ttgdtxcva.edu.vn', '24148', '3c5b52e7e90320691fbc82ba43f363fb56e5650c7e974994754a1d83b3cb0a5a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24151', '12000135', 'NGUYỄN DƯ GIA MẪN', '12A4', 'Nữ', '27/11/2009', 'AN-DONG', '24151@ttgdtxcva.edu.vn', '24151', '1ad7f4637b34b984e43f3653247a0496e5c19ebe4f634e7dab574bdea4b810d7');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24152', '12000136', 'LÊ NHẬT ANH MINH', '12A4', 'Nam', '13/05/2009', 'AN-DONG', '24152@ttgdtxcva.edu.vn', '24152', '1698b5af421fb0b97d929c7aa212e92bb168932636443c77cd98f32886896c6f');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24154', '12000137', 'NGUYỄN NGỌC KIM NGÂN', '12A4', 'Nữ', '07/03/2009', 'AN-DONG', '24154@ttgdtxcva.edu.vn', '24154', '67cf69e03359efbc181a076a917108281e913eb81f7de01f3579f09551355316');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24155', '12000138', 'NGUYỄN TRẦN KIM NGÂN', '12A4', 'Nữ', '16/01/2009', 'AN-DONG', '24155@ttgdtxcva.edu.vn', '24155', '207cd99cda34195dae905519e2b229f912528f92a924746b7e703c65187cbe85');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24156', '12000139', 'PHẠM TRẦN KIM NGÂN', '12A4', 'Nữ', '17/01/2009', 'AN-DONG', '24156@ttgdtxcva.edu.vn', '24156', 'f61e1fa47ddb9e65c08e53062a2913ae57e0dbd8b9ccba82ac8b65767c22e517');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24157', '12000140', 'TÔN NGUYỄN ĐÔNG NGHI', '12A4', 'Nữ', '07/10/2009', 'AN-DONG', '24157@ttgdtxcva.edu.vn', '24157', '9407e3a948b7078c228d9cdbef91ab19feb17e824564f3abd0549ac5ee1308b3');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24158', '12000141', 'NGUYỄN KIM NGỌC', '12A4', 'Nữ', '08/04/2009', 'AN-DONG', '24158@ttgdtxcva.edu.vn', '24158', '6d85ae2477d33ea10706f3ada2d5fb321963e212d334970c4a6a93ae08121bd3');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24159', '12000142', 'QUÁCH CHẤN NGUYÊN', '12A4', 'Nam', '05/05/2009', 'AN-DONG', '24159@ttgdtxcva.edu.vn', '24159', '5bdaae79b1ab9092753514c79fa9ebbdf2888794161b3982b97a7f2dc5a29470');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24160', '12000143', 'VŨ HUỲNH THỊ YẾN NHI', '12A4', 'Nữ', '22/01/2009', 'AN-DONG', '24160@ttgdtxcva.edu.vn', '24160', 'ab7e9c59a8e941b8ca562c7867e5e198a45900b53a3dcb26f99f4506fc80c844');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24161', '12000144', 'NGUYỄN HUỲNH KHÁNH NHƯ', '12A4', 'Nữ', '22/05/2009', 'AN-DONG', '24161@ttgdtxcva.edu.vn', '24161', '61f18c08a138ae306b7137d416f2b28e51cf804052af591f03372d5b18b27dec');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24162', '12000145', 'TRẦN VĂN PHÁT', '12A4', 'Nam', '23/08/2009', 'AN-DONG', '24162@ttgdtxcva.edu.vn', '24162', 'f8289249dd7f4f63affb04dc65063a75f1458df4ec63dedac7134ee8cc345102');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24163', '12000146', 'NGUYỄN THÀNH PHÚ', '12A4', 'Nam', '11/01/2009', 'AN-DONG', '24163@ttgdtxcva.edu.vn', '24163', 'a8e52f6fc228a3cfd742da07d05450ea6b747bdbedb9a88e428ac8e9f2ade2f3');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24164', '12000147', 'NGUYỄN HOÀNG PHÚC', '12A4', 'Nam', '29/04/2009', 'AN-DONG', '24164@ttgdtxcva.edu.vn', '24164', '505ec2c5ab8d79f030ded041a1d1207429edf7ea01b09087a333c730c6af43dc');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24165', '12000148', 'TRẦN NGUYỄN TUYẾT PHƯƠNG', '12A4', 'Nữ', '02/02/2009', 'AN-DONG', '24165@ttgdtxcva.edu.vn', '24165', '72e6836f9e3d655abc2525daf66444ffcc0fbc0ec3104aa95d5089980d817650');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24167', '12000149', 'TRẦN TÚ QUYÊN', '12A4', 'Nữ', '15/11/2009', 'AN-DONG', '24167@ttgdtxcva.edu.vn', '24167', '2a70a939f69fe320cbb9063a6f0637a9e8e3fca8c0504e0b4f859453d6e9bba2');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24168', '12000150', 'PHAN TẤN SANG', '12A4', 'Nam', '07/04/2009', 'AN-DONG', '24168@ttgdtxcva.edu.vn', '24168', '75dfbeb736e0f184d89a7309b606c0dd08b377b15cbd4d3eaf1d0f44c443135c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24169', '12000151', 'TÔ THỊ THANH THẢO', '12A4', 'Nữ', '05/11/2009', 'AN-DONG', '24169@ttgdtxcva.edu.vn', '24169', 'b07ce94706a19e73347b2ae40335564337897330cca6112359fdeda983e5944d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24170', '12000152', 'MÃ VĂN THIỆN', '12A4', 'Nam', '22/12/2008', 'AN-DONG', '24170@ttgdtxcva.edu.vn', '24170', '300a1d74cefc2a6e75872b57135e5d0f27eecd71d206bbb5b18080c5b7e24859');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24171', '12000153', 'HỒ NGUYỄN ANH THƯ', '12A4', 'Nữ', '30/06/2009', 'AN-DONG', '24171@ttgdtxcva.edu.vn', '24171', '215732e5d0afb7a1256dfc780a67a6e1e4016894eb1d3a342275f86db72ba1d6');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24172', '12000154', 'TRẦN THỊ ANH THƯ', '12A4', 'Nữ', '07/06/2009', 'AN-DONG', '24172@ttgdtxcva.edu.vn', '24172', '6b7f3fb7c39e626fffd477a1f5aee80362cd66fa74cbfa3f25fcf1b7aab64dde');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24538', '12000155', 'NGUYỄN NGỌC BẢO TRÂN', '12A4', 'Nữ', '21/03/2009', 'AN-DONG', '24538@ttgdtxcva.edu.vn', '24538', '27e48a4f30b6560bd995fe7969ee4863b311be1f8c2ee94ff98436192b886c80');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24175', '12000156', 'NGUYỄN KHẢ TRI', '12A4', 'Nam', '23/12/2009', 'AN-DONG', '24175@ttgdtxcva.edu.vn', '24175', 'b8d6ddf0a45349b1c25fdcf45ebeadcb80ca37a044bfad87c635ea5dd05495fd');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24176', '12000157', 'TRẦN NGỌC THANH TUẤN', '12A4', 'Nam', '05/11/2008', 'AN-DONG', '24176@ttgdtxcva.edu.vn', '24176', '3a849e8a0f7ad1c1d42e06130f8a19de5decb44cb17196f3b80a1701009362dc');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24178', '12000158', 'NGUYỄN PHẠM THANH VÂN', '12A4', 'Nữ', '17/11/2009', 'AN-DONG', '24178@ttgdtxcva.edu.vn', '24178', '9e015747931293bb7aa9ffe1136a95884e219c77ce8a1dab64583f97a9797563');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24179', '12000159', 'NGUYỄN NGỌC TƯỜNG VI', '12A4', 'Nữ', '02/03/2008', 'AN-DONG', '24179@ttgdtxcva.edu.vn', '24179', 'cc1c1f0f94f784582cd6433f19e0c02ae7913f1ec4a713c4af151376032688a3');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24180', '12000160', 'TRẦN QUỐC VIỆT', '12A4', 'Nam', '12/05/2009', 'AN-DONG', '24180@ttgdtxcva.edu.vn', '24180', '42e8826189060e7ff97fac0ff5196c8f5d4798e3556c5e15f1b347a18ecb3ce5');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24181', '12000161', 'TRẦN HOÀNG QUANG VINH', '12A4', 'Nam', '03/06/2009', 'AN-DONG', '24181@ttgdtxcva.edu.vn', '24181', '2426ed4fe55cb6f6a6cc76afdc8b46c0f734cc430f55ae07783778cd81235afd');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24182', '12000162', 'TRƯƠNG Ý VY', '12A4', 'Nữ', '24/09/2009', 'AN-DONG', '24182@ttgdtxcva.edu.vn', '24182', '1a8f0b44ad8458de848b0a5f92b58fd877869b27686d0c936b3ff5ee51b33d0b');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24277', '12000246', 'LÊ NGỌC BẢO ANH', '12A7', 'Nữ', '07/10/2009', 'AN-DONG', '24277@ttgdtxcva.edu.vn', '24277', '9407e3a948b7078c228d9cdbef91ab19feb17e824564f3abd0549ac5ee1308b3');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24280', '12000247', 'ĐÀM PHẠM THIÊN BẢO', '12A7', 'Nam', '19/02/2009', 'AN-DONG', '24280@ttgdtxcva.edu.vn', '24280', 'b67d25bf2d6e3d7dbd5def6ceb8342e95fefc5ee0cc05906ffdecb2a1e9506b6');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24279', '12000248', 'HUỲNH GIA BẢO', '12A7', 'Nam', '05/10/2009', 'AN-DONG', '24279@ttgdtxcva.edu.vn', '24279', '93e3b42069cb01ce046a8a56c2ae8ecf31020459c4639ca1a835d1eb67f749fe');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24281', '12000249', 'LƯƠNG THƯ BÌNH', '12A7', 'Nữ', '27/05/2009', 'AN-DONG', '24281@ttgdtxcva.edu.vn', '24281', '568f39dcdb0a30c8df8566bd74913a93d4a73362a5adb72d91b0a95ce3b3cc8e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24282', '12000250', 'NGUYỄN BI BON', '12A7', 'Nam', '11/10/2009', 'AN-DONG', '24282@ttgdtxcva.edu.vn', '24282', 'c3b2bbe83d1877fc4538c31844e1ce01d33a9c82f2f32e49f1815c798be8dfd0');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24284', '12000251', 'NGUYỄN KIM DUNG', '12A7', 'Nữ', '23/10/2009', 'AN-DONG', '24284@ttgdtxcva.edu.vn', '24284', '1851721fb88eccdb3397b0418975d9187d3c031eec94ff39beeb96ba3ac2c4bc');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24286', '12000252', 'TRẦN HUỆ HẰNG', '12A7', 'Nữ', '28/07/2009', 'AN-DONG', '24286@ttgdtxcva.edu.vn', '24286', '5bf245543f26a22ee40eee6a8dfca034677126bd56cd208f235a11d4a5bfcd00');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24285', '12000253', 'TRƯƠNG BẢO HÂN', '12A7', 'Nữ', '10/12/2009', 'AN-DONG', '24285@ttgdtxcva.edu.vn', '24285', '739feade7ec79167c58fc36ffb0f7376ea2c38452ca4c70dc492c47d50e3d7c2');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24287', '12000254', 'VÕ XUÂN HIỀN', '12A7', 'Nữ', '13/02/2009', 'AN-DONG', '24287@ttgdtxcva.edu.vn', '24287', 'c137b51602412ed24fa3b60b9bb8d9961b25da911a794f87bf1cffb4cbcec43f');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24288', '12000255', 'KHƯƠNG MỸ HOA', '12A7', 'Nữ', '25/11/2009', 'AN-DONG', '24288@ttgdtxcva.edu.vn', '24288', '3e48c3964fb22e6e0cde35b831a3b93243053704c5f042af7c5bd725d4156ee9');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24290', '12000256', 'HỒNG TỬ KỲ', '12A7', 'Nữ', '09/08/2009', 'AN-DONG', '24290@ttgdtxcva.edu.vn', '24290', '16b1288908af47c8d6ead69a9d176acd99f9c715700f1a72f936dc3a6157f535');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24291', '12000257', 'CHỀNH TRÍ LÂM', '12A7', 'Nam', '02/09/2009', 'AN-DONG', '24291@ttgdtxcva.edu.vn', '24291', '900a0efd1d29c88991ea8e407a3aa6dffa60ed045ed8b02a9ef5c4c2b010c30f');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24292', '12000258', 'NGÔ KIM LIÊN', '12A7', 'Nữ', '16/09/2009', 'AN-DONG', '24292@ttgdtxcva.edu.vn', '24292', '4ad8520655d752a9f8f813e8ef303992a59d1a8f48029faf1168bc13f5292deb');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24293', '12000259', 'HỨA MỸ LINH', '12A7', 'Nữ', '31/08/2009', 'AN-DONG', '24293@ttgdtxcva.edu.vn', '24293', '7a85322e8378fe32e390b23cd347b9add92d2ee5442f269dd60e12e290117a14');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24294', '12000260', 'QUÁCH ÁI LINH', '12A7', 'Nữ', '07/04/2009', 'AN-DONG', '24294@ttgdtxcva.edu.vn', '24294', '75dfbeb736e0f184d89a7309b606c0dd08b377b15cbd4d3eaf1d0f44c443135c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24295', '12000261', 'TRƯƠNG PHỤNG LINH', '12A7', 'Nữ', '29/06/2009', 'AN-DONG', '24295@ttgdtxcva.edu.vn', '24295', 'c484d0652d69485f1c1ad73023c31436539d9cf58102b158920d1833b25164e9');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24296', '12000262', 'TĂNG THỊ XUÂN MAI', '12A7', 'Nữ', '09/12/2009', 'AN-DONG', '24296@ttgdtxcva.edu.vn', '24296', '15eaeab62eb9625401d38d1a21572493a42c0dc15f85e3339ce524eae158d577');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24387', '12000263', 'ĐẶNG THỊ TRÀ MY', '12A7', 'Nữ', '23/11/2009', 'AN-DONG', '24387@ttgdtxcva.edu.vn', '24387', 'c38ba515146bf76a1e7ca075e76737dc35fbf7e6c69a2d670be394832b9c2455');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24297', '12000264', 'TRƯƠNG HAN NA', '12A7', 'Nữ', '31/10/2008', 'AN-DONG', '24297@ttgdtxcva.edu.vn', '24297', '7e5a2d652a2978f9d46e041c7aa0d1f52f10722b14af9637490becd359650f9e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24298', '12000265', 'LÂM NHẬT NAM', '12A7', 'Nam', '24/06/2009', 'AN-DONG', '24298@ttgdtxcva.edu.vn', '24298', '59c1279fd10030b01dcec97435ed2f0af5698d16d14b80269bcd29d9156ec953');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24299', '12000266', 'NGUYỄN KHÁNH NGÂN', '12A7', 'Nữ', '16/09/2009', 'AN-DONG', '24299@ttgdtxcva.edu.vn', '24299', '4ad8520655d752a9f8f813e8ef303992a59d1a8f48029faf1168bc13f5292deb');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24300', '12000267', 'VƯƠNG HỒNG NGÂN', '12A7', 'Nữ', '14/12/2009', 'AN-DONG', '24300@ttgdtxcva.edu.vn', '24300', '5652794061a8de0d62b13f74714ebdddcc2660e6d435edf188104eaec78be3ed');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24302', '12000268', 'LĂNG MINH NGUYỆT', '12A7', 'Nữ', '17/12/2009', 'AN-DONG', '24302@ttgdtxcva.edu.vn', '24302', '46e9d22f3bc04be7b03d294863485433241dc2488d35e270666367f452698252');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24303', '12000269', 'ĐẶNG MINH NHẬT', '12A7', 'Nam', '29/09/2009', 'AN-DONG', '24303@ttgdtxcva.edu.vn', '24303', 'f219d4b0a9f8a5f758387e4537fe6aa538b7f0ca1d64760d0acf53b040123204');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24305', '12000270', 'GIANG QUỲNH NGỌC NHI', '12A7', 'Nữ', '18/06/2009', 'AN-DONG', '24305@ttgdtxcva.edu.vn', '24305', '5e4ae1ba3ae7d299e52a86cec6923d4b8a727ebb54fbc5333f5d46f637db390c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24306', '12000271', 'TRIỆU MẪN NHI', '12A7', 'Nữ', '31/10/2009', 'AN-DONG', '24306@ttgdtxcva.edu.vn', '24306', 'ce5c0d4a5ff977ef54585d19a937d576efdedcca86d51e51f270db988a586913');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24304', '12000272', 'TRỊNH TUYẾT NHI', '12A7', 'Nữ', '14/04/2009', 'AN-DONG', '24304@ttgdtxcva.edu.vn', '24304', 'ed57518d623b07d1e292e0b9573382ffc6be1c1c34e11098a95fffe6ed1274e0');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24307', '12000273', 'HUỲNH THỊ PHI PHỤNG', '12A7', 'Nữ', '26/10/2009', 'AN-DONG', '24307@ttgdtxcva.edu.vn', '24307', '3c5b52e7e90320691fbc82ba43f363fb56e5650c7e974994754a1d83b3cb0a5a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24308', '12000274', 'DIỆP VĨNH QUANG', '12A7', 'Nam', '16/09/2009', 'AN-DONG', '24308@ttgdtxcva.edu.vn', '24308', '4ad8520655d752a9f8f813e8ef303992a59d1a8f48029faf1168bc13f5292deb');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24309', '12000275', 'TRƯƠNG MỸ QUYÊN', '12A7', 'Nữ', '18/08/2009', 'AN-DONG', '24309@ttgdtxcva.edu.vn', '24309', '8a289cf01183d3aa0134ba2c07c7ddf47ba449c7f64bf9c07cbfbb44a7ce336f');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24310', '12000276', 'TRƯƠNG UYỂN SANG', '12A7', 'Nữ', '02/07/2009', 'AN-DONG', '24310@ttgdtxcva.edu.vn', '24310', '9fb15cfb41d7ae0c0fd3f3d9c5c1069cfbb0db0dd0822733f1f6a32321ebdf4f');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24311', '12000277', 'TRẦN NGUYỄN ĐAN THANH', '12A7', 'Nữ', '16/05/2009', 'AN-DONG', '24311@ttgdtxcva.edu.vn', '24311', '906365e074d57dd509b24ff2d0cc932ebe8812982ae606d090ea6a33eba8da32');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24314', '12000278', 'NGÔ QUỐC THỊNH', '12A7', 'Nam', '06/07/2009', 'AN-DONG', '24314@ttgdtxcva.edu.vn', '24314', 'f2b32a70ffdc12fd37e632b1d14ba66027ee28a59545695d1f9fab266f78a5b8');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24405', '12000279', 'LÂM THANH THƯ', '12A7', 'Nữ', '09/11/2009', 'AN-DONG', '24405@ttgdtxcva.edu.vn', '24405', '2649277f937abfd688caf15c89748b72ccfa36c0a54114babd25163801a79fe6');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24315', '12000280', 'NGUYỄN THỊ NGỌC TRÂM', '12A7', 'Nữ', '27/12/2009', 'AN-DONG', '24315@ttgdtxcva.edu.vn', '24315', '8f0c4c8e507681adaaeb9410d6ff5e035493964c0398359f140f31937fea10d9');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24316', '12000281', 'VÕ HOÀNG BẢO TRÂN', '12A7', 'Nữ', '16/08/2008', 'AN-DONG', '24316@ttgdtxcva.edu.vn', '24316', 'c9fc4d48581b664e5b5d3c60b21784fa40c231e8717a83a5d51145e6bc78ecb6');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24317', '12000282', 'VÕ NGỌC TUYỀN', '12A7', 'Nữ', '22/07/2009', 'AN-DONG', '24317@ttgdtxcva.edu.vn', '24317', '0d7f209515705884ac92c2a910688d5f2480cbedd7ab509c761794d8d2aa4ecc');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24318', '12000283', 'NGUYỄN THỊ NGỌC TUYẾT', '12A7', 'Nữ', '25/09/2009', 'AN-DONG', '24318@ttgdtxcva.edu.vn', '24318', '3abe77aade44eda126d9b5233a8602a8c7608528f1258a6e27dd17366f488807');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24319', '12000284', 'HỒ TUẤN VĨ', '12A7', 'Nam', '06/02/2009', 'AN-DONG', '24319@ttgdtxcva.edu.vn', '24319', '7b06e8e1bff6f53f1b505f9c0f02c37b44654cedbe599edabaf97741da978844');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24320', '12000285', 'ĐÀM QUỐC VINH', '12A7', 'Nam', '17/05/2009', 'AN-DONG', '24320@ttgdtxcva.edu.vn', '24320', '6f8afe5aa9612eaed2abd14e39a46eba62a777ba408aad9544ea50ee15cdbeeb');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24321', '12000286', 'NGŨ CHÍ VINH', '12A7', 'Nam', '01/12/2009', 'AN-DONG', '24321@ttgdtxcva.edu.vn', '24321', '4a00315d54317d88111daff98090749e8851b4ff7066f5bba8e8ebd526c22289');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24322', '12000287', 'DIÊU HOÀNG YẾN', '12A7', 'Nữ', '17/08/2009', 'AN-DONG', '24322@ttgdtxcva.edu.vn', '24322', 'a09d07644b14a008ba3ad8872883c5106233a85b11269dd659bfba4d4d771bb4');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24325', '12000288', 'PHẠM QUỲNH ANH', '12A8', 'Nữ', '30/01/2009', 'AN-DONG', '24325@ttgdtxcva.edu.vn', '24325', '16b888988f275bfae1cfa5d39ef74fea51cff7d573a2078b99e644935142e5a9');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24324', '12000289', 'TẠ GIA ÂN', '12A8', 'Nữ', '09/10/2009', 'AN-DONG', '24324@ttgdtxcva.edu.vn', '24324', 'e45e5fbd2ca6523f2638d12a25f9f64864b4ff74e75284aae5b3139a56aa8bed');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24327', '12000290', 'NGUYỄN HUỲNH GIA BẢO', '12A8', 'Nam', '20/04/2009', 'AN-DONG', '24327@ttgdtxcva.edu.vn', '24327', '29810e0bb4d9388e50b3506e4bc3c66e9d18a172042ba159c3ca8ba30ac781e4');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24326', '12000291', 'NGUYỄN NGỌC GIA BẢO', '12A8', 'Nữ', '19/09/2009', 'AN-DONG', '24326@ttgdtxcva.edu.vn', '24326', '3cda20af2ef7cbbf4ce93a56444cbd3e16a622f416d6de7bcc507c0056100df6');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24328', '12000292', 'LÂM NGỌC CHÂU', '12A8', 'Nữ', '19/10/2009', 'AN-DONG', '24328@ttgdtxcva.edu.vn', '24328', '9a61e9aa78ad7fc3a5bdafa30e18f9692dfa85cab45947fcb29032ea5c96e7a5');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24329', '12000293', 'BÙI NGỌC DIỆP', '12A8', 'Nữ', '24/04/2009', 'AN-DONG', '24329@ttgdtxcva.edu.vn', '24329', '250d8c77be50c38767f6a328081e7b58020379627527ed86531c9ef386cd503e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24330', '12000294', 'BÀNH TUYẾT DUYÊN', '12A8', 'Nữ', '18/08/2009', 'AN-DONG', '24330@ttgdtxcva.edu.vn', '24330', '8a289cf01183d3aa0134ba2c07c7ddf47ba449c7f64bf9c07cbfbb44a7ce336f');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24332', '12000295', 'LÂM NHƯ HIỀN', '12A8', 'Nữ', '14/08/2009', 'AN-DONG', '24332@ttgdtxcva.edu.vn', '24332', 'b58d8ffe76e53ff47cd040e34ec8dc7b7749b3800064a382136bc5646820ce6f');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24333', '12000296', 'ĐẶNG PHAN ÁNH HỒNG', '12A8', 'Nữ', '23/11/2009', 'AN-DONG', '24333@ttgdtxcva.edu.vn', '24333', 'c38ba515146bf76a1e7ca075e76737dc35fbf7e6c69a2d670be394832b9c2455');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24335', '12000297', 'BÙI QUỐC HUY', '12A8', 'Nam', '14/04/2009', 'AN-DONG', '24335@ttgdtxcva.edu.vn', '24335', 'ed57518d623b07d1e292e0b9573382ffc6be1c1c34e11098a95fffe6ed1274e0');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24336', '12000298', 'TRƯƠNG MINH KHÔI', '12A8', 'Nam', '01/04/2009', 'AN-DONG', '24336@ttgdtxcva.edu.vn', '24336', '4a8b6df6d602e32b5128b38087c660c3e642d67bf906098ca2655ed312b13549');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24337', '12000299', 'NGUYỄN NGỌC HOÀNG KIM', '12A8', 'Nữ', '28/04/2009', 'AN-DONG', '24337@ttgdtxcva.edu.vn', '24337', '821b0184d3d92dc821163683ab737cb6ad9c8fadd0f415687845ff28bdf1840b');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24338', '12000300', 'LÝ HOÀNG LINH', '12A8', 'Nam', '17/05/2009', 'AN-DONG', '24338@ttgdtxcva.edu.vn', '24338', '6f8afe5aa9612eaed2abd14e39a46eba62a777ba408aad9544ea50ee15cdbeeb');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24339', '12000301', 'NGŨ NGỌC LINH', '12A8', 'Nữ', '15/10/2009', 'AN-DONG', '24339@ttgdtxcva.edu.vn', '24339', '4c2ae08c5c79e138f56d79cd092b4beace7b5208daa1f50078e22ed6c9402766');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24340', '12000302', 'UNG THÙY THANH MAI', '12A8', 'Nữ', '06/12/2009', 'AN-DONG', '24340@ttgdtxcva.edu.vn', '24340', 'f5f377366c55b39d887990285e9690d61c08f89aa9fd0966418ccfe4141ce77c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24341', '12000303', 'ĐINH THU NGÂN', '12A8', 'Nữ', '21/01/2009', 'AN-DONG', '24341@ttgdtxcva.edu.vn', '24341', '0186d7c17ba502f4f4faa03005795f256f0ad8deab7f82fb748e509780a9a737');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24343', '12000304', 'LÊ LƯƠNG QUẾ NGỌC', '12A8', 'Nữ', '18/12/2009', 'AN-DONG', '24343@ttgdtxcva.edu.vn', '24343', '73b36c5a751341785d876fa2a9727954f4c3473fcc9f62740ae47daa74f4cf6a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24342', '12000305', 'NGUYỄN THANH THẢO NGỌC', '12A8', 'Nữ', '05/05/2009', 'AN-DONG', '24342@ttgdtxcva.edu.vn', '24342', '5bdaae79b1ab9092753514c79fa9ebbdf2888794161b3982b97a7f2dc5a29470');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24344', '12000306', 'BÙI THANH NGUYÊN', '12A8', 'Nữ', '14/12/2009', 'AN-DONG', '24344@ttgdtxcva.edu.vn', '24344', '5652794061a8de0d62b13f74714ebdddcc2660e6d435edf188104eaec78be3ed');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24345', '12000307', 'ĐINH THIỆN NHÀN', '12A8', 'Nữ', '07/09/2009', 'AN-DONG', '24345@ttgdtxcva.edu.vn', '24345', '430fc87330f3913730a7824d68e1cf5d298bc33dafff739139f981d7150ff74d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24346', '12000308', 'HUỲNH THÀNH NHÂN', '12A8', 'Nam', '07/09/2009', 'AN-DONG', '24346@ttgdtxcva.edu.vn', '24346', '430fc87330f3913730a7824d68e1cf5d298bc33dafff739139f981d7150ff74d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24347', '12000309', 'DƯƠNG BẢO NHI', '12A8', 'Nữ', '10/07/2009', 'AN-DONG', '24347@ttgdtxcva.edu.vn', '24347', '18f91344752634c9cdaad82fbf1bc4f8918699591f08db41dab951fc557285d7');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24349', '12000310', 'ĐẶNG NGỌC LINH NHƯ', '12A8', 'Nữ', '02/04/2009', 'AN-DONG', '24349@ttgdtxcva.edu.vn', '24349', '2a390f4207f0ee16d69f130304f1892c3e213f3ef6348fb500327809648640d8');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24350', '12000311', 'LẠI THỊ TÂM NHƯ', '12A8', 'Nữ', '09/10/2009', 'AN-DONG', '24350@ttgdtxcva.edu.vn', '24350', 'e45e5fbd2ca6523f2638d12a25f9f64864b4ff74e75284aae5b3139a56aa8bed');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24351', '12000312', 'BẠCH GIA PHÚ', '12A8', 'Nam', '28/02/2009', 'AN-DONG', '24351@ttgdtxcva.edu.vn', '24351', '55de649fa104dfcd0ddb5f00ebfc0e2aa0374e36b27264b0f6344148e516d4ff');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24352', '12000313', 'TRẦN BẢO PHÚC', '12A8', 'Nam', '18/08/2009', 'AN-DONG', '24352@ttgdtxcva.edu.vn', '24352', '8a289cf01183d3aa0134ba2c07c7ddf47ba449c7f64bf9c07cbfbb44a7ce336f');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24353', '12000314', 'TRẦN NGỌC PHỤNG', '12A8', 'Nữ', '14/12/2009', 'AN-DONG', '24353@ttgdtxcva.edu.vn', '24353', '5652794061a8de0d62b13f74714ebdddcc2660e6d435edf188104eaec78be3ed');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24354', '12000315', 'HÀ MỸ PHƯƠNG', '12A8', 'Nữ', '20/09/2009', 'AN-DONG', '24354@ttgdtxcva.edu.vn', '24354', '33f63fdca6471586f33c5c4ea3c79b10ccf1ae6281410815a66a45f3457c6192');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24080', '12000316', 'LÊ NHƯ QUỲNH', '12A8', 'Nữ', '27/03/2009', 'AN-DONG', '24080@ttgdtxcva.edu.vn', '24080', '1df1d3cf215ac47f86296be0f9148d19c33afd688dc4dda5f81eaefabb1e2d02');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24356', '12000317', 'TÔ NHƯ QUỲNH', '12A8', 'Nữ', '10/01/2009', 'AN-DONG', '24356@ttgdtxcva.edu.vn', '24356', 'af4bb958a125abc6a55554a9e036a0be676fdf7425e9ae9d70fbf51e77e62501');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24358', '12000318', 'TRẦN MINH THẮNG', '12A8', 'Nam', '25/11/2009', 'AN-DONG', '24358@ttgdtxcva.edu.vn', '24358', '3e48c3964fb22e6e0cde35b831a3b93243053704c5f042af7c5bd725d4156ee9');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24359', '12000319', 'TRẦN NGUYỄN MAI THI', '12A8', 'Nữ', '01/07/2009', 'AN-DONG', '24359@ttgdtxcva.edu.vn', '24359', '1ad4187cd9aaab0c6689e09bc01ea9b664e7aa164ad89291ebc930cbf113c165');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24361', '12000320', 'NGUYỄN CHÍ THIỆN', '12A8', 'Nam', '24/01/2009', 'AN-DONG', '24361@ttgdtxcva.edu.vn', '24361', '29e1d64fd1630cd171a9ebc8da750eb829d2e377193fe35c8ac4afea99743806');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24360', '12000321', 'TRẦN THÁI THIỆN', '12A8', 'Nam', '16/07/2009', 'AN-DONG', '24360@ttgdtxcva.edu.vn', '24360', 'faa82c729c3ff14e8c9c969bc1d13d303ebf4130edafc4bcd91f96432b33afc2');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24362', '12000322', 'TRẦN THỊ DIỆU THY', '12A8', 'Nữ', '03/02/2009', 'AN-DONG', '24362@ttgdtxcva.edu.vn', '24362', 'a65a1611e442ff6d89b4370cbc266f3069fb6ebb121673ab30ace7d61f018219');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24363', '12000323', 'PHAN NGUYỄN THÙY TRÂM', '12A8', 'Nữ', '16/08/2009', 'AN-DONG', '24363@ttgdtxcva.edu.vn', '24363', '513679cc0ec2063e5b7a624e76a96c310298c69cace78943ca57d513bec0aca0');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24366', '12000324', 'NGUYỄN MINH TUẤN', '12A8', 'Nam', '06/07/2009', 'AN-DONG', '24366@ttgdtxcva.edu.vn', '24366', 'f2b32a70ffdc12fd37e632b1d14ba66027ee28a59545695d1f9fab266f78a5b8');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24365', '12000325', 'VŨ MINH TUẤN', '12A8', 'Nam', '17/06/2009', 'AN-DONG', '24365@ttgdtxcva.edu.vn', '24365', 'd59e3a79525a4cdba792a218aa1248ebcecdc0fb7990ecb44986f9f294ecae4a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24367', '12000326', 'PHẠM ĐỖ TƯỜNG VI', '12A8', 'Nữ', '28/12/2009', 'AN-DONG', '24367@ttgdtxcva.edu.vn', '24367', 'bc778de8943f756c7184fb71d8bf3430c10d5d89e7753e5def646939ea5af26b');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24368', '12000327', 'NGUYỄN PHƯỚC VINH', '12A8', 'Nam', '10/11/2009', 'AN-DONG', '24368@ttgdtxcva.edu.vn', '24368', 'd44d28a966596983b4437f2738d49271a1d3e18b4920c162e06fa28d75ec5097');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24416', '12000328', 'TRẦN TRƯƠNG PHƯƠNG VY', '12A8', 'Nữ', '01/11/2009', 'AN-DONG', '24416@ttgdtxcva.edu.vn', '24416', '864ad94d6db70c38302cb5e19886610754aae24e9a6fe7d52921fee058cd2fe4');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24370', '12000329', 'VÕ GIA VY', '12A8', 'Nữ', '26/09/2009', 'AN-DONG', '24370@ttgdtxcva.edu.vn', '24370', '70624b38f1e11578f62115c514c8704e9014ddd17b0d9c3d7ddd4bea4883856d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24419', '12000375', 'TRẦN GIA BẢO', '12A10', 'Nam', '16/09/2009', 'AN-DONG', '24419@ttgdtxcva.edu.vn', '24419', '4ad8520655d752a9f8f813e8ef303992a59d1a8f48029faf1168bc13f5292deb');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24420', '12000376', 'LÊ NGUYỄN BỐI BỐI', '12A10', 'Nữ', '09/07/2009', 'AN-DONG', '24420@ttgdtxcva.edu.vn', '24420', '5e77947f4ebbb280b825331675627ec2761cd6d88e64a62f7f426d2b5163924e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24423', '12000377', 'TRẦN LÊ DUẨN', '12A10', 'Nam', '13/08/2009', 'AN-DONG', '24423@ttgdtxcva.edu.vn', '24423', '11776ac0fb79fb00a5452ace9e93f7bb85a15e30513020df66ab801e6901a74a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24422', '12000378', 'LÝ QUỐC ĐẠT', '12A10', 'Nam', '28/08/2009', 'AN-DONG', '24422@ttgdtxcva.edu.vn', '24422', 'a685836a151d6c2f38d4fb1ad28423817f3cc0dd098e9aa9b65ead8bbd7ed74f');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24421', '12000379', 'HÀ HẢI ĐĂNG', '12A10', 'Nam', '03/11/2009', 'AN-DONG', '24421@ttgdtxcva.edu.vn', '24421', 'd078a8ea05a9a979e750c401994f4e4dfa09292b38705799db87b2d2e924a33d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24424', '12000380', 'TRẦN NHẬT HÀO', '12A10', 'Nam', '04/10/2009', 'AN-DONG', '24424@ttgdtxcva.edu.vn', '24424', '52a6695140936447129e7a1467daeb9592bbba5490817b66eacfe9cb1f7d5d77');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24471', '12000381', 'HUỲNH NGỌC HÂN', '12A10', 'Nữ', '23/01/2008', 'AN-DONG', '24471@ttgdtxcva.edu.vn', '24471', '779085570b82fdb5111c8895a3b255548b1a3433124f5f9cac861f13c681c38e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24425', '12000382', 'TRẦN THIÊN HÒA', '12A10', 'Nam', '01/01/2009', 'AN-DONG', '24425@ttgdtxcva.edu.vn', '24425', '87c54c997848eaaa84c31af3029b9cacf632257f8572327ba4d731dbf6a98103');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24426', '12000383', 'TRẦN VẠN QUỐC HOÀNG', '12A10', 'Nam', '29/05/2009', 'AN-DONG', '24426@ttgdtxcva.edu.vn', '24426', '57f84513a2444acfe1d1cdee7e3a8cc3d661a0239820d9dfb9db3e96e3894b4f');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24427', '12000384', 'NGUYỄN LONG KHANG', '12A10', 'Nam', '02/06/2009', 'AN-DONG', '24427@ttgdtxcva.edu.vn', '24427', '163cb5d5816439f853a53f8641b4d5b2f23db417baed6dd28dac8e7a411b076a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24428', '12000385', 'NGUYỄN BẢO KHANH', '12A10', 'Nữ', '07/09/2009', 'AN-DONG', '24428@ttgdtxcva.edu.vn', '24428', '430fc87330f3913730a7824d68e1cf5d298bc33dafff739139f981d7150ff74d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24431', '12000386', 'TRƯƠNG NHÃ KỲ', '12A10', 'Nữ', '23/12/2009', 'AN-DONG', '24431@ttgdtxcva.edu.vn', '24431', 'b8d6ddf0a45349b1c25fdcf45ebeadcb80ca37a044bfad87c635ea5dd05495fd');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24432', '12000387', 'LƯU NGUYỄN HOÀNG LONG', '12A10', 'Nam', '21/03/2009', 'AN-DONG', '24432@ttgdtxcva.edu.vn', '24432', '27e48a4f30b6560bd995fe7969ee4863b311be1f8c2ee94ff98436192b886c80');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24433', '12000388', 'QUÁCH KIM NGÂN', '12A10', 'Nữ', '09/10/2009', 'AN-DONG', '24433@ttgdtxcva.edu.vn', '24433', 'e45e5fbd2ca6523f2638d12a25f9f64864b4ff74e75284aae5b3139a56aa8bed');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24434', '12000389', 'VÕ PHƯƠNG NGHI', '12A10', 'Nữ', '01/03/2009', 'AN-DONG', '24434@ttgdtxcva.edu.vn', '24434', '176e509e0cae2f253a03e9b1852216ee888226a01638c0dda25ba600a5106974');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24435', '12000390', 'NGUYỄN HỒNG BẢO NGỌC', '12A10', 'Nữ', '08/06/2009', 'AN-DONG', '24435@ttgdtxcva.edu.vn', '24435', 'b72ed7df515636e7ae7d476d4d0d5ec8eb5dc96b0ed08f0c656b64d1801e07da');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24436', '12000391', 'TRẦN HOÀNG NHƯ NGỌC', '12A10', 'Nữ', '18/12/2009', 'AN-DONG', '24436@ttgdtxcva.edu.vn', '24436', '73b36c5a751341785d876fa2a9727954f4c3473fcc9f62740ae47daa74f4cf6a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24437', '12000392', 'HUỲNH MINH NHẬT', '12A10', 'Nam', '01/05/2009', 'AN-DONG', '24437@ttgdtxcva.edu.vn', '24437', '806b44c28a089feba46562917c96c89249e901991edf94e1f9f5505ccdd07a24');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24438', '12000393', 'LA TUYẾT NHI', '12A10', 'Nữ', '10/02/2009', 'AN-DONG', '24438@ttgdtxcva.edu.vn', '24438', 'f766b720b19226ea7719976d1926b33fb219cb4eaaf375d36e0cdc417e062f6b');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24440', '12000394', 'LÊ NGỌC NHI', '12A10', 'Nữ', '22/05/2009', 'AN-DONG', '24440@ttgdtxcva.edu.vn', '24440', '61f18c08a138ae306b7137d416f2b28e51cf804052af591f03372d5b18b27dec');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24439', '12000395', 'PHẠM NGỌC NHI', '12A10', 'Nữ', '13/02/2009', 'AN-DONG', '24439@ttgdtxcva.edu.vn', '24439', 'c137b51602412ed24fa3b60b9bb8d9961b25da911a794f87bf1cffb4cbcec43f');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24441', '12000396', 'LÂM CẨM PHONG', '12A10', 'Nam', '06/07/2009', 'AN-DONG', '24441@ttgdtxcva.edu.vn', '24441', 'f2b32a70ffdc12fd37e632b1d14ba66027ee28a59545695d1f9fab266f78a5b8');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24442', '12000397', 'DIỆP GIA PHÚ', '12A10', 'Nam', '17/04/2009', 'AN-DONG', '24442@ttgdtxcva.edu.vn', '24442', '9ec29a329d3817c78cc4f7432a472bb3c21ff3fb451bbccb26a6c14c716f0a36');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24443', '12000398', 'TRẦN THANH TÂM', '12A10', 'Nữ', '02/07/2009', 'AN-DONG', '24443@ttgdtxcva.edu.vn', '24443', '9fb15cfb41d7ae0c0fd3f3d9c5c1069cfbb0db0dd0822733f1f6a32321ebdf4f');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24446', '12000399', 'NGUYỄN LÊ KIM THOA', '12A10', 'Nữ', '08/02/2009', 'AN-DONG', '24446@ttgdtxcva.edu.vn', '24446', '9ec9bff79727b34c4ac26046400913003ab811a5b0225911399ddb6e0263abd5');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24447', '12000400', 'BÙI MẠNH TIẾN', '12A10', 'Nam', '07/06/2009', 'AN-DONG', '24447@ttgdtxcva.edu.vn', '24447', '6b7f3fb7c39e626fffd477a1f5aee80362cd66fa74cbfa3f25fcf1b7aab64dde');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24451', '12000401', 'TRẦN NGUYỄN HUỲNH TRANG', '12A10', 'Nữ', '03/09/2009', 'AN-DONG', '24451@ttgdtxcva.edu.vn', '24451', 'c95e8717a1c55287ee4fda40284771fa1533e85a8e0e4ca5783a3fa073208dff');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24450', '12000402', 'HỒ NGUYỄN MAI TRÂM', '12A10', 'Nữ', '14/01/2009', 'AN-DONG', '24450@ttgdtxcva.edu.vn', '24450', '9c0cd0bc61a6c1839f4a886c19db55379ba62d9eff72e7d3e80aee84ad2b45f6');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24449', '12000403', 'NGUYỄN NGỌC TRÂN', '12A10', 'Nữ', '18/09/2009', 'AN-DONG', '24449@ttgdtxcva.edu.vn', '24449', '1dd94dfa9da42c5151b326e4301539507af53d2dc5203ecbbe2ce597dff466fe');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24452', '12000404', 'HUỲNH MINH TRIẾT', '12A10', 'Nam', '07/05/2009', 'AN-DONG', '24452@ttgdtxcva.edu.vn', '24452', '00773435491a8ba55352642c825d49fb5aed04b54f9601646364b4e8e76e552c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24453', '12000405', 'PHẠM NGỌC TRỌNG', '12A10', 'Nam', '18/12/2009', 'AN-DONG', '24453@ttgdtxcva.edu.vn', '24453', '73b36c5a751341785d876fa2a9727954f4c3473fcc9f62740ae47daa74f4cf6a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24454', '12000406', 'ĐÀO NGỌC THANH TRÚC', '12A10', 'Nữ', '25/02/2009', 'AN-DONG', '24454@ttgdtxcva.edu.vn', '24454', '95b7d6f3a5d7578bb7c6975787d8713eb144b461d58bf7107011d0057999d6a6');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24456', '12000407', 'NGUYỄN LÊ MINH TUYẾT', '12A10', 'Nữ', '29/07/2009', 'AN-DONG', '24456@ttgdtxcva.edu.vn', '24456', 'b9c09263d7f9856dcc2da95e3b73bdba6fb6d1b29cd84d23e15a76a4c011d33a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24457', '12000408', 'NGUYỄN ĐÀM PHƯƠNG UYÊN', '12A10', 'Nữ', '24/06/2009', 'AN-DONG', '24457@ttgdtxcva.edu.vn', '24457', '59c1279fd10030b01dcec97435ed2f0af5698d16d14b80269bcd29d9156ec953');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24458', '12000409', 'PHẠM THANH VÂN', '12A10', 'Nữ', '14/07/2009', 'AN-DONG', '24458@ttgdtxcva.edu.vn', '24458', 'cb862921782fcd93350249ee7228e3df6a95d659808270e0b86cfe77b6727925');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24460', '12000410', 'LƯ MINH VŨ', '12A10', 'Nam', '25/02/2009', 'AN-DONG', '24460@ttgdtxcva.edu.vn', '24460', '95b7d6f3a5d7578bb7c6975787d8713eb144b461d58bf7107011d0057999d6a6');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24461', '12000411', 'ĐỖ LÊ TRIỆU VY', '12A10', 'Nữ', '10/11/2009', 'AN-DONG', '24461@ttgdtxcva.edu.vn', '24461', 'd44d28a966596983b4437f2738d49271a1d3e18b4920c162e06fa28d75ec5097');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24462', '12000412', 'ĐỖ THỤY YẾN VY', '12A10', 'Nữ', '14/05/2009', 'AN-DONG', '24462@ttgdtxcva.edu.vn', '24462', '25b2ec54c968fb13c20702175f1c621eec5679b9a97945ab8273e8eebf45c3fc');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24463', '12000413', 'NGUYỄN NGỌC MINH VY', '12A10', 'Nữ', '27/02/2009', 'AN-DONG', '24463@ttgdtxcva.edu.vn', '24463', '30ea8588962793026f9eff125a0fa8f893be9fce8f78e48c1949c68e213e6394');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24464', '12000414', 'PHẠM NGUYỄN TƯỜNG VY', '12A10', 'Nữ', '19/11/2009', 'AN-DONG', '24464@ttgdtxcva.edu.vn', '24464', 'a1716c5fdfb6dc266c8a127c7dd52c2414839cd93f2def1c8cc9ab0946364502');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24465', '12000415', 'TRẦN VÕ HẢI VY', '12A10', 'Nữ', '12/06/2009', 'AN-DONG', '24465@ttgdtxcva.edu.vn', '24465', 'cbc550fd64db759d446278d1829c1a57d08d48a293bec31b3d27def1d712c8e7');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25001', '11000001', 'ĐỖ TRỊNH MINH ANH', '11A1', 'Nữ', '30/09/2009', 'AN-DONG', '25001@ttgdtxcva.edu.vn', '25001', '731405230b2fd77e152315df76a0f412eeca6e9910434e7d5bd5a5c63eb96a55');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25002', '11000002', 'TRƯƠNG QUỲNH ANH', '11A1', 'Nữ', '20/04/2010', 'AN-DONG', '25002@ttgdtxcva.edu.vn', '25002', 'fa2bb44727756077d0336af0a405e40cb5c847a1dfe74faa42d632b435fde2f5');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25003', '11000003', 'HUỲNH THỊ CẨM BÌNH', '11A1', 'Nữ', '13/07/2010', 'AN-DONG', '25003@ttgdtxcva.edu.vn', '25003', '4d8997738cae0b2a2c218f74094dd9fc832efff5405067ff2f8576b8d262b365');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25005', '11000004', 'PHẠM ANH DUY', '11A1', 'Nam', '01/09/2010', 'AN-DONG', '25005@ttgdtxcva.edu.vn', '25005', '633997460d12b6855286f1437c9b0d686292f193d7e93ad502cd6f7933921d15');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25218', '11000005', 'HUỲNH GIA HÂN', '11A1', 'Nữ', '15/01/2010', 'AN-DONG', '25218@ttgdtxcva.edu.vn', '25218', '1cd1315fb76c6aa5a47117967f569167bc40ecdaf9af0d4242d49513972d7843');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25006', '11000006', 'PHẠM HOÀNG GIA HÂN', '11A1', 'Nữ', '08/11/2010', 'AN-DONG', '25006@ttgdtxcva.edu.vn', '25006', 'f97c1c55550a3e47a43a0e80332557a1f93833f80a19890043cb78530c7e119e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25007', '11000007', 'LAI KIẾN HÒA', '11A1', 'Nam', '15/11/2010', 'AN-DONG', '25007@ttgdtxcva.edu.vn', '25007', '3aa16cbbfa038f058648e0bf481a0a749f2665235f3825d1004bd77eea4896b1');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25008', '11000008', 'PHẠM NHẬT HUY', '11A1', 'Nam', '06/12/2010', 'AN-DONG', '25008@ttgdtxcva.edu.vn', '25008', 'ab287a559ea8c0636a7978070812cbb214e45d6d12b977620cfdeb712441521a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25009', '11000009', 'ĐINH PHÚC KHANG', '11A1', 'Nam', '10/03/2010', 'AN-DONG', '25009@ttgdtxcva.edu.vn', '25009', 'be56196021ce2ddb08eca380103a275b63c8f81245e413a0ee3b5a00db464423');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25010', '11000010', 'NGUYỄN MINH KHANG', '11A1', 'Nam', '20/04/2010', 'AN-DONG', '25010@ttgdtxcva.edu.vn', '25010', 'fa2bb44727756077d0336af0a405e40cb5c847a1dfe74faa42d632b435fde2f5');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25011', '11000011', 'NGUYỄN THÁI KHANG', '11A1', 'Nam', '04/07/2010', 'AN-DONG', '25011@ttgdtxcva.edu.vn', '25011', '7428a4329711708039733c4d0655bc0f5bab7f68d478f68c7e580290ad5f78c2');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25012', '11000012', 'MAI VĂN TUẤN KIỆT', '11A1', 'Nam', '16/12/2010', 'AN-DONG', '25012@ttgdtxcva.edu.vn', '25012', '0018d0bd9956d496c6a2f0a0d44bc3f4499e6d0624296237f28871a86848f24a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25013', '11000013', 'TRẦN PHẠM GIA LINH', '11A1', 'Nữ', '24/11/2010', 'AN-DONG', '25013@ttgdtxcva.edu.vn', '25013', 'c12fa4fefdaddc1572c8fd62cf9220fca851c6187959b4eb2259946c3c326d5c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25014', '11000014', 'NGUYỄN THỊ BÍCH LOAN', '11A1', 'Nữ', '24/02/2009', 'AN-DONG', '25014@ttgdtxcva.edu.vn', '25014', 'dbf42b85df3130095ffbe9ec8924eabdda957a5e1ffbf55c613d719e86fcd56c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25015', '11000015', 'PHẠM ĐÀO KIM NGÂN', '11A1', 'Nữ', '03/01/2010', 'AN-DONG', '25015@ttgdtxcva.edu.vn', '25015', 'd37b423e48bd0a892486bf654d89b13515f457a4e034d0a641c0870cddaa002c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25016', '11000016', 'LÊ MẪN NGHI', '11A1', 'Nữ', '17/12/2009', 'AN-DONG', '25016@ttgdtxcva.edu.vn', '25016', '46e9d22f3bc04be7b03d294863485433241dc2488d35e270666367f452698252');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25017', '11000017', 'NGUYỄN TRẦN BÍCH NGỌC', '11A1', 'Nữ', '09/11/2010', 'AN-DONG', '25017@ttgdtxcva.edu.vn', '25017', '1f817bb0599e79043b31ca568dbce6603385bdb253e2c02ec669a4126d1fdbee');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25018', '11000018', 'VÕ TRẦN KIM NGỌC', '11A1', 'Nữ', '13/07/2010', 'AN-DONG', '25018@ttgdtxcva.edu.vn', '25018', '4d8997738cae0b2a2c218f74094dd9fc832efff5405067ff2f8576b8d262b365');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25019', '11000019', 'SƠN KHÁNH NHÂN', '11A1', 'Nam', '30/09/2010', 'AN-DONG', '25019@ttgdtxcva.edu.vn', '25019', 'a04b91b783c5409a2a915cd19c23c115563ae91103dca5d32bb4918f39914664');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25021', '11000020', 'PHẠM THỊ QUỲNH NHƯ', '11A1', 'Nữ', '27/02/2010', 'AN-DONG', '25021@ttgdtxcva.edu.vn', '25021', '53812cee669c91a382ca1f3f3a76f2b79452c7a7e408443832518dc0f5aef230');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25022', '11000021', 'FARIDA NOORISA', '11A1', 'Nữ', '14/06/2010', 'AN-DONG', '25022@ttgdtxcva.edu.vn', '25022', '17004cad2a217e6432bc301e19ca91faede3dad80352d4ef01cdf90e6c71f69c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25024', '11000022', 'LƯU ĐÌNH PHÚ', '11A1', 'Nam', '26/03/2010', 'AN-DONG', '25024@ttgdtxcva.edu.vn', '25024', '2af6635703045db4a68a474fd7e152f3b177fc14ed2ed01b5df11c3e79cfbf4c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25025', '11000023', 'NGÔ HOÀNG THANH PHÚC', '11A1', 'Nam', '08/08/2010', 'AN-DONG', '25025@ttgdtxcva.edu.vn', '25025', '4e78ba91664e6c52e3732ca85817bc0b235f6289b6eec04caf34eda8c79cda6b');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25026', '11000024', 'VƯU HUỆ QUÂN', '11A1', 'Nữ', '08/10/2010', 'AN-DONG', '25026@ttgdtxcva.edu.vn', '25026', 'e3c34c999d9781db32fabbbd2ef5d2daf010d1fde76dbee02cc12577a6811892');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25027', '11000025', 'CAO THỊ DIỄM QUÝ', '11A1', 'Nữ', '05/09/2010', 'AN-DONG', '25027@ttgdtxcva.edu.vn', '25027', '93fb562da40c37243d048c9b5a6b4d8247857554240bd895e2a75c46b4ab34ad');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25219', '11000026', 'NGUYỄN ANH THƯ', '11A1', 'Nữ', '18/09/2010', 'AN-DONG', '25219@ttgdtxcva.edu.vn', '25219', '4f9a8aad45c1d6879d0166ba2f50804d4343e537aa4ab61ca373dfe5349d8cc3');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25216', '11000027', 'TRỊNH TRẦN ANH THƯ', '11A1', 'Nữ', '03/06/2009', 'AN-DONG', '25216@ttgdtxcva.edu.vn', '25216', '2426ed4fe55cb6f6a6cc76afdc8b46c0f734cc430f55ae07783778cd81235afd');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25030', '11000028', 'TRẦN THANH TRÀ', '11A1', 'Nữ', '09/02/2010', 'AN-DONG', '25030@ttgdtxcva.edu.vn', '25030', '6c9b84005683eb5183ebbd0e9d37a0dd15ee7256182c01e67624a8a543ef5525');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25031', '11000029', 'NGUYỄN THỊ THÙY TRANG', '11A1', 'Nữ', '01/02/2010', 'AN-DONG', '25031@ttgdtxcva.edu.vn', '25031', '2fa65ea954ba762b0267c2a978510c7f7d6bc04a156c68e93b0252ddbcf29fea');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25032', '11000030', 'HỒ NGUYỄN BẢO TRÂN', '11A1', 'Nữ', '01/01/2010', 'AN-DONG', '25032@ttgdtxcva.edu.vn', '25032', '3c9fdacf620547a0e3aaafc6d19338c4d416b156ba3049747ed24515bf1c1dbb');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25033', '11000031', 'HỒ THANH TRÚC', '11A1', 'Nữ', '04/03/2010', 'AN-DONG', '25033@ttgdtxcva.edu.vn', '25033', 'b0ba57d68d35a84bb33f9240648a5476eb6bf0cb320777991fce8008d70669aa');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25034', '11000032', 'PHẠM TĂNG THANH TRÚC', '11A1', 'Nữ', '24/06/2010', 'AN-DONG', '25034@ttgdtxcva.edu.vn', '25034', '3b09bc34985ac9172e23ce8fe347a6b4eda602da19cd930ffcca40e9d27a6926');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25035', '11000033', 'TĂNG THANH TRÚC', '11A1', 'Nữ', '23/11/2010', 'AN-DONG', '25035@ttgdtxcva.edu.vn', '25035', 'dda24e0bd9738478ac4dd07af0beaa9ab176007cf6219e148d581ca05c071ba5');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25036', '11000034', 'NGUYỄN ĐỨC TRUNG', '11A1', 'Nam', '10/08/2010', 'AN-DONG', '25036@ttgdtxcva.edu.vn', '25036', '8925d53b2712d8d53ac769e274b101f543118c88f1053446e2cf1c47c13b37c1');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25037', '11000035', 'NGUYỄN THANH TUẤN', '11A1', 'Nam', '18/12/2009', 'AN-DONG', '25037@ttgdtxcva.edu.vn', '25037', '73b36c5a751341785d876fa2a9727954f4c3473fcc9f62740ae47daa74f4cf6a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25038', '11000036', 'PHAN LÊ TƯỜNG VI', '11A1', 'Nữ', '21/04/2010', 'AN-DONG', '25038@ttgdtxcva.edu.vn', '25038', 'fc9de48e3ac3dbe9f56e2ea90412bd3a8ecef1a4e5737b316ee778d2d658d35e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25220', '11000037', 'ĐÀO QUANG VINH', '11A1', 'Nam', '15/04/2009', 'AN-DONG', '25220@ttgdtxcva.edu.vn', '25220', 'd172b9540362bf384923f43f7709c9fc3cff38e4fe193baa681e3bb89a26b61d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25039', '11000038', 'TRẦN HÁN VINH', '11A1', 'Nam', '11/07/2010', 'AN-DONG', '25039@ttgdtxcva.edu.vn', '25039', '8e39bd54255a63142e1087c568a744259653b0222def8c39c4eb4135aa20c513');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25040', '11000039', 'NGUYỄN NGỌC HOÀNG VY', '11A1', 'Nữ', '29/07/2010', 'AN-DONG', '25040@ttgdtxcva.edu.vn', '25040', '7fa74cd4134b4bf0c70095e21643fe74ceb3281c60c38a443ecb2fc6f687dd32');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25041', '11000040', 'NGUYỄN NGỌC NHƯ Ý', '11A1', 'Nữ', '04/03/2010', 'AN-DONG', '25041@ttgdtxcva.edu.vn', '25041', 'b0ba57d68d35a84bb33f9240648a5476eb6bf0cb320777991fce8008d70669aa');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25042', '11000041', 'NGUYỄN NGỌC HOÀNG AN', '11A2', 'Nữ', '12/02/2010', 'AN-DONG', '25042@ttgdtxcva.edu.vn', '25042', 'e4490cb61d10e1e8d8cb8a2dd12b30019a8378b7999f1a5667b9a3ccd8ee1d0e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25215', '11000042', 'BÙI HOÀNG ANH', '11A2', 'Nữ', '14/09/2009', 'AN-DONG', '25215@ttgdtxcva.edu.vn', '25215', '0d191755d980da2a59444c215b13be917bb8278c5fa0cb5f2b61731a88f1202b');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25043', '11000043', 'CHIÊU TUYẾT ANH', '11A2', 'Nữ', '21/11/2010', 'AN-DONG', '25043@ttgdtxcva.edu.vn', '25043', 'a85f1f7528f0a83b76a3a034f25239c084818473c868d13b851f777eabd4b6ac');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25044', '11000044', 'NGUYỄN HOÀNG QUỐC BẢO', '11A2', 'Nam', '25/07/2010', 'AN-DONG', '25044@ttgdtxcva.edu.vn', '25044', '9bda7131a5aa29b655bf675a951ad74a63298d98a72750b28c1438fc013757f5');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25045', '11000045', 'PHAN ĐIỀN GIA BẢO', '11A2', 'Nam', '15/02/2010', 'AN-DONG', '25045@ttgdtxcva.edu.vn', '25045', '5b1dd3dcb1594733975512e8d7e81b8dfc499f62924e39ef08d4c192bab5a4b1');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25046', '11000046', 'THẠCH MINH CHÂU', '11A2', 'Nữ', '17/04/2010', 'AN-DONG', '25046@ttgdtxcva.edu.vn', '25046', '124fb2d2bdfc710a1725b077c6062d5f979b456d17c377f61a0b2a8e040b4a2b');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25047', '11000047', 'TRƯƠNG THỊ NGỌC HÀ', '11A2', 'Nữ', '25/10/2009', 'AN-DONG', '25047@ttgdtxcva.edu.vn', '25047', '9dddf15d5e34ebc414601f8e55a44a79ab4f5208458043f616a0853acee5ff77');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25048', '11000048', 'HÀ QUÂN HẢI', '11A2', 'Nam', '16/03/2010', 'AN-DONG', '25048@ttgdtxcva.edu.vn', '25048', '9415abfaf4c798451cc49dc6de39d963113e64dcc6bb213466d7b1ef6eaac7be');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25049', '11000049', 'TRẦN GIA HÂN', '11A2', 'Nữ', '02/06/2010', 'AN-DONG', '25049@ttgdtxcva.edu.vn', '25049', '19775f53087f6a13d5b9e08cc6cd45e4a975d5c579f0961a9592ac6116dc1f6e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25051', '11000050', 'PHAN NGỌC LAN', '11A2', 'Nữ', '04/10/2010', 'AN-DONG', '25051@ttgdtxcva.edu.vn', '25051', 'b774ec864b866ab4fbddbb172c1ee2011234723276e7dc576273f654bb683f86');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25221', '11000051', 'ĐỖ HẢI LÂM', '11A2', 'Nam', '27/08/2008', 'AN-DONG', '25221@ttgdtxcva.edu.vn', '25221', '4cfdc264238beab615b31f8e691d2fb4582925b060543e65895af54cd5349b48');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25053', '11000052', 'NGUYỄN VY LINH', '11A2', 'Nữ', '05/05/2010', 'AN-DONG', '25053@ttgdtxcva.edu.vn', '25053', '41310846ac6282770fcbef79d17f2288b48e179cd0aec26d93188948bf1c9440');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25054', '11000053', 'LÊ HOÀNG TRÚC MAI', '11A2', 'Nữ', '28/01/2009', 'AN-DONG', '25054@ttgdtxcva.edu.vn', '25054', '7992e2bf2f824dca22878c8db1ea3b06cece716172a9467e9674534c02c57d48');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25055', '11000054', 'TRẦN HẢI MINH', '11A2', 'Nam', '19/09/2010', 'AN-DONG', '25055@ttgdtxcva.edu.vn', '25055', 'e696ad6bb6e1a79b8728bc735bc74f27eb8e2bea1cd513839ceaa69dfca18418');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25056', '11000055', 'LÊ PHAN TRÀ MY', '11A2', 'Nữ', '16/02/2010', 'AN-DONG', '25056@ttgdtxcva.edu.vn', '25056', 'f43819e9401d87e348dbdd9dd07bcdbadaeec05fc2b104368d0feeded928726a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25057', '11000056', 'LÊ TRẦN DIỄM MY', '11A2', 'Nữ', '03/10/2010', 'AN-DONG', '25057@ttgdtxcva.edu.vn', '25057', 'fef02764084e785f8090928653af7023e94fb460cc71a51eb3838a4781ffcf2d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25058', '11000057', 'NGUYỄN HOÀI NAM', '11A2', 'Nam', '24/10/2010', 'AN-DONG', '25058@ttgdtxcva.edu.vn', '25058', 'ab8b0944d819ce92224169d48e076168d899f2afc9a9ced77d13659eca9f20a1');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25059', '11000058', 'ĐẶNG THỊ THANH NHÀN', '11A2', 'Nữ', '20/05/2010', 'AN-DONG', '25059@ttgdtxcva.edu.vn', '25059', '922543e86dbf1de4b115780e6cd3a7e574f7af87282c75a398301dbf725bb7a7');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25060', '11000059', 'NGUYỄN NGỌC BẢO NHI', '11A2', 'Nữ', '02/06/2010', 'AN-DONG', '25060@ttgdtxcva.edu.vn', '25060', '19775f53087f6a13d5b9e08cc6cd45e4a975d5c579f0961a9592ac6116dc1f6e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25061', '11000060', 'VÕ QUỲNH NHƯ', '11A2', 'Nữ', '26/12/2010', 'AN-DONG', '25061@ttgdtxcva.edu.vn', '25061', '89e8b836b6093c08a1c0d7175aa3bd44003d211a0c406ab8421b765b36377ef1');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25063', '11000061', 'PHẠM NGUYỄN DUY PHƯỚC', '11A2', 'Nam', '09/06/2010', 'AN-DONG', '25063@ttgdtxcva.edu.vn', '25063', '5b29e01629a47f52519ffe52d47a969a95e9003a3186172636c6909cb458bd3f');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25064', '11000062', 'NGUYỄN THÁI MAI PHƯƠNG', '11A2', 'Nữ', '05/02/2010', 'AN-DONG', '25064@ttgdtxcva.edu.vn', '25064', 'd2dd958613b72f7ccb47421e6c63e6a022cd9b854bc0dde43dde6e42b3a10e54');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25065', '11000063', 'TẠ TÚ PHƯƠNG', '11A2', 'Nữ', '03/02/2008', 'AN-DONG', '25065@ttgdtxcva.edu.vn', '25065', 'a3b5e2fd01225c4a7378cdc36f6b12e76c958183d19fff73a8609545782e092b');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25066', '11000064', 'TRẦN MINH QUANG', '11A2', 'Nam', '06/04/2009', 'AN-DONG', '25066@ttgdtxcva.edu.vn', '25066', '7cb71dac4d0403f77beff7c463bb28c352fe25dbd189631d8e29e1b28c800a73');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25067', '11000065', 'LÝ ÁNH QUYÊN', '11A2', 'Nữ', '21/02/2010', 'AN-DONG', '25067@ttgdtxcva.edu.vn', '25067', '61a58574f57a4e7837592b6b595d6388fa5b40e7e0a92f5e1c1f2036397497c9');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25068', '11000066', 'NGUYỄN HỮU TÀI', '11A2', 'Nam', '05/10/2009', 'AN-DONG', '25068@ttgdtxcva.edu.vn', '25068', '93e3b42069cb01ce046a8a56c2ae8ecf31020459c4639ca1a835d1eb67f749fe');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25069', '11000067', 'NGUYỄN NGỌC YẾN THANH', '11A2', 'Nữ', '20/09/2010', 'AN-DONG', '25069@ttgdtxcva.edu.vn', '25069', 'f11d5c911a8ffd6904f8fda907e87c8ca84b30c7f987cd6a368c354927b771ae');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25070', '11000068', 'LỤC PHƯƠNG THIỆN', '11A2', 'Nam', '08/11/2010', 'AN-DONG', '25070@ttgdtxcva.edu.vn', '25070', 'f97c1c55550a3e47a43a0e80332557a1f93833f80a19890043cb78530c7e119e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25214', '11000069', 'TRẦN VĂN HÙNG THUẬN', '11A2', 'Nam', '23/01/2010', 'AN-DONG', '25214@ttgdtxcva.edu.vn', '25214', '54cbf15f6a7cfb4422a6e87355b142ae2ee276c5098fb1be2160c56599cc2637');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25071', '11000070', 'NGUYỄN THỊ THÙY TIÊN', '11A2', 'Nữ', '13/03/2010', 'AN-DONG', '25071@ttgdtxcva.edu.vn', '25071', 'f060e8423ffab83f00ba6f7ed4056a2a6f042c1868c1e1aa3b5e915e06d962af');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25072', '11000071', 'NGUYỄN TRUNG TÍN', '11A2', 'Nam', '24/02/2010', 'AN-DONG', '25072@ttgdtxcva.edu.vn', '25072', '9d9fb7fc9f673a8d7062ee36fbc44b7f7021e929f7d3cd171f5efdb4205ff6fd');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25073', '11000072', 'HUỲNH NGỌC TRÂN', '11A2', 'Nữ', '07/04/2010', 'AN-DONG', '25073@ttgdtxcva.edu.vn', '25073', 'bd044ae3d9f23e00c4fe741280a8d5e70bbf0489959285dc77509517609e9015');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25075', '11000073', 'LƯƠNG LỤC KIẾT TƯỜNG', '11A2', 'Nam', '10/01/2010', 'AN-DONG', '25075@ttgdtxcva.edu.vn', '25075', '9363a8515890c7b327978fb8c669a1d86ac17e54454fd984921942c56b2c413c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25076', '11000074', 'TRẦN NGỌC SƠN VƯƠNG', '11A2', 'Nam', '05/11/2010', 'AN-DONG', '25076@ttgdtxcva.edu.vn', '25076', '904f1521420d7d7b24ec5e52108ae384760c0ed14d8856b492b3ffbee7fd0c37');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25077', '11000075', 'HỒ HUỲNH BẢO VY', '11A2', 'Nữ', '14/06/2010', 'AN-DONG', '25077@ttgdtxcva.edu.vn', '25077', '17004cad2a217e6432bc301e19ca91faede3dad80352d4ef01cdf90e6c71f69c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25078', '11000076', 'LÊ THẢO VY', '11A2', 'Nữ', '28/11/2010', 'AN-DONG', '25078@ttgdtxcva.edu.vn', '25078', '84483671e26c9f835b9b7fb577de4a399ae7e35d7c191a4c54712cba59f5c4d7');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25079', '11000077', 'NGUYỄN NGỌC THANH VY', '11A2', 'Nữ', '26/07/2010', 'AN-DONG', '25079@ttgdtxcva.edu.vn', '25079', 'efa5bd8ab589d0135041047ea47a743431017fc043827a653e6981c2f04b9aa8');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25082', '11000078', 'NGUYỄN NGỌC NHƯ Ý', '11A2', 'Nữ', '28/05/2009', 'AN-DONG', '25082@ttgdtxcva.edu.vn', '25082', '044404645a70cd21113f8829ce3091fbb9f76926e82b918b3eedef59bd742a0e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25081', '11000079', 'ĐỖ HOÀNG YẾN', '11A2', 'Nữ', '15/11/2010', 'AN-DONG', '25081@ttgdtxcva.edu.vn', '25081', '3aa16cbbfa038f058648e0bf481a0a749f2665235f3825d1004bd77eea4896b1');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25083', '11000080', 'NGUYỄN KHÁNH CHÂU', '11A3', 'Nữ', '06/07/2010', 'AN-DONG', '25083@ttgdtxcva.edu.vn', '25083', '0b495d26c9601d87ec7b2cd8b5e7b2e57bf8257f46862c47996ca5e2b9bf9ff5');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25084', '11000081', 'TRIỆU MỸ CHI', '11A3', 'Nữ', '20/04/2010', 'AN-DONG', '25084@ttgdtxcva.edu.vn', '25084', 'fa2bb44727756077d0336af0a405e40cb5c847a1dfe74faa42d632b435fde2f5');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25085', '11000082', 'NGUYỄN TUẤN DŨNG', '11A3', 'Nam', '15/08/2010', 'AN-DONG', '25085@ttgdtxcva.edu.vn', '25085', '6117d2743abc333a0fd3f2cab69a5d0a05d733bee38d3582ce6c00e7349af797');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25086', '11000083', 'NGUYỄN KHẮC TRÍ ĐẠT', '11A3', 'Nam', '01/08/2010', 'AN-DONG', '25086@ttgdtxcva.edu.vn', '25086', '5069130eb2af92ac76adcde79dc3800a45d7fee9b33e2faea29b4088da2e3f23');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25087', '11000084', 'LÊ CẨM HÀO', '11A3', 'Nam', '26/06/2010', 'AN-DONG', '25087@ttgdtxcva.edu.vn', '25087', '35e41b45a7d08c9fa24367509898e6697ef239e1d059784d346dd1faa50df08b');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25088', '11000085', 'TRẦN THỊ NGỌC HÂN', '11A3', 'Nữ', '19/01/2010', 'AN-DONG', '25088@ttgdtxcva.edu.vn', '25088', 'fb695c67d38c77f877dde9d02c85c1152d61c5f4e2e94aab19df0d0804377c70');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25090', '11000086', 'LÊ KIM HUỆ', '11A3', 'Nữ', '29/05/2010', 'AN-DONG', '25090@ttgdtxcva.edu.vn', '25090', '509a64b1a223b8d98a2c320bb64b88283a21d9905380f495be71d949f41d507f');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25091', '11000087', 'NGUYỄN DUY BẢO HUY', '11A3', 'Nam', '14/05/2010', 'AN-DONG', '25091@ttgdtxcva.edu.vn', '25091', 'b8e560e145ad3a337081ca882367b975376733039eb81a183f2030389f00a1b8');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25092', '11000088', 'PHAN NGUYỄN TIẾN HƯNG', '11A3', 'Nam', '22/02/2010', 'AN-DONG', '25092@ttgdtxcva.edu.vn', '25092', 'ab1d4f64487f503db1b9eb4ed192007245fdcb9b90ed632af9d8e5b8fb9819da');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25093', '11000089', 'HỒ PHÚC KHANG', '11A3', 'Nam', '07/04/2010', 'AN-DONG', '25093@ttgdtxcva.edu.vn', '25093', 'bd044ae3d9f23e00c4fe741280a8d5e70bbf0489959285dc77509517609e9015');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25094', '11000090', 'HUỲNH TRỌNG KHANG', '11A3', 'Nam', '07/10/2010', 'AN-DONG', '25094@ttgdtxcva.edu.vn', '25094', 'd787ee4a9ca72aa5dcf75981673ded6b682946df2ead6d480b376d8ce7f69bf1');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25096', '11000091', 'LẠI VÕ MỸ LINH', '11A3', 'Nữ', '13/12/2010', 'AN-DONG', '25096@ttgdtxcva.edu.vn', '25096', '5adb097efd284e081309bbf63932654e81aaa325c9aeff55f7abaa976b5d9c64');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25097', '11000092', 'LÊ NGUYỄN TRANG LINH', '11A3', 'Nữ', '10/12/2010', 'AN-DONG', '25097@ttgdtxcva.edu.vn', '25097', '7f8e826a782798e37e678779ac5c358e3515d2b6d2fa3bfd79f9208432d439ae');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25098', '11000093', 'TRẦN NGỌC TRÚC LY', '11A3', 'Nữ', '09/04/2010', 'AN-DONG', '25098@ttgdtxcva.edu.vn', '25098', '38758f14cc59bf641d61683f20e205609a38053b67155f9d560592666a792caa');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25099', '11000094', 'QUAN ÂN TÔ MẪN', '11A3', 'Nữ', '05/05/2010', 'AN-DONG', '25099@ttgdtxcva.edu.vn', '25099', '41310846ac6282770fcbef79d17f2288b48e179cd0aec26d93188948bf1c9440');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25100', '11000095', 'TĂNG GIA MẪN', '11A3', 'Nữ', '18/11/2010', 'AN-DONG', '25100@ttgdtxcva.edu.vn', '25100', 'c0a071f03cca1e7157d9fe8b609d5bc57f61f2dd09314c14d57e8fd251945d18');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25101', '11000096', 'HUỲNH HẢI MINH', '11A3', 'Nam', '06/08/2010', 'AN-DONG', '25101@ttgdtxcva.edu.vn', '25101', '3748daded6c2795341b5c0a25b5fe992cbfcd9a630a408ea4ba96499bf6e1204');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25102', '11000097', 'DƯƠNG THỊ TRÀ MY', '11A3', 'Nữ', '04/12/2009', 'AN-DONG', '25102@ttgdtxcva.edu.vn', '25102', 'a29693ca0e5d2b5974ff7874846fa3e0c4ac6439f8eedefa9369d8725a9a01ad');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25104', '11000098', 'LÊ MINH HIẾU NGHĨA', '11A3', 'Nam', '27/08/2010', 'AN-DONG', '25104@ttgdtxcva.edu.vn', '25104', '9f8c88888791248587755063ba8c997c1f8c181d07206a6054834510cb2e7500');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25105', '11000099', 'NGÂN HOÀNG NHƯ NGỌC', '11A3', 'Nữ', '28/11/2010', 'AN-DONG', '25105@ttgdtxcva.edu.vn', '25105', '84483671e26c9f835b9b7fb577de4a399ae7e35d7c191a4c54712cba59f5c4d7');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25106', '11000100', 'NGUYỄN HỒ BẢO NGỌC', '11A3', 'Nữ', '17/03/2010', 'AN-DONG', '25106@ttgdtxcva.edu.vn', '25106', '49b80c03c15ea158829e99dd589004ca088f89fffa08c04d13584b691a3ad0bd');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25107', '11000101', 'PHAN THIỆN NHÂN', '11A3', 'Nam', '21/12/2009', 'AN-DONG', '25107@ttgdtxcva.edu.vn', '25107', 'd389b663e2e4e43a4f0c35356df8b5833e06d4f73353012b27142d9e2556b0ba');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25108', '11000102', 'ĐẶNG CƯỜNG PHÁT', '11A3', 'Nam', '27/11/2010', 'AN-DONG', '25108@ttgdtxcva.edu.vn', '25108', 'f631d74dcc5f50ccd67179cf911ed55b82f50419e83940615916a772a17c3c22');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25109', '11000103', 'TẦN VĨ PHONG', '11A3', 'Nam', '30/07/2010', 'AN-DONG', '25109@ttgdtxcva.edu.vn', '25109', '4f380aba4d0a92ae008f0a68362781a08b9f0efd8ca1c61b4c8c3ac413fc6eec');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25110', '11000104', 'ĐINH VÕ HOÀNG PHÚC', '11A3', 'Nam', '09/07/2010', 'AN-DONG', '25110@ttgdtxcva.edu.vn', '25110', '17ce76ade1bec22904ba615e926778b24ed5513915d4f3d3bf1bcae33718b02d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25111', '11000105', 'TRỊNH VĨ PHÚC', '11A3', 'Nam', '24/02/2010', 'AN-DONG', '25111@ttgdtxcva.edu.vn', '25111', '9d9fb7fc9f673a8d7062ee36fbc44b7f7021e929f7d3cd171f5efdb4205ff6fd');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25112', '11000106', 'PHÙNG XUÂN QUỐC', '11A3', 'Nam', '15/03/2009', 'AN-DONG', '25112@ttgdtxcva.edu.vn', '25112', 'c4e43cff82e7dc3f3b93d812b706d1c85dcdb31c4ed546a42d4bbb2c6a898d6a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25217', '11000107', 'PHAN PHÚ QUÝ', '11A3', 'Nam', '19/04/2010', 'AN-DONG', '25217@ttgdtxcva.edu.vn', '25217', 'f8fbadae79527c256600c2a8e6dbd9617a79b0450ab68f34eefb6d6d6b82f2a4');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25113', '11000108', 'NGUYỄN NGỌC NHƯ QUỲNH', '11A3', 'Nữ', '28/11/2010', 'AN-DONG', '25113@ttgdtxcva.edu.vn', '25113', '84483671e26c9f835b9b7fb577de4a399ae7e35d7c191a4c54712cba59f5c4d7');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25114', '11000109', 'CHẾ THANH SƠN', '11A3', 'Nam', '22/07/2010', 'AN-DONG', '25114@ttgdtxcva.edu.vn', '25114', '813c47977c757f9e3a7db87093b0c0766e55d0ab45b3b2184fa75bdcf244afcc');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25115', '11000110', 'TĂNG TRẦN QUẢNG THĂNG', '11A3', 'Nam', '12/05/2010', 'AN-DONG', '25115@ttgdtxcva.edu.vn', '25115', '287059fbf17fe79b5acc281eeca76615aa059a5230a2b8ca62830b2fcbeb82b7');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25116', '11000111', 'NGUYỄN THỊ KIỀU THI', '11A3', 'Nữ', '21/09/2010', 'AN-DONG', '25116@ttgdtxcva.edu.vn', '25116', 'daca0c95b6c91e1c6be031a3ce44d88927a4227d83f1168889dd5a7d16764bb1');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25117', '11000112', 'NGHIÊM Ý THUẬN', '11A3', 'Nam', '27/07/2010', 'AN-DONG', '25117@ttgdtxcva.edu.vn', '25117', '0aad569113cf860aeff8a1c57a050863743e7505723e175640f47cbf18f57963');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25118', '11000113', 'TÔ ANH THƯ', '11A3', 'Nữ', '12/10/2010', 'AN-DONG', '25118@ttgdtxcva.edu.vn', '25118', '56480a12c2cf916523b8aede8792196548f501ef1c430d299a43361eff02076d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25119', '11000114', 'TRẦN MINH TRÍ', '11A3', 'Nam', '23/03/2010', 'AN-DONG', '25119@ttgdtxcva.edu.vn', '25119', '6beaff0d1a9e152fa59e72ace644e72a1905228fd20d36f430c0bad1d0d04155');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25120', '11000115', 'LÊ QUANG TRƯỜNG', '11A3', 'Nam', '14/04/2010', 'AN-DONG', '25120@ttgdtxcva.edu.vn', '25120', '439a599e1bf9cbde07a6a918839b11e1876653d4e1318e1be1e3907e7f94db2c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25121', '11000116', 'VÕ NGUYÊN CÁT TƯỜNG', '11A3', 'Nữ', '03/06/2010', 'AN-DONG', '25121@ttgdtxcva.edu.vn', '25121', '040598a2d990ba4866560be05849372955f260c0f1a98a834d9506885bcf7108');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25122', '11000117', 'LƯƠNG THÚY VÂN', '11A3', 'Nữ', '02/02/2010', 'AN-DONG', '25122@ttgdtxcva.edu.vn', '25122', 'b88e57eb8da7c85369068a16eceea1041af479975f1ed051fa6af704cd7793eb');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25123', '11000118', 'LÊ HOÀNG PHƯƠNG VY', '11A3', 'Nữ', '28/01/2010', 'AN-DONG', '25123@ttgdtxcva.edu.vn', '25123', '5a85661182e1459ac1c4cf36692329f0ba2c3b5ddcb90b37d5cfe7fb07ca6a27');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25124', '11000119', 'MÃ NGỌC VY', '11A3', 'Nữ', '23/09/2010', 'AN-DONG', '25124@ttgdtxcva.edu.vn', '25124', 'df1594157c3d7cbaa4a1d2f752022c9e7a2a1b3c2d812a9027b81ad811d22f3c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25125', '11000120', 'NGUYỄN TRẦN THÚY VY', '11A3', 'Nữ', '18/10/2010', 'AN-DONG', '25125@ttgdtxcva.edu.vn', '25125', '02e4be40d6c6d222dbb64bda34b8f481af334a28236c7b0ff31015bc164afaef');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('11000121', '11000121', 'PHẠM HUỲNH ANH', '11A4', 'Nữ', '08/12/2010', 'AN-DONG', NULL, NULL, '1bcc05b7fc829f4e180f153263be8a833296bb9c71ef4cd05f1492610187dfa9');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25127', '11000122', 'TRẦN NGỌC TRÂM ANH', '11A4', 'Nữ', '10/10/2006', 'AN-DONG', '25127@ttgdtxcva.edu.vn', '25127', '750498241de894ba8659674ba5ddc953fc47aaa5897301d71a5124273414c808');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25128', '11000123', 'PHƯƠNG THỊ NGỌC ÁNH', '11A4', 'Nữ', '21/05/2010', 'AN-DONG', '25128@ttgdtxcva.edu.vn', '25128', '0a2dd738a28414910a3afc8a50a7fbaea0f4bab64573df9f1977bdb9aece26da');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25129', '11000124', 'HUỲNH ĐẶNG THIÊN ÂN', '11A4', 'Nữ', '26/07/2010', 'AN-DONG', '25129@ttgdtxcva.edu.vn', '25129', 'efa5bd8ab589d0135041047ea47a743431017fc043827a653e6981c2f04b9aa8');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25130', '11000125', 'DƯƠNG GIA BẢO', '11A4', 'Nam', '07/09/2009', 'AN-DONG', '25130@ttgdtxcva.edu.vn', '25130', '430fc87330f3913730a7824d68e1cf5d298bc33dafff739139f981d7150ff74d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25132', '11000126', 'LÊ HOÀNG QUỐC BẢO', '11A4', 'Nam', '01/02/2009', 'AN-DONG', '25132@ttgdtxcva.edu.vn', '25132', '5a126f31728cf05bcebc3885c6b506797da9c0292ea6e4527293466e026bd9c8');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25133', '11000127', 'PHẠM MAI GIA BẢO', '11A4', 'Nam', '23/03/2010', 'AN-DONG', '25133@ttgdtxcva.edu.vn', '25133', '6beaff0d1a9e152fa59e72ace644e72a1905228fd20d36f430c0bad1d0d04155');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25135', '11000128', 'NGUYỄN THÀNH ĐẠT', '11A4', 'Nam', '26/03/2010', 'AN-DONG', '25135@ttgdtxcva.edu.vn', '25135', '2af6635703045db4a68a474fd7e152f3b177fc14ed2ed01b5df11c3e79cfbf4c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25136', '11000129', 'NGUYỄN HOÀI ĐỨC', '11A4', 'Nam', '21/03/2010', 'AN-DONG', '25136@ttgdtxcva.edu.vn', '25136', '9e621b5cffa7f5a5d970ad1fa63289938433c325b92a7a29452e0cba40fade6b');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25137', '11000130', 'NGUYỄN NGỌC QUỲNH GIAO', '11A4', 'Nữ', '26/07/2010', 'AN-DONG', '25137@ttgdtxcva.edu.vn', '25137', 'efa5bd8ab589d0135041047ea47a743431017fc043827a653e6981c2f04b9aa8');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25138', '11000131', 'HUỲNH PHÚ HẢI', '11A4', 'Nam', '26/12/2010', 'AN-DONG', '25138@ttgdtxcva.edu.vn', '25138', '89e8b836b6093c08a1c0d7175aa3bd44003d211a0c406ab8421b765b36377ef1');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25139', '11000132', 'NGUYỄN HUỲNH KIM HẰNG', '11A4', 'Nữ', '16/07/2010', 'AN-DONG', '25139@ttgdtxcva.edu.vn', '25139', '60700638192efa8b3cffd41546bc9e6821cd3912bd3b3f0d12bde8b7e6eaef82');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25141', '11000133', 'PHAN NGỌC HÂN', '11A4', 'Nữ', '30/06/2010', 'AN-DONG', '25141@ttgdtxcva.edu.vn', '25141', '3a2105aa3a51ebb6396500357dce5637d9917558b0b6f57e4a4f50fb9c807fd1');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25142', '11000134', 'TRẦN GIA HÂN', '11A4', 'Nữ', '04/08/2010', 'AN-DONG', '25142@ttgdtxcva.edu.vn', '25142', '455aa8f937a917687f3e3ddf383cc956c8c38694f0c7b752ff61f83add02a295');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25143', '11000135', 'VŨ NGỌC HÂN', '11A4', 'Nữ', '01/11/2010', 'AN-DONG', '25143@ttgdtxcva.edu.vn', '25143', '368681c1f9ece9237760ede0cb96dabe157dd94794d7fb2b3f66738aee24008c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25144', '11000136', 'HÀ TẤN HIỆP', '11A4', 'Nam', '15/12/2010', 'AN-DONG', '25144@ttgdtxcva.edu.vn', '25144', '78b6deee57d613a0e565fac1786fe2e232eb173f12eeb79adc40bd48d8d36f24');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25145', '11000137', 'NGUYỄN THỊ MINH HIẾU', '11A4', 'Nữ', '11/02/2010', 'AN-DONG', '25145@ttgdtxcva.edu.vn', '25145', '84729ce406027cf50851bf4a9d5a96c5fa1c0cd977039581f534e0935bcbe133');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25146', '11000138', 'NGUYỄN TRUNG HIẾU', '11A4', 'Nam', '22/06/2009', 'AN-DONG', '25146@ttgdtxcva.edu.vn', '25146', 'a849ab6b0946f03c69b8ab039f8ac4320df1e799963630110fa940d365a14d4e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25147', '11000139', 'NGUYỄN NGỌC HUY', '11A4', 'Nam', '10/06/2010', 'AN-DONG', '25147@ttgdtxcva.edu.vn', '25147', '1507ef7ab75da7cd3803853d93c895d05b8bd5a89e313dadded8bc59cbe0c737');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25148', '11000140', 'TRẦN ĐĂNG KHOA', '11A4', 'Nam', '20/07/2010', 'AN-DONG', '25148@ttgdtxcva.edu.vn', '25148', '165e6ebca90c6ec7c82afe09a61a29b87daf4af37c0ba683f1285e74fa989ab4');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25149', '11000141', 'NGUYỄN THỊ BÍCH NGÂN', '11A4', 'Nữ', '02/06/2010', 'AN-DONG', '25149@ttgdtxcva.edu.vn', '25149', '19775f53087f6a13d5b9e08cc6cd45e4a975d5c579f0961a9592ac6116dc1f6e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25150', '11000142', 'TRƯƠNG TRỌNG NGHĨA', '11A4', 'Nam', '27/03/2009', 'AN-DONG', '25150@ttgdtxcva.edu.vn', '25150', '1df1d3cf215ac47f86296be0f9148d19c33afd688dc4dda5f81eaefabb1e2d02');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25151', '11000143', 'TRẦN THANH NGỌC', '11A4', 'Nữ', '10/04/2010', 'AN-DONG', '25151@ttgdtxcva.edu.vn', '25151', 'f54a36ea691d74ad98ddece7da617722a9d575b2de59c439cee8bc4935675183');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25152', '11000144', 'VÒNG CẨM NGUYÊN', '11A4', 'Nam', '07/06/2010', 'AN-DONG', '25152@ttgdtxcva.edu.vn', '25152', '73663c68ee71234ae66df744f4cc21d574f7d2f9d9405c3cfae3110731d0b1ec');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25153', '11000145', 'NGUYỄN NGỌC KHẢ NHI', '11A4', 'Nữ', '20/08/2010', 'AN-DONG', '25153@ttgdtxcva.edu.vn', '25153', '4c12d9215373367593e6095c35af1437fb6691393ec28aa2107e6ae0d96ea07e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25154', '11000146', 'NGUYỄN PHƯƠNG NHI', '11A4', 'Nữ', '21/02/2010', 'AN-DONG', '25154@ttgdtxcva.edu.vn', '25154', '61a58574f57a4e7837592b6b595d6388fa5b40e7e0a92f5e1c1f2036397497c9');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25155', '11000147', 'HỒ THÁI PHONG', '11A4', 'Nam', '08/07/2010', 'AN-DONG', '25155@ttgdtxcva.edu.vn', '25155', 'ddbaed018008b14423edd50a80b7d6f340fe7fbc1af0c73176b61531f2fa1c20');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25156', '11000148', 'LÊ VĂN PHÔNG', '11A4', 'Nam', '22/05/2010', 'AN-DONG', '25156@ttgdtxcva.edu.vn', '25156', '9e4cf45aa8789732b0255b023ae4d10ebfe1c6066389eb6964db3fb5cd787ae7');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25157', '11000149', 'NGUYỄN VĂN HOÀN PHƯỚC', '11A4', 'Nam', '21/07/2009', 'AN-DONG', '25157@ttgdtxcva.edu.vn', '25157', '97b6deea5dce4cd874bc41a314e639d4dfd471feb7b7bb3f5a7b97298c086b72');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25158', '11000150', 'TRƯƠNG THANH PHƯƠNG', '11A4', 'Nữ', '07/12/2010', 'AN-DONG', '25158@ttgdtxcva.edu.vn', '25158', 'f78ede5076e74155dc959383b4a8117acf87b72dcb9d29db41ed1041adb8f78b');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25159', '11000151', 'VŨ THANH QUÝ', '11A4', 'Nam', '13/04/2010', 'AN-DONG', '25159@ttgdtxcva.edu.vn', '25159', '93f7cf089ded35f34492ef10dfc32ec5ded12022dd834d5127ac57ee4a1ad631');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25161', '11000152', 'PHẠM CHÍ THIỆN', '11A4', 'Nam', '01/11/2010', 'AN-DONG', '25161@ttgdtxcva.edu.vn', '25161', '368681c1f9ece9237760ede0cb96dabe157dd94794d7fb2b3f66738aee24008c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25162', '11000153', 'ĐOÀN HUỲNH TIẾN THỊNH', '11A4', 'Nam', '16/04/2010', 'AN-DONG', '25162@ttgdtxcva.edu.vn', '25162', 'c2715f41b5857c5a88f183012cbfe208b9303f2d89352304b7b370e76c3ca8d0');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25163', '11000154', 'HUỲNH ĐỨC THỊNH', '11A4', 'Nam', '19/08/2008', 'AN-DONG', '25163@ttgdtxcva.edu.vn', '25163', '637138e18bb66329e450e6f881eaff65fb6877369f55286aca5ffd079193018a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25164', '11000155', 'QUÁCH PHÙNG NHƯ THÙY', '11A4', 'Nữ', '14/07/2010', 'AN-DONG', '25164@ttgdtxcva.edu.vn', '25164', '79ac9acd84fb49dddce40f308cf1896bb2258ad3ed9ca418d56b98c4da93baca');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25165', '11000156', 'NGUYỄN PHƯƠNG TOÀN', '11A4', 'Nam', '16/03/2010', 'AN-DONG', '25165@ttgdtxcva.edu.vn', '25165', '9415abfaf4c798451cc49dc6de39d963113e64dcc6bb213466d7b1ef6eaac7be');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25166', '11000157', 'LÊ NGUYỄN HOÀNG TRINH', '11A4', 'Nữ', '30/10/2010', 'AN-DONG', '25166@ttgdtxcva.edu.vn', '25166', '8e8dd7937a06fa6a2828b69b9c3e25e4cc63aed8384b2294b7cde887ecb3852e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25167', '11000158', 'TRẦN GIA TUẤN', '11A4', 'Nam', '24/06/2010', 'AN-DONG', '25167@ttgdtxcva.edu.vn', '25167', '3b09bc34985ac9172e23ce8fe347a6b4eda602da19cd930ffcca40e9d27a6926');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25168', '11000159', 'HUỲNH MAI THANH VÂN', '11A4', 'Nữ', '14/12/2010', 'AN-DONG', '25168@ttgdtxcva.edu.vn', '25168', '7223f4ed46aadf5110111a24e067d6ce5f35f2e6d146375c08ff06e20c6ab553');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25169', '11000160', 'NGUYỄN PHI YẾN', '11A4', 'Nữ', '16/07/2010', 'AN-DONG', '25169@ttgdtxcva.edu.vn', '25169', '60700638192efa8b3cffd41546bc9e6821cd3912bd3b3f0d12bde8b7e6eaef82');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25170', '11000161', 'TRANG THIÊN BẢO', '11A5', 'Nam', '06/11/2010', 'AN-DONG', '25170@ttgdtxcva.edu.vn', '25170', '745b09bf74dcaadf87692cbc2353ea43076c3a1c0bdd9a1e90ac47064db645e1');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25171', '11000162', 'TRẦN PHỐI DUNG', '11A5', 'Nữ', '22/01/2009', 'AN-DONG', '25171@ttgdtxcva.edu.vn', '25171', 'ab7e9c59a8e941b8ca562c7867e5e198a45900b53a3dcb26f99f4506fc80c844');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25173', '11000163', 'NGÔ HUỲNH GIA HÂN', '11A5', 'Nữ', '12/02/2010', 'AN-DONG', '25173@ttgdtxcva.edu.vn', '25173', 'e4490cb61d10e1e8d8cb8a2dd12b30019a8378b7999f1a5667b9a3ccd8ee1d0e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25174', '11000164', 'HUỲNH TRẦN HIẾU HIỀN', '11A5', 'Nữ', '01/11/2010', 'AN-DONG', '25174@ttgdtxcva.edu.vn', '25174', '368681c1f9ece9237760ede0cb96dabe157dd94794d7fb2b3f66738aee24008c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25175', '11000165', 'BÙI NGỌC HIẾU', '11A5', 'Nam', '18/12/2010', 'AN-DONG', '25175@ttgdtxcva.edu.vn', '25175', '3e4b25dd2d22485f0042fa87ed0cd35a9d5c6dd514b78a1f23298eb6452944cf');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25176', '11000166', 'TÔ MINH HOÀNG', '11A5', 'Nam', '11/05/2010', 'AN-DONG', '25176@ttgdtxcva.edu.vn', '25176', 'e0f23c81afbefea8870e003928567261551445e90ae911b3359d911d77ff4092');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25177', '11000167', 'NGUYỄN MINH HUY', '11A5', 'Nam', '23/03/2010', 'AN-DONG', '25177@ttgdtxcva.edu.vn', '25177', '6beaff0d1a9e152fa59e72ace644e72a1905228fd20d36f430c0bad1d0d04155');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25179', '11000168', 'NGUYỄN TUẤN KHANG', '11A5', 'Nam', '02/09/2010', 'AN-DONG', '25179@ttgdtxcva.edu.vn', '25179', '0ad3833a70eace2b8782bb3860637af3f18d6f40c9336e136b9b993ef369f5d7');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25178', '11000169', 'NGUYỄN TUẤN KHANG', '11A5', 'Nam', '08/07/2010', 'AN-DONG', '25178@ttgdtxcva.edu.vn', '25178', 'ddbaed018008b14423edd50a80b7d6f340fe7fbc1af0c73176b61531f2fa1c20');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25180', '11000170', 'CHÂU TIỂU KIỀU', '11A5', 'Nữ', '12/01/2010', 'AN-DONG', '25180@ttgdtxcva.edu.vn', '25180', '91039a352629d935d8aba4f9455213b665cb5e1144dae14468e13b3b35bddc12');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25181', '11000171', 'NGUYỄN THIÊN KIM', '11A5', 'Nữ', '29/07/2010', 'AN-DONG', '25181@ttgdtxcva.edu.vn', '25181', '7fa74cd4134b4bf0c70095e21643fe74ceb3281c60c38a443ecb2fc6f687dd32');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25182', '11000172', 'LÝ THƯ KỲ', '11A5', 'Nữ', '01/11/2010', 'AN-DONG', '25182@ttgdtxcva.edu.vn', '25182', '368681c1f9ece9237760ede0cb96dabe157dd94794d7fb2b3f66738aee24008c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25183', '11000173', 'NGUYỄN NGỌC GIA LINH', '11A5', 'Nữ', '11/12/2010', 'AN-DONG', '25183@ttgdtxcva.edu.vn', '25183', '08b34f24097af25dac8d893dc893647641b2f1099389703f7988d9fecec85eb7');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25184', '11000174', 'LƯƠNG HỮU MINH', '11A5', 'Nam', '20/04/2010', 'AN-DONG', '25184@ttgdtxcva.edu.vn', '25184', 'fa2bb44727756077d0336af0a405e40cb5c847a1dfe74faa42d632b435fde2f5');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25185', '11000175', 'NGUYỄN ĐỖ QUỐC MINH', '11A5', 'Nam', '03/02/2010', 'AN-DONG', '25185@ttgdtxcva.edu.vn', '25185', '5bc1131eaf5988672e3f4a9c0ee5640549fc07c7f4f05359389b028ede9cf3b2');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25186', '11000176', 'PHẠM QUỐC MINH', '11A5', 'Nam', '16/12/2010', 'AN-DONG', '25186@ttgdtxcva.edu.vn', '25186', '0018d0bd9956d496c6a2f0a0d44bc3f4499e6d0624296237f28871a86848f24a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25187', '11000177', 'PHẠM THÚY NGA', '11A5', 'Nữ', '20/03/2010', 'AN-DONG', '25187@ttgdtxcva.edu.vn', '25187', 'd83bb945cfe2cc6beb7ad5ceb6dfeefba435fb3df18a3349fbe227cd071a863c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25188', '11000178', 'VÕ THỊ THANH NGÂN', '11A5', 'Nữ', '04/09/2010', 'AN-DONG', '25188@ttgdtxcva.edu.vn', '25188', 'beae6da149d4aad8cca89a031dac2010bfddda19dc64a0262cea6afaaf65b5df');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25189', '11000179', 'HỒ NGUYỄN BẢO NGHI', '11A5', 'Nữ', '11/12/2010', 'AN-DONG', '25189@ttgdtxcva.edu.vn', '25189', '08b34f24097af25dac8d893dc893647641b2f1099389703f7988d9fecec85eb7');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25190', '11000180', 'NGUYỄN HOÀNG BẢO NGỌC', '11A5', 'Nữ', '24/12/2010', 'AN-DONG', '25190@ttgdtxcva.edu.vn', '25190', '973a43ca825c8ee3b559ba88d0b5bf41b2687d123d8954e60a72631496e0937d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25191', '11000181', 'NGUYỄN THỊ ÁNH NGUYÊN', '11A5', 'Nữ', '30/10/2010', 'AN-DONG', '25191@ttgdtxcva.edu.vn', '25191', '8e8dd7937a06fa6a2828b69b9c3e25e4cc63aed8384b2294b7cde887ecb3852e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25192', '11000182', 'TRẦN ĐÌNH NGUYÊN', '11A5', 'Nam', '10/12/2010', 'AN-DONG', '25192@ttgdtxcva.edu.vn', '25192', '7f8e826a782798e37e678779ac5c358e3515d2b6d2fa3bfd79f9208432d439ae');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25193', '11000183', 'HÀ TẤN PHÁT', '11A5', 'Nam', '13/11/2010', 'AN-DONG', '25193@ttgdtxcva.edu.vn', '25193', '4c3bc17479ecd69b4b3b2c17fe7dfe73c8cc7955f2228d2ac4360a310089e75d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25194', '11000184', 'NGUYỄN HUỲNH GIA PHÚC', '11A5', 'Nam', '22/03/2010', 'AN-DONG', '25194@ttgdtxcva.edu.vn', '25194', 'e1584d4fdccc7f6cdff47ea7df4128c3b71580c51f12a1c46c7e8c90708a6db3');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25195', '11000185', 'NGUYỄN LÊ NHƯ QUỲNH', '11A5', 'Nữ', '19/07/2010', 'AN-DONG', '25195@ttgdtxcva.edu.vn', '25195', 'c7f241db160e7860e1258638ec94dcc5fa0efb9d2271bfaa6f9b426a86cfbf24');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25196', '11000186', 'HUỲNH BỘI SAN', '11A5', 'Nữ', '22/11/2010', 'AN-DONG', '25196@ttgdtxcva.edu.vn', '25196', 'b7be690c12e1bdbcad021ba8971628e3c19a5d50a7518109cf65c351d3ee35bf');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25198', '11000187', 'LAI VĂN TÂM', '11A5', 'Nam', '07/05/2010', 'AN-DONG', '25198@ttgdtxcva.edu.vn', '25198', '64f812967d199dcdb623c2c9cef915b868080cb3eb5ecd1df40e59ae26b81d9a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25199', '11000188', 'TRẦN VÕ THANH THANH', '11A5', 'Nữ', '14/08/2010', 'AN-DONG', '25199@ttgdtxcva.edu.vn', '25199', '62c3440ae8620f99c01791d4e89b44fe8aec1432edd6e4ac3de2ca62902e9810');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25200', '11000189', 'DIỆP PHƯƠNG THẢO', '11A5', 'Nữ', '15/02/2010', 'AN-DONG', '25200@ttgdtxcva.edu.vn', '25200', '5b1dd3dcb1594733975512e8d7e81b8dfc499f62924e39ef08d4c192bab5a4b1');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25201', '11000190', 'SẦM QUỐC THẢO', '11A5', 'Nam', '17/09/2010', 'AN-DONG', '25201@ttgdtxcva.edu.vn', '25201', '499e3d53090309a06d796fa4c5ba1d102f3c0c507b77f45fd737fe3d5d4d3d16');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25202', '11000191', 'PHẠM NGÔ HỒNG THẮM', '11A5', 'Nữ', '08/04/2010', 'AN-DONG', '25202@ttgdtxcva.edu.vn', '25202', 'f3c5a2bacfd774665dd0bfe935b81f5db1f911b0af16b2569265cf688830dfc0');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25204', '11000192', 'PHAN LÊ BẢO TRÂN', '11A5', 'Nữ', '06/05/2010', 'AN-DONG', '25204@ttgdtxcva.edu.vn', '25204', '4eed6723eb02ac6989f76c204783c20a3175c2811bbcdb52544f906467438b12');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25205', '11000193', 'LÊ ĐÌNH TRÍ', '11A5', 'Nam', '24/10/2010', 'AN-DONG', '25205@ttgdtxcva.edu.vn', '25205', 'ab8b0944d819ce92224169d48e076168d899f2afc9a9ced77d13659eca9f20a1');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25206', '11000194', 'LÝ MINH TRƯỜNG', '11A5', 'Nam', '20/02/2010', 'AN-DONG', '25206@ttgdtxcva.edu.vn', '25206', '9c7e79d6825c9d21e776593634f92f3eb3f6618138e37f9ba0750cfcb22a9460');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25208', '11000195', 'TRẦN NGỌC TƯỜNG VY', '11A5', 'Nữ', '12/09/2010', 'AN-DONG', '25208@ttgdtxcva.edu.vn', '25208', '53987725a173a8e12613b33a0c6a3205c965e05aaed85fac98242f892f56dbb0');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25209', '11000196', 'TRẦN TRÚC VY', '11A5', 'Nữ', '23/11/2009', 'AN-DONG', '25209@ttgdtxcva.edu.vn', '25209', 'c38ba515146bf76a1e7ca075e76737dc35fbf7e6c69a2d670be394832b9c2455');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25210', '11000197', 'VÕ TƯỜNG VY', '11A5', 'Nữ', '11/04/2010', 'AN-DONG', '25210@ttgdtxcva.edu.vn', '25210', 'a73a62469ec57fa57ec5f0dd7fa4b22bf1c82f10699ed11a7d1c298b2966c5db');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25211', '11000198', 'NGUYỄN THỊ NGỌC XUÂN', '11A5', 'Nữ', '07/05/2010', 'AN-DONG', '25211@ttgdtxcva.edu.vn', '25211', '64f812967d199dcdb623c2c9cef915b868080cb3eb5ecd1df40e59ae26b81d9a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25212', '11000199', 'LÊ LÂM NHƯ Ý', '11A5', 'Nữ', '15/06/2010', 'AN-DONG', '25212@ttgdtxcva.edu.vn', '25212', 'd2081648dfe6e72f2c1ea312ceea648900c741919068b38fc69ea37282bbdf43');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25213', '11000200', 'TRƯƠNG NHƯ Ý', '11A5', 'Nữ', '12/01/2010', 'AN-DONG', '25213@ttgdtxcva.edu.vn', '25213', '91039a352629d935d8aba4f9455213b665cb5e1144dae14468e13b3b35bddc12');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26566', 'A0000001', 'LƯU GIA ĐÀO', '10A', 'Nữ', '12/04/2009', 'CHO-LON', '26566@ttgdtxcva.edu.vn', '26566', '982b870d087b7f095991b86386024d232e91ca6b96a700813f7f4dd1ae25b0ad');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26567', 'A0000002', 'HUỲNH TUẤN ĐẠT', '10A', 'Nam', '28/10/2009', 'CHO-LON', '26567@ttgdtxcva.edu.vn', '26567', '2ffccc44c424a99e6ae1b2f10629a4bba503463aa0e89f1b45377c565a5fd014');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26568', 'A0000003', 'PHẠM NGUYỄN THÀNH ĐẠT', '10A', 'Nam', '15/04/2011', 'CHO-LON', '26568@ttgdtxcva.edu.vn', '26568', 'b0fbaf4ce1e8bf595f24f2bd3125fbfc23c7f433486501d4a72263aac786b5ce');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26569', 'A0000004', 'VÕ TRƯƠNG HOÀI ĐỨC', '10A', 'Nam', '01/01/2008', 'CHO-LON', '26569@ttgdtxcva.edu.vn', '26569', 'c6b5dc129ff14adf20d67d1fbcd2889037cccb577cf22ff2546f3b7b71860663');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26570', 'A0000005', 'HỒ NGỌC HÀ', '10A', 'Nữ', '23/02/2011', 'CHO-LON', '26570@ttgdtxcva.edu.vn', '26570', 'd1643ed568d063983746c945b7c94e11e7f57f19b1851decb01f24e3d71a0c4c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26571', 'A0000006', 'PHAN QUỐC HÀO', '10A', 'Nam', '04/10/2011', 'CHO-LON', '26571@ttgdtxcva.edu.vn', '26571', '2ef2950a5ec72ed776d54e009da4d08375e0ddf343177de714ab790642c8db73');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26572', 'A0000007', 'PHÙNG NGUYỄN MINH HÀO', '10A', 'Nam', '06/04/2010', 'CHO-LON', '26572@ttgdtxcva.edu.vn', '26572', '2c6928528f7e2196a902a0acab241b772ea6dc08e8907fba3bdea6d5ba2d899a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26573', 'A0000008', 'VĂN GIA HÂN', '10A', 'Nữ', '26/01/2009', 'CHO-LON', '26573@ttgdtxcva.edu.vn', '26573', '0d841bba3a669f29668312a2457d9ace8fe682147058db4aaac3020b7603d89a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26574', 'A0000009', 'LƯU PHỤNG HOA', '10A', 'Nữ', '03/03/1988', 'CHO-LON', '26574@ttgdtxcva.edu.vn', '26574', '0f1450c86bf453b099bfd7b718d1c63ec658643c766cfc70349b9d8e71361174');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26575', 'A0000010', 'LÂM QUỐC HUY', '10A', 'Nam', '18/06/2005', 'CHO-LON', '26575@ttgdtxcva.edu.vn', '26575', '7abe4805abd6d553376e010d54c0fafddfdc684ff8f74e21f41266248fb63b68');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26576', 'A0000011', 'NGUYỄN TẤN HƯNG', '10A', 'Nam', '23/01/2005', 'CHO-LON', '26576@ttgdtxcva.edu.vn', '26576', 'bb2d960eea9226120584ceae86cc24851f6dd26173c0798062856eba1ec141a3');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26577', 'A0000012', 'HUỲNH MỸ HƯƠNG', '10A', 'Nữ', '13/11/2004', 'CHO-LON', '26577@ttgdtxcva.edu.vn', '26577', 'cf8fa9278ccd172726203a67aebd39f6e18e92474cb474c5b2a856c80b5ad01a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26578', 'A0000013', 'LÊ HOÀNG KHANG', '10A', 'Nam', '27/10/2005', 'CHO-LON', '26578@ttgdtxcva.edu.vn', '26578', '73151843d02f1fee6f9ba8bc0e7eea7db75ce8d8a6c39e43db1c15b3dcf5835f');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26579', 'A0000014', 'PHAN HOÀI PHÚC KHANG', '10A', 'Nam', '31/10/2005', 'CHO-LON', '26579@ttgdtxcva.edu.vn', '26579', '2cdacdaf353623e07cb5c0f328202b335cbb04a2bda61494656375a24097817f');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26580', 'A0000015', 'VÕ NHẬT KHÁNH', '10A', 'Nam', '17/12/2010', 'CHO-LON', '26580@ttgdtxcva.edu.vn', '26580', '18fec40fba2dc7be509450b9fbabb250f315014002a7af45bbcdf108640d11d0');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26581', 'A0000016', 'LÝ NGUYỄN THIÊN KIM', '10A', 'Nữ', '25/08/2009', 'CHO-LON', '26581@ttgdtxcva.edu.vn', '26581', 'b93de63b263184827464317ebe87fbea8b22d6fb144bb286e29e7891e65f449e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26582', 'A0000017', 'TRẦN TẤN LỘC', '10A', 'Nam', '03/09/2010', 'CHO-LON', '26582@ttgdtxcva.edu.vn', '26582', 'c95b4214db984a9870962a98393f63c7b0d4b8e2e3809a3e133c123079515a24');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26583', 'A0000018', 'NGUYỄN TUẤN LỢI', '10A', 'Nam', '30/04/2010', 'CHO-LON', '26583@ttgdtxcva.edu.vn', '26583', '68790b1be397d6af082c05b60f9dd91faa156d29fe5b712cb2946983bb3ece30');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26584', 'A0000019', 'NGUYỄN NGỌC KIỀU DIỄM MY', '10A', 'Nữ', '25/06/2004', 'CHO-LON', '26584@ttgdtxcva.edu.vn', '26584', '21ffae4474450ebf51cd59b1dd26cce36d866874b20739e90dd465848280a079');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26585', 'A0000020', 'NGÔ NHẤT THỤC MỸ', '10A', 'Nữ', '21/07/2003', 'CHO-LON', '26585@ttgdtxcva.edu.vn', '26585', '5188a4b5e0e2cdfe99d03588e21f830d772d31b747862e6a69c2399b67808fd2');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26586', 'A0000021', 'PHAN THÀNH NAM', '10A', 'Nam', '29/07/2005', 'CHO-LON', '26586@ttgdtxcva.edu.vn', '26586', '3fd3cb9a942518379177273d4b86feb587627bd0f15fe51757b331c2cf937e71');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26587', 'A0000022', 'NGUYỄN BẢO NGỌC', '10A', 'Nữ', '21/10/2011', 'CHO-LON', '26587@ttgdtxcva.edu.vn', '26587', '9f2e211c3504096683f16facf83039ac1ff0a16222f3c04ab0991081272d7af3');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26588', 'A0000023', 'ĐỖ THỊ QUỲNH NHƯ', '10A', 'Nữ', '30/11/2011', 'CHO-LON', '26588@ttgdtxcva.edu.vn', '26588', '3577f8918584e818c5dbec14432ef099e90007717d1725465f7a831ab1ef9dfc');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26589', 'A0000024', 'CHÂU NHUẬN PHÁT', '10A', 'Nam', '19/07/2009', 'CHO-LON', '26589@ttgdtxcva.edu.vn', '26589', '0e612f903b7b7d038550047238535c330402b7c4738c596acaa3027c0fbc668d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26590', 'A0000025', 'TẠ THIỆU PHONG', '10A', 'Nam', '13/03/2007', 'CHO-LON', '26590@ttgdtxcva.edu.vn', '26590', '9ab630a9b298228042789df6e03b09d762d1670c02dcd510ca4dcf374890f783');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26591', 'A0000026', 'TRƯƠNG ÍCH PHÚ', '10A', 'Nam', '16/12/2001', 'CHO-LON', '26591@ttgdtxcva.edu.vn', '26591', '7900530c4185575df6bb921396daf93162b2a47db17a386d901aab0b0eeb4abc');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26592', 'A0000027', 'CHÂU HUỲNH NHƯ QUỲNH', '10A', 'Nữ', '27/10/2008', 'CHO-LON', '26592@ttgdtxcva.edu.vn', '26592', '343c4d9d1df7627b25f6243a39edfbc5bc5fee8b1bb08666fb0c929b896af47e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26593', 'A0000028', 'CHUNG ANH TÀI', '10A', 'Nam', '04/06/2011', 'CHO-LON', '26593@ttgdtxcva.edu.vn', '26593', 'bf17c46547e9887cb9e3e0fbc955e85a225a68e9e3e6466ed2c0b98f15c51071');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26594', 'A0000029', 'TÔ KIẾN THÀNH', '10A', 'Nam', '21/12/2011', 'CHO-LON', '26594@ttgdtxcva.edu.vn', '26594', '18714b61260be823fae54079ecf31d22869d71cf605ba3f09f12b337c06feaf2');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26595', 'A0000030', 'HÀ VĂN CÔNG THUẬN', '10A', 'Nam', '10/03/2011', 'CHO-LON', '26595@ttgdtxcva.edu.vn', '26595', 'f52290a81c98b0fd5486e8328ea1147f1559dd4ea296bb09b234b569d6d68f62');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26596', 'A0000031', 'NGUYỄN THỊ MINH THƯ', '10A', 'Nữ', '21/03/2011', 'CHO-LON', '26596@ttgdtxcva.edu.vn', '26596', '5e1da57f3382711caa087aa60dccd92d0cae26bd33efab743ee5c02ed529f152');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('A0000032', 'A0000032', 'PHẠM KIM THƯ', '10A', 'Nữ', '27/09/2010', 'CHO-LON', NULL, NULL, '4626f5d55b7a013aad15420950e41ce992afd91c4707b3f6f298b00f8b4399b1');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26597', 'A0000033', 'TRẦN NGỌC TRÂM', '10A', 'Nữ', '03/12/2003', 'CHO-LON', '26597@ttgdtxcva.edu.vn', '26597', 'c9cd84170b07f1d2557229eb1813e4ea607ea56d19f50fca04787398efe92f37');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('A0000034', 'A0000034', 'NGUYỄN QUỐC TRÍ', '10A', 'Nam', '18/12/2008', 'CHO-LON', NULL, NULL, '87d7a666c16346fcca8c7d67ef2bedc48a4664f9260fbf493021d9bd8179313d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26598', 'A0000035', 'LÊ MAI THANH TRÚC', '10A', 'Nữ', '29/10/2011', 'CHO-LON', '26598@ttgdtxcva.edu.vn', '26598', 'dbf1a048ed8156246cb5456189da5e5f5fa730d5d91da39598675978c6f451bd');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26599', 'A0000036', 'ĐỖ PHÚ VĂN', '10A', 'Nam', '26/02/2010', 'CHO-LON', '26599@ttgdtxcva.edu.vn', '26599', 'b061d852bd37aa935e18985ea7d30fddbe12e1d75f9f7c110643ec152f59177a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26600', 'A0000037', 'LÊ MINH ANH', '10C', 'Nam', '11/06/2010', 'CHO-LON', '26600@ttgdtxcva.edu.vn', '26600', '7a07b48eef2afada6b23a2eadcb9f955d94df053a40be024dfddf4354f88188c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26601', 'A0000038', 'A THANH BIN', '10C', 'Nam', '17/09/2011', 'CHO-LON', '26601@ttgdtxcva.edu.vn', '26601', '3b7267a2c2e74c46943765deb9841faccaf2e8f8f396094d1bed20f3292c4023');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26602', 'A0000039', 'NGUYỄN HOÀNG DŨNG', '10C', 'Nam', '08/07/2009', 'CHO-LON', '26602@ttgdtxcva.edu.vn', '26602', '35aee7a27d0c62cd39fef510894c44fccb50a93e598e8b015b5e6ecc5d4561c7');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26603', 'A0000040', 'HUỲNH MINH ĐĂNG', '10C', 'Nam', '11/04/2009', 'CHO-LON', '26603@ttgdtxcva.edu.vn', '26603', '4d1f31ec259939003df00474b24f8b473c7a498141f347b281f4316609deb508');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26604', 'A0000041', 'A VĂN HOÀNG', '10C', 'Nam', '31/10/2011', 'CHO-LON', '26604@ttgdtxcva.edu.vn', '26604', 'eb84a4a466190e6befa65b256f601c38bd1ff9c067311cf301966f982078eb78');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26605', 'A0000042', 'A LÊ HÙNG', '10C', 'Nam', '15/01/2011', 'CHO-LON', '26605@ttgdtxcva.edu.vn', '26605', '920b0a309caaec4df3b71b94ddaa9ca786a58f6f093fcdab93373208050f9ed7');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26606', 'A0000043', 'CAO NGUYỄN PHÚC HUY', '10C', 'Nam', '14/09/2010', 'CHO-LON', '26606@ttgdtxcva.edu.vn', '26606', '0775289c815de48aa8bf9bbed86618d25436add9ddfad45d4731ebe281d3a09a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26607', 'A0000044', 'GIANG GIA HUY', '10C', 'Nam', '26/03/2005', 'CHO-LON', '26607@ttgdtxcva.edu.vn', '26607', 'ffc5e8048a29a59480ce17b0e2df39bf5b015720e1578f1fa2ba77c50063470d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26608', 'A0000045', 'TÀO HỒNG KHANG', '10C', 'Nam', '28/11/2006', 'CHO-LON', '26608@ttgdtxcva.edu.vn', '26608', '0f9ae21adb07e5a96e2dc3d89e5e6557211057a5617efee6c9cbe61a4d967774');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('A0000046', 'A0000046', 'TĂNG MINH KIỆN', '10C', 'Nam', '01/06/2004', 'CHO-LON', NULL, NULL, '3d067ad93a68be542aa1dd35d11313324edeb4dc9505b59667076aca28012539');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('A0000047', 'A0000047', 'TRẦN DŨNG KIỆT', '10C', 'Nam', '17/08/2002', 'CHO-LON', NULL, NULL, '16e912c37ea07a7e37dfa15ab19d0a73e15b9d814927e95a1162d791cfc26b62');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26403', 'A0000048', 'NGUYỄN THIÊN KIM', '10C', 'Nữ', '06/05/2006', 'CHO-LON', '26403@ttgdtxcva.edu.vn', '26403', 'e529a057704b31e5544410156ed0b217810f90305376ff1c228ba87905c009f2');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26610', 'A0000049', 'A LÂN', '10C', 'Nam', '02/09/2011', 'CHO-LON', '26610@ttgdtxcva.edu.vn', '26610', '17aa497bbe3ca6c374b518b4ca248b667e0677d34e2113aa3a3dc116f2a444bb');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26611', 'A0000050', 'NGUYỄN CHÍ LĨNH', '10C', 'Nam', '05/07/2009', 'CHO-LON', '26611@ttgdtxcva.edu.vn', '26611', 'b9e3926196640a21bdfd3d9ff022375a7572b0ada2cd287d59f5f125dd0b1d85');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26612', 'A0000051', 'VÕ THÀNH NAM', '10C', 'Nam', '12/07/2009', 'CHO-LON', '26612@ttgdtxcva.edu.vn', '26612', '4f13dc7f6cfcf8c6365b1bf3108c36d01b8dfd9a0b0bc97092ed7d11191f55b1');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26613', 'A0000052', 'LÝ THIÊN NGÂN', '10C', 'Nữ', '26/03/2008', 'CHO-LON', '26613@ttgdtxcva.edu.vn', '26613', 'c48f8e8d21642b02e4b57f1110d61f370f87630827d4dd8744dfff029909f33d');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26614', 'A0000053', 'HOẮC HUỆ NHÀN', '10C', 'Nữ', '03/08/2011', 'CHO-LON', '26614@ttgdtxcva.edu.vn', '26614', 'd0e45261c47c3468ad7eb57a771891bfa4b724d99e0dcd644d651c4e186926c9');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26615', 'A0000054', 'A PHỤC', '10C', 'Nam', '25/12/2011', 'CHO-LON', '26615@ttgdtxcva.edu.vn', '26615', 'c0ba62ef2ae272cb5cd5c40f885129725c537a0600f416ac8a0d8fa31a256e3c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26616', 'A0000055', 'NGUYỄN MINH QUÂN', '10C', 'Nam', '12/11/2010', 'CHO-LON', '26616@ttgdtxcva.edu.vn', '26616', 'f0c2605d9166477549697224471275ab6fc720c21c4e4c82213775d9ff271378');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26617', 'A0000056', 'NGUYỄN MINH TÂM', '10C', 'Nam', '13/04/2007', 'CHO-LON', '26617@ttgdtxcva.edu.vn', '26617', '0ce5448ae5f77c5eebdbb3fc91ac8780c4eb13e3c1d2174e334bf5817fcec1ec');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26618', 'A0000057', 'LÂM QUỐC THÁI', '10C', 'Nam', '07/12/2006', 'CHO-LON', '26618@ttgdtxcva.edu.vn', '26618', 'efb20812b8f774d48b803d89b5b57ebef5b40b154f4e6ed45fff164c97b38fd9');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26619', 'A0000058', 'LIÊU CẨM THÁI', '10C', 'Nam', '24/05/1994', 'CHO-LON', '26619@ttgdtxcva.edu.vn', '26619', 'c0baeaa309013e8239f14b8a8bbb3df90668f1ad305b10e6c5bb9d504a8221e6');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('A0000059', 'A0000059', 'HỨA KIẾN THÀNH', '10C', 'Nam', '01/10/2011', 'CHO-LON', NULL, NULL, '82810bb80c3f6c562baa29516c74cfbbffb373d761b95329a56af7c0a77c9e50');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26620', 'A0000060', 'NGUYỄN TRUNG THÀNH', '10C', 'Nam', '27/09/2009', 'CHO-LON', '26620@ttgdtxcva.edu.vn', '26620', '625a71906a5d9a15860e069be3437ce6a1c366e5c8a08113db291bb2efe2a1b0');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26621', 'A0000061', 'A THEM', '10C', 'Nam', '17/07/2011', 'CHO-LON', '26621@ttgdtxcva.edu.vn', '26621', '030039e36fb932a220e215d472d9a21d5a0599b272a62c3dbb1f3b17e66931ba');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26622', 'A0000062', 'LÊ HUỲNH GIA THIỆN', '10C', 'Nam', '14/06/2009', 'CHO-LON', '26622@ttgdtxcva.edu.vn', '26622', 'f5714105965823126fcdea0c25e8624eb89673a13252a3fd8d86e860869b1ccc');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26623', 'A0000063', 'NGUYỄN THANH THUỶ', '10C', 'Nữ', '13/04/1999', 'CHO-LON', '26623@ttgdtxcva.edu.vn', '26623', '1748729b3d4827bc4fce5d175a9b07b293c4fa3f2f8f155eb61dbe922a5ea96c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26624', 'A0000064', 'HUỲNH XUÂN THY', '10C', 'Nữ', '13/02/2007', 'CHO-LON', '26624@ttgdtxcva.edu.vn', '26624', 'dbb80c6d8bb1288c2103530e0f83b9a96fd7931592f975d531900642e00e8285');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26625', 'A0000065', 'NGUYỄN TRỊNH HOÀNG TIẾN', '10C', 'Nam', '13/07/2010', 'CHO-LON', '26625@ttgdtxcva.edu.vn', '26625', '4d8997738cae0b2a2c218f74094dd9fc832efff5405067ff2f8576b8d262b365');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26626', 'A0000066', 'NGUYỄN ĐAN TRƯỜNG', '10C', 'Nam', '22/06/2001', 'CHO-LON', '26626@ttgdtxcva.edu.vn', '26626', '8a4166501bb174b79c45fbd3905883c0c0556a6a62db4d81284138f5b7a47fe4');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26627', 'A0000067', 'A MINH TÙNG', '10C', 'Nam', '09/02/2011', 'CHO-LON', '26627@ttgdtxcva.edu.vn', '26627', 'b98af0233fbf58755bfaf77a524fe1c9b1dc2959be1f80578bdb2b18fb697843');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26628', 'A0000068', 'PHẠM THỊ BÍCH TUYỀN', '10C', 'Nữ', '01/01/2003', 'CHO-LON', '26628@ttgdtxcva.edu.vn', '26628', '21f5eb2c1beb8ea9d0f39a4822af2a742c920e92217d05d92ed00ca734be09ed');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('26629', 'A0000069', 'ĐINH THỊ TƯỜNG VY', '10C', 'Nữ', '07/12/2010', 'CHO-LON', '26629@ttgdtxcva.edu.vn', '26629', 'f78ede5076e74155dc959383b4a8117acf87b72dcb9d29db41ed1041adb8f78b');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25222', 'A0000070', 'NGUYỄN THỊ NGỌC ÁNH', '11A', 'Nữ', '06/05/2006', 'CHO-LON', '25222@ttgdtxcva.edu.vn', '25222', 'e529a057704b31e5544410156ed0b217810f90305376ff1c228ba87905c009f2');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25223', 'A0000071', 'NGUYỄN QUÝ DƯƠNG', '11A', 'Nam', '11/06/2003', 'CHO-LON', '25223@ttgdtxcva.edu.vn', '25223', '1634e0d02018d4a17e61ea18f5ad0a428d99458bb29e9ced012368ad9dd148cf');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25224', 'A0000072', 'HUỲNH CHÍ ĐẠT', '11A', 'Nam', '18/11/2007', 'CHO-LON', '25224@ttgdtxcva.edu.vn', '25224', '896876c8fee0a9561f1a837a82707c8c4a643f9fc4273435ee1eeb39284157ac');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25256', 'A0000073', 'NGUYỄN ĐẮC GIÀU', '11A', 'Nữ', '26/02/2001', 'CHO-LON', '25256@ttgdtxcva.edu.vn', '25256', 'e6e508febbc516c73091213c391d04c0f9a175312978831bf501252191471420');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25225', 'A0000074', 'DƯƠNG NGUYỄN MẠNH HIỀN', '11A', 'Nam', '04/01/2008', 'CHO-LON', '25225@ttgdtxcva.edu.vn', '25225', '18a160f1fd227633af0795050c346ae0a4474d84d74e1cfc7e9a9a1adc6b875f');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25226', 'A0000075', 'LÊ ĐÔNG KHA', '11A', 'Nam', '11/08/2004', 'CHO-LON', '25226@ttgdtxcva.edu.vn', '25226', 'e728d3ff70fd5296f8dbee6623067766715c5383c4d8ea5d23fd3691899dde66');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25227', 'A0000076', 'NGUYỄN VŨ LONG', '11A', 'Nam', '07/11/2010', 'CHO-LON', '25227@ttgdtxcva.edu.vn', '25227', '16064059e29e9c1c2fd5fab49900cf4abc2f4d49ff2823126e5801b2fe9dfa56');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25228', 'A0000077', 'PHÙNG GIA LONG', '11A', 'Nam', '22/10/2010', 'CHO-LON', '25228@ttgdtxcva.edu.vn', '25228', '5f418d862c2ebc5bdb470e6045be597fe571aa79965eff00d71c8080bde67181');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25229', 'A0000078', 'TRẦN TRỌNG MINH', '11A', 'Nam', '18/03/2007', 'CHO-LON', '25229@ttgdtxcva.edu.vn', '25229', 'a30196da91e4eb4e7bdde2e43403a62e63b08bd101b2b3aeddd158ea425f3688');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25230', 'A0000079', 'NGUYỄN BẢO NGỌC', '11A', 'Nữ', '08/06/2010', 'CHO-LON', '25230@ttgdtxcva.edu.vn', '25230', '65aae0f09268ba3ec8cc20d462e7b0957eb200d279c17d7ea7b7079ccd653561');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25231', 'A0000080', 'TRẦN KHÁNH NGỌC', '11A', 'Nữ', '10/11/2009', 'CHO-LON', '25231@ttgdtxcva.edu.vn', '25231', 'd44d28a966596983b4437f2738d49271a1d3e18b4920c162e06fa28d75ec5097');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25232', 'A0000081', 'NGUYỄN TRỌNG NHÂN', '11A', 'Nam', '12/03/2006', 'CHO-LON', '25232@ttgdtxcva.edu.vn', '25232', '44c890109a8430c212a8de251c542c64d0250a0deac8389942a787dabab6f64c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25233', 'A0000082', 'HUỲNH THỊ TUYẾT NHI', '11A', 'Nữ', '31/10/2003', 'CHO-LON', '25233@ttgdtxcva.edu.vn', '25233', 'b4936b2de8938b8647bdd7d026b727595b5cd4aff68dadf70e65388ec9c9a458');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25234', 'A0000083', 'NGUYỄN HOÀNG YẾN NHI', '11A', 'Nữ', '10/08/2010', 'CHO-LON', '25234@ttgdtxcva.edu.vn', '25234', '8925d53b2712d8d53ac769e274b101f543118c88f1053446e2cf1c47c13b37c1');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25235', 'A0000084', 'VÕ YẾN NHI', '11A', 'Nữ', '29/11/2010', 'CHO-LON', '25235@ttgdtxcva.edu.vn', '25235', '4b182c41b0d31ca85834d1d698187b37855719fd18a7aa41e40e91b313956f56');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25236', 'A0000085', 'NGUYỄN HỒNG BẢO NHƯ', '11A', 'Nữ', '01/02/2010', 'CHO-LON', '25236@ttgdtxcva.edu.vn', '25236', '2fa65ea954ba762b0267c2a978510c7f7d6bc04a156c68e93b0252ddbcf29fea');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25237', 'A0000086', 'TRẦN BẢO NHƯ', '11A', 'Nữ', '11/07/2008', 'CHO-LON', '25237@ttgdtxcva.edu.vn', '25237', 'a775fdbe179797480cf641bf8785eb43c2beb217c114b8acf245db3371e9a70e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25238', 'A0000087', 'TRẦN MINH PHÚC NHƯ', '11A', 'Nữ', '09/01/2010', 'CHO-LON', '25238@ttgdtxcva.edu.vn', '25238', 'a3a3bf41940fcbb0b88cdb82d579c92ea77a4c6493b03aa73f1f031dc58bb7ce');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25239', 'A0000088', 'NGUYỄN THANH TẤN', '11A', 'Nam', '07/10/2005', 'CHO-LON', '25239@ttgdtxcva.edu.vn', '25239', 'f08fb3236b38b00860750bedb8dcc6abf070064ed5c29c583eeeee2ca1620c76');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25240', 'A0000089', 'PHAN NGỌC DIỆU THIỆN', '11A', 'Nữ', '27/06/2009', 'CHO-LON', '25240@ttgdtxcva.edu.vn', '25240', '6fed476a136b8e0aad0c06a8b3392de297a48e1f6ad218d48f75d4376ddc1e22');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25241', 'A0000090', 'LÊ ĐẠI THỊNH', '11A', 'Nam', '19/01/2010', 'CHO-LON', '25241@ttgdtxcva.edu.vn', '25241', 'fb695c67d38c77f877dde9d02c85c1152d61c5f4e2e94aab19df0d0804377c70');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25242', 'A0000091', 'PHẠM GIA CÁT NGUYỄN TIÊN', '11A', 'Nam', '09/11/2005', 'CHO-LON', '25242@ttgdtxcva.edu.vn', '25242', '9124b23e69bd2dd92e62da99c57a701d5092f536c65e1979576dd1459f566757');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25243', 'A0000092', 'TRẦN LÊ THUỲ TIÊN', '11A', 'Nữ', '29/09/2010', 'CHO-LON', '25243@ttgdtxcva.edu.vn', '25243', 'c74b6b1c0e02a692487bc9b56c7f388e88c7f0a32e3b6c398f57b157a1f82c74');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25244', 'A0000093', 'NGUYỄN THẠO TÍNH', '11A', 'Nam', '22/06/2005', 'CHO-LON', '25244@ttgdtxcva.edu.vn', '25244', '09573b3f9ec0c3bd5cc9de585c810b3b62dfb77720c416941fc9c70c68072e0b');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25245', 'A0000094', 'NGUYỄN THỊ BÍCH TRÂM', '11A', 'Nữ', '22/12/2002', 'CHO-LON', '25245@ttgdtxcva.edu.vn', '25245', '1fa66fe67a2bb0b9d1e6db60bbacfb39781775332276a3c31e89f3d266efdcd7');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25246', 'A0000095', 'NGUYỄN MINH TRÍ', '11A', 'Nam', '13/01/2008', 'CHO-LON', '25246@ttgdtxcva.edu.vn', '25246', 'bf2ffbee534960c73f5ec14dad9b62e5fc7f4fae22799e001d66a78b10aaec9a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25247', 'A0000096', 'VŨ NGUYỄN THUÝ VÂN', '11A', 'Nữ', '28/03/2005', 'CHO-LON', '25247@ttgdtxcva.edu.vn', '25247', '20fe9f6f8bd4c04e67da14189ff839b584d823e3b0a65ed864a2609bb6d01eb6');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25248', 'A0000097', 'GIÀNG A VỪ', '11A', 'Nam', '08/12/2008', 'CHO-LON', '25248@ttgdtxcva.edu.vn', '25248', '225bdac07a26793f4f9dd0b495e711fcec4880efe8bc6b4dafa8cafcfd8c2ef4');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25249', 'A0000098', 'LÊ HOÀNG VY', '11A', 'Nữ', '09/12/2006', 'CHO-LON', '25249@ttgdtxcva.edu.vn', '25249', '7eb46865390977e4d2b1242f7ccb23206147c29914f7c1ec565d39b3430e1065');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25250', 'A0000099', 'NGUYỄN NGÔ TRÚC VY', '11A', 'Nữ', '04/03/2009', 'CHO-LON', '25250@ttgdtxcva.edu.vn', '25250', 'f3deec8984ad1d704b0022a9c476572c04a15f7b3325fb9a60a8dca5019fd1b5');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25251', 'A0000100', 'NGÔ THỊ HOÀNG YẾN', '11A', 'Nữ', '28/04/2009', 'CHO-LON', '25251@ttgdtxcva.edu.vn', '25251', '821b0184d3d92dc821163683ab737cb6ad9c8fadd0f415687845ff28bdf1840b');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25252', 'A0000101', 'NGUYỄN THỊ HỒNG YẾN', '11A', 'Nữ', '27/03/2010', 'CHO-LON', '25252@ttgdtxcva.edu.vn', '25252', '979f5583c64546105f8c207a7004bfc86c68a62625bd86d1168e84ab7c869a7a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25253', 'A0000102', 'LÊ NGUYỄN GIA BẢO', '11C', 'Nam', '08/12/2008', 'CHO-LON', '25253@ttgdtxcva.edu.vn', '25253', '225bdac07a26793f4f9dd0b495e711fcec4880efe8bc6b4dafa8cafcfd8c2ef4');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25254', 'A0000103', 'NGUYỄN BÌNH QUỐC BẢO', '11C', 'Nam', '20/03/2004', 'CHO-LON', '25254@ttgdtxcva.edu.vn', '25254', 'b0b9c130a5618c277ca990859c5027d83ff44ae5c659aab5aaedfe2a07c3ca59');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('A0000104', 'A0000104', 'LÂM MINH DUY', '11C', 'Nam', '15/11/1998', 'CHO-LON', NULL, NULL, 'f3a3e02830c405da07a3f088a893d322329cdcbfabe18afb655e696a133844d0');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25255', 'A0000105', 'ĐỖ CÔNG ĐẠI', '11C', 'Nam', '07/10/1999', 'CHO-LON', '25255@ttgdtxcva.edu.vn', '25255', 'f8746e9045629b4163649d9e9f07f1a6dd7fac07e0b3edbf8ba10d0e78083383');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25257', 'A0000106', 'TRỊNH THẾ HIỂN', '11C', 'Nam', '27/03/2010', 'CHO-LON', '25257@ttgdtxcva.edu.vn', '25257', '979f5583c64546105f8c207a7004bfc86c68a62625bd86d1168e84ab7c869a7a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('A0000107', 'A0000107', 'NGUYỄN HUY HOÀNG', '11C', 'Nam', '27/05/1989', 'CHO-LON', NULL, NULL, 'dd324ebe7766ec62383032103adad0114de3aad6f8407c9477eefaf63610a3bf');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25258', 'A0000108', 'TRỊNH XUÂN HUY HOÀNG', '11C', 'Nam', '19/03/2010', 'CHO-LON', '25258@ttgdtxcva.edu.vn', '25258', '7664d9fc4da399c3fd3d5a323aa7ef2a18c8b1ce16b3ea7f3cd5a436632f109b');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25259', 'A0000109', 'TRẦN MINH KHÔI', '11C', 'Nam', '07/07/2006', 'CHO-LON', '25259@ttgdtxcva.edu.vn', '25259', '8e6c68356bf2892be5152e0f2cad50a75d320d249a84902e398134539ac1c295');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25260', 'A0000110', 'HÀ NGUYỄN THÀNH LONG', '11C', 'Nam', '08/02/2000', 'CHO-LON', '25260@ttgdtxcva.edu.vn', '25260', '04127166695711425fd1b665e01b23e5c78d9da1907bfad45cdda9eb4e8bb296');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25261', 'A0000111', 'PHAN HOÀN PHƯỚC MINH', '11C', 'Nam', '02/09/2004', 'CHO-LON', '25261@ttgdtxcva.edu.vn', '25261', 'abb276462cee9ff4490dcd73ee44faafede0216c58a388b2f5ab8f2922f0d532');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25262', 'A0000112', 'CHÂU MINH NAM', '11C', 'Nam', '05/12/2002', 'CHO-LON', '25262@ttgdtxcva.edu.vn', '25262', '1ef36ba655d09648f625f638ba9eb85372451be27a4ed8a783cb3874d04460bf');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25263', 'A0000113', 'TRỊNH NHƯ KIM NGÂN', '11C', 'Nữ', '10/09/2004', 'CHO-LON', '25263@ttgdtxcva.edu.vn', '25263', 'e35e492fbf064e3fea8f2fff660f3f102194bf0f98e9c560b38cb4eb746715d4');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25264', 'A0000114', 'VƯƠNG VĨNH PHÚC', '11C', 'Nam', '03/02/2002', 'CHO-LON', '25264@ttgdtxcva.edu.vn', '25264', '8306901304a8c16e00fb6dfd1fdbc931ce12951d091e6c6de845fd88711e8005');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25265', 'A0000115', 'LƯƠNG PHÚ QUÍ', '11C', 'Nam', '09/01/2006', 'CHO-LON', '25265@ttgdtxcva.edu.vn', '25265', '53189b8e57b1b34a62e04af12fb8e5e820646fdac026cdadea3ec528f840637c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25266', 'A0000116', 'NGUYỄN HỨA CÔNG THÀNH', '11C', 'Nam', '22/05/2003', 'CHO-LON', '25266@ttgdtxcva.edu.vn', '25266', 'ca38133810fcf8687527af30a2c65850776b82706e351887beac8ba7e4421f52');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25267', 'A0000117', 'HỒNG NGỌC THUỶ', '11C', 'Nữ', '26/04/2004', 'CHO-LON', '25267@ttgdtxcva.edu.vn', '25267', '68ed3f7cec35afe49b66e7ae4e943b26534cc0e0cf56697e47986c07e0290510');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25268', 'A0000118', 'TRẦN NGUYỄN HẠ TRIỀU', '11C', 'Nam', '16/08/2003', 'CHO-LON', '25268@ttgdtxcva.edu.vn', '25268', '16b2a70f8817e80e801be0732442fadb0d41ff2e25e0d728cda67d44f8c1f6b8');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25269', 'A0000119', 'TRẦN THỊ HOÀNG UYÊN', '11C', 'Nữ', '28/10/2001', 'CHO-LON', '25269@ttgdtxcva.edu.vn', '25269', '47f1c76d8a622e3986d7366fcf65c88ea3601befa210a92b5f1631b5f0d76ed8');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('25270', 'A0000120', 'TÔ THỊ MINH VY', '11C', 'Nữ', '03/08/2006', 'CHO-LON', '25270@ttgdtxcva.edu.vn', '25270', 'fb855837d1650e183eac035a0da04afd5abc588fb8a616dd77bfcc745e57b7ea');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24472', 'A0000121', 'LẠC TRÍ AN', '12A', 'Nam', '20/12/2009', 'CHO-LON', '24472@ttgdtxcva.edu.vn', '24472', 'baeb9189142e5d530ae443d473e04a11b073a77b7288cd19f4256207dac5ddbf');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24473', 'A0000122', 'NGUYỄN TRẦN HUY AN', '12A', 'Nam', '11/09/2008', 'CHO-LON', '24473@ttgdtxcva.edu.vn', '24473', '1bae826307d0439293454a263ccd50c474ff485356ff19b70805c37bf1323cf2');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24474', 'A0000123', 'ĐÀO THỊ KIM ANH', '12A', 'Nữ', '14/06/2005', 'CHO-LON', '24474@ttgdtxcva.edu.vn', '24474', '9a0a9c63677493319b25b0ac495e3cb567c51bd93f5d1b2b437eed24ec62d64f');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24475', 'A0000124', 'LỤC KIM ANH', '12A', 'Nữ', '06/09/2005', 'CHO-LON', '24475@ttgdtxcva.edu.vn', '24475', 'bf82f8e0bbc55c53fddbb5affd38f61fcea488d42145d0e579a88324cea125c0');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24476', 'A0000125', 'NGUYỄN THỊ KIM ÁNH', '12A', 'Nữ', '25/08/2009', 'CHO-LON', '24476@ttgdtxcva.edu.vn', '24476', 'b93de63b263184827464317ebe87fbea8b22d6fb144bb286e29e7891e65f449e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24477', 'A0000126', 'MÃ GIA BẢO', '12A', 'Nam', '14/03/2006', 'CHO-LON', '24477@ttgdtxcva.edu.vn', '24477', '06a5d202a219df4e702013c89d29ec05626898a9a27f3d6076118807912bf3ab');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24478', 'A0000127', 'LÊ TRẦN NGỌC DIỆP', '12A', 'Nữ', '22/04/2009', 'CHO-LON', '24478@ttgdtxcva.edu.vn', '24478', '83d8ae822102771057df8969767fd4accdbee8df41faeba8b984f57d24b039a9');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24479', 'A0000128', 'TRỊNH KHẢI ĐỘ', '12A', 'Nam', '04/11/2008', 'CHO-LON', '24479@ttgdtxcva.edu.vn', '24479', '850ac7eb71d0867851a89f608e5680af81a428eeb15491f394e26fb0b0224096');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24480', 'A0000129', 'LÂM TRÍ HÀO', '12A', 'Nam', '01/06/2009', 'CHO-LON', '24480@ttgdtxcva.edu.vn', '24480', '96ebbe2f08f57b9b32f5d6c16504b4a2c02b9ec7143c785a7dfcc2ebc9b6f069');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24481', 'A0000130', 'HUỲNH MỸ HÂN', '12A', 'Nữ', '22/11/2001', 'CHO-LON', '24481@ttgdtxcva.edu.vn', '24481', 'f29e49fe9df86d6c3641cb5d5908b02512ca151588e0f07ffe47deaf8149db10');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24482', 'A0000131', 'PHẠM NGỌC HÂN', '12A', 'Nữ', '20/12/2009', 'CHO-LON', '24482@ttgdtxcva.edu.vn', '24482', 'baeb9189142e5d530ae443d473e04a11b073a77b7288cd19f4256207dac5ddbf');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24483', 'A0000132', 'TRẦN NGỌC BẢO HÂN', '12A', 'Nữ', '21/01/2005', 'CHO-LON', '24483@ttgdtxcva.edu.vn', '24483', '8fc87bbf9db5f88e4790ae5663c882a0bcd5db02234454f6c7c66de5fcf14b58');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24484', 'A0000133', 'ĐẶNG HUY HOÀNG', '12A', 'Nam', '15/07/2009', 'CHO-LON', '24484@ttgdtxcva.edu.vn', '24484', 'f66174f049df52c47fabe4d0cef591e1f48d85e5c47b1e0e3aea37f90e63904a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24485', 'A0000134', 'PHẠM GIA KIỆT', '12A', 'Nam', '30/03/2007', 'CHO-LON', '24485@ttgdtxcva.edu.vn', '24485', '92b0f2d101db862b9713479ca2125c544693f75591a8c693289af02966899711');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24486', 'A0000135', 'DƯ MỸ KIM', '12A', 'Nữ', '02/01/2009', 'CHO-LON', '24486@ttgdtxcva.edu.vn', '24486', '65e0981f7168296cb5986a403953b12a717dfad155de6d815597661d31aeeed6');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24487', 'A0000136', 'HỒ SỸ KỲ', '12A', 'Nam', '17/09/2008', 'CHO-LON', '24487@ttgdtxcva.edu.vn', '24487', '4b4f51f3bfc738277704fdf5aad14852e8721a38156b095d725466c56512b464');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24488', 'A0000137', 'PHẠM NGỌC LINH', '12A', 'Nữ', '16/11/2008', 'CHO-LON', '24488@ttgdtxcva.edu.vn', '24488', 'b20f7aa988ac315ca9a747bb89d4fa700495af726dcf1dc731be3a1a6d623f6c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24489', 'A0000138', 'ĐINH GIA LONG', '12A', 'Nam', '11/05/2009', 'CHO-LON', '24489@ttgdtxcva.edu.vn', '24489', 'ae6e51098f9b8cca17fc2c276283e6b9e7df230463eeebea065bbd023d69897e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24490', 'A0000139', 'ĐẶNG THIÊN MINH', '12A', 'Nữ', '30/01/2001', 'CHO-LON', '24490@ttgdtxcva.edu.vn', '24490', 'ff580294487de7ef5331a389a4b4053246f3fa76dedc387009bde00e8fff9dd3');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24491', 'A0000140', 'NGUYỄN THỊ KIM NGÂN', '12A', 'Nữ', '01/01/2003', 'CHO-LON', '24491@ttgdtxcva.edu.vn', '24491', '21f5eb2c1beb8ea9d0f39a4822af2a742c920e92217d05d92ed00ca734be09ed');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24492', 'A0000141', 'LÂM BẢO NGỌC', '12A', 'Nữ', '22/03/2009', 'CHO-LON', '24492@ttgdtxcva.edu.vn', '24492', 'a8d4df74e78c906c3ca4d31ce4575c34dd00702eb4cfbc43a0d42c6fd13e28df');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24493', 'A0000142', 'NGUYỄN THỊ MỸ NGỌC', '12A', 'Nữ', '06/06/2002', 'CHO-LON', '24493@ttgdtxcva.edu.vn', '24493', '1f2c48c8e0bcc9a7f9ce2ce240d89f11a77c19bb75f319492c0f3a3d57d9b52a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24494', 'A0000143', 'ĐỖ NGỌC YẾN NHI', '12A', 'Nữ', '16/06/2008', 'CHO-LON', '24494@ttgdtxcva.edu.vn', '24494', 'c2b04db7f1f223b2b7d665ff6e616ca5a047b0214e975b3e4c950f26dd962212');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24495', 'A0000144', 'NGHIÊM ĐINH PHÚ', '12A', 'Nam', '05/06/2007', 'CHO-LON', '24495@ttgdtxcva.edu.vn', '24495', '01a19f369d2a372eb2f234529cdce674815c7d807fa3ae7ea50762a72026afb3');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24496', 'A0000145', 'LƯU VÂN PHỤNG', '12A', 'Nữ', '25/11/2009', 'CHO-LON', '24496@ttgdtxcva.edu.vn', '24496', '3e48c3964fb22e6e0cde35b831a3b93243053704c5f042af7c5bd725d4156ee9');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24497', 'A0000146', 'NGÔ BỈNH TÂN', '12A', 'Nam', '27/03/1981', 'CHO-LON', '24497@ttgdtxcva.edu.vn', '24497', 'd275166eba7dfa76ab44adb5a61faf45e844f4a41513845474326ce2a68e3c4c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24498', 'A0000147', 'TRẦN KIM THÀNH', '12A', 'Nam', '03/11/2006', 'CHO-LON', '24498@ttgdtxcva.edu.vn', '24498', '66f1ea90e1c32358abcb115ffb7a41eafb063b6e437214a12aedfcc1e9fc8cca');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24499', 'A0000148', 'HUỲNH THỊ THANH THẢO', '12A', 'Nữ', '27/02/1992', 'CHO-LON', '24499@ttgdtxcva.edu.vn', '24499', '622d117af32f8c8e5a5fb354b316cb5ad42d0e96051ce9582dc54922d3b4fd18');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('A0000149', 'A0000149', 'NGUYỄN HUỲNH THẢO', '12A', 'Nữ', '25/07/2009', 'CHO-LON', NULL, NULL, '0d5a86acd53914463284232e0175bc6a42ec8ae0513ac0630808515cc5b3ed52');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24500', 'A0000150', 'TRỊNH MINH THIỆN', '12A', 'Nam', '03/08/2005', 'CHO-LON', '24500@ttgdtxcva.edu.vn', '24500', 'b1c1a212f4f0090a08b07395df74b8d2de08b32b7f551a7e6a1fdfe217493b9b');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24501', 'A0000151', 'ĐINH THỊ NHƯ TIÊN', '12A', 'Nữ', '03/10/2009', 'CHO-LON', '24501@ttgdtxcva.edu.vn', '24501', '3495a4246cc27482726ffdea9c1f4f767577306480dd31e565b91910d0c23091');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24502', 'A0000152', 'NGUYỄN THỊ THUỶ TIỀN', '12A', 'Nữ', '13/09/2008', 'CHO-LON', '24502@ttgdtxcva.edu.vn', '24502', '3eeef50abf96624d4776ab1dd720e5517d01fd31a1c27f5ff8286775717a934b');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24503', 'A0000153', 'VÕ MỘNG TRẦM', '12A', 'Nữ', '12/10/2003', 'CHO-LON', '24503@ttgdtxcva.edu.vn', '24503', '5c24fe5de3c147124510615abb3686da8dcb1d10c8ac315335f854fea7618b43');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24504', 'A0000154', 'LÊ BÙI THỊ BẢO TRÂN', '12A', 'Nữ', '30/11/2006', 'CHO-LON', '24504@ttgdtxcva.edu.vn', '24504', 'c2580bb89c3cce46ca9d58726b97a27f4c7815ed6d25542953937547aa7f30b5');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24505', 'A0000155', 'TRƯƠNG BẢO TRÂN', '12A', 'Nữ', '16/11/2004', 'CHO-LON', '24505@ttgdtxcva.edu.vn', '24505', 'bdde3988b479e86d891f6b229ea4abd36ad4bec4db416b635bb33330534401ad');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24506', 'A0000156', 'PHẠM ĐÀO THIÊN ƯNG', '12A', 'Nam', '04/06/2009', 'CHO-LON', '24506@ttgdtxcva.edu.vn', '24506', 'db53b3c31e8bc79dc9d3204b5fdb22c14a721356100bcbd59b64b0cc02ad0481');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24507', 'A0000157', 'NGUYỄN TƯỜNG MINH VI', '12A', 'Nữ', '30/12/2009', 'CHO-LON', '24507@ttgdtxcva.edu.vn', '24507', 'd53afa4dd0a27ce594c6a78e1b5230a76eba313074ec04ec68beef2e62d9dba9');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24508', 'A0000158', 'VƯƠNG GIA VY', '12A', 'Nữ', '12/11/2009', 'CHO-LON', '24508@ttgdtxcva.edu.vn', '24508', 'f36ed013aa3214ce07f41c1cfbbf2ce5661ab89bc40498692ad448ba312db790');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24509', 'A0000159', 'LẠC NGỌC YẾN', '12A', 'Nữ', '02/04/2009', 'CHO-LON', '24509@ttgdtxcva.edu.vn', '24509', '2a390f4207f0ee16d69f130304f1892c3e213f3ef6348fb500327809648640d8');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24510', 'A0000160', 'NGUYỄN QUỐC ANH', '12C', 'Nam', '03/04/2007', 'CHO-LON', '24510@ttgdtxcva.edu.vn', '24510', '4f85c277caed1926e2371081797a501ded0d3f7a123e27309952a32b4f3a8a66');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24511', 'A0000161', 'LƯU TIỂU BÌNH', '12C', 'Nữ', '30/07/2006', 'CHO-LON', '24511@ttgdtxcva.edu.vn', '24511', '0855b7244fe0a32c68cdca2d3a49ccb89f31d064722d81e61bc5fa4eae7ad88c');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24512', 'A0000162', 'HUỲNH MINH CHÂU', '12C', 'Nữ', '10/09/2003', 'CHO-LON', '24512@ttgdtxcva.edu.vn', '24512', 'ceb43007eb927fdd85d2108dd6954dd6c278c2f0d7f5b0293acc57b9ec79a19e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24513', 'A0000163', 'TẠ MỸ DUNG', '12C', 'Nữ', '10/12/1991', 'CHO-LON', '24513@ttgdtxcva.edu.vn', '24513', '16c3e9d538b4f22db22db7f4a40290a9537b37c55ab95a280d2d2a0ea6d7db35');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24514', 'A0000164', 'NGUYỄN THỊ THUỲ DƯƠNG', '12C', 'Nữ', '05/05/2009', 'CHO-LON', '24514@ttgdtxcva.edu.vn', '24514', '5bdaae79b1ab9092753514c79fa9ebbdf2888794161b3982b97a7f2dc5a29470');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24515', 'A0000165', 'TRƯƠNG MINH HẢI', '12C', 'Nam', '10/06/1985', 'CHO-LON', '24515@ttgdtxcva.edu.vn', '24515', 'b35ac530a3a18d69dc39649e1d60d9c9b46964ae0df0ed9b13d8a0a9f4680755');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24516', 'A0000166', 'ÔN TÙNG HY', '12C', 'Nam', '25/09/1993', 'CHO-LON', '24516@ttgdtxcva.edu.vn', '24516', '561fe3082b132f205c0c32aa6b54568eab1a471e49808eba52ff067ef19eb189');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24517', 'A0000167', 'ĐÀO PHƯỚC KHANG', '12C', 'Nam', '11/06/1999', 'CHO-LON', '24517@ttgdtxcva.edu.vn', '24517', '7d53d10d60bed5cc47fc95aed64930770cbdb35b2dd4f607b3582670ce495466');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24518', 'A0000168', 'BÙI QUANG KHÁNH', '12C', 'Nam', '11/10/2003', 'CHO-LON', '24518@ttgdtxcva.edu.vn', '24518', 'd77d3074e6bea19ae70aaaab4dc3d39f61ceda43c02614ac6bd14c8e1c09c3e6');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24519', 'A0000169', 'LƯU GIA KỲ', '12C', 'Nữ', '07/11/1993', 'CHO-LON', '24519@ttgdtxcva.edu.vn', '24519', '8449d50b4a21a27e4bfe07c34eef5497622b3689f93b293c3592f426e4bcf739');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24520', 'A0000170', 'BÙI QUỐC LINH', '12C', 'Nam', '18/08/2008', 'CHO-LON', '24520@ttgdtxcva.edu.vn', '24520', '173851df20fc79b0458d798e7018994fde3ef9ff0845e28597211c709f382f8e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24020', 'A0000171', 'NGUYỄN NGỌC PHƯƠNG LINH', '12C', 'Nữ', '16/03/2006', 'CHO-LON', '24020@ttgdtxcva.edu.vn', '24020', '3dbd5890edf60216ba71eddb98e915b4d09d840ebeae0a2ce3809aac4b9dde4e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24522', 'A0000172', 'HOÀNG LÊ TRÀ MY', '12C', 'Nữ', '07/10/2002', 'CHO-LON', '24522@ttgdtxcva.edu.vn', '24522', '2127908d145743ad8ad93683f1abb624e4c8699ca9347a4c2e41ea32abdcc4f3');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24523', 'A0000173', 'BÙI XUÂN NAM', '12C', 'Nam', '11/03/1997', 'CHO-LON', '24523@ttgdtxcva.edu.vn', '24523', '8a3ee2ad2f4465c95611335e18022b5803bb1edfc0213b213938cf3f1d8250e1');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24524', 'A0000174', 'LÝ THANH NGÂN', '12C', 'Nữ', '07/07/2002', 'CHO-LON', '24524@ttgdtxcva.edu.vn', '24524', 'ff19fb197432b3e19c0f2a2d78365f5bf1e05c30036d39d04dcfaddc6821e361');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24525', 'A0000175', 'NGUYỄN THANH NGỌC', '12C', 'Nữ', '23/11/2007', 'CHO-LON', '24525@ttgdtxcva.edu.vn', '24525', '99cdfa923a51589d5d5754b1994206140b77926b2969c1575f3227adac0347f8');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24526', 'A0000176', 'NGUYỄN PHAN BẠCH NGUYÊN', '12C', 'Nữ', '26/12/2003', 'CHO-LON', '24526@ttgdtxcva.edu.vn', '24526', '845e3b52f619c4a43b2758a45d9fb1ecb3c5d38d7e23a2090da1a082636cbbda');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24527', 'A0000177', 'VÕ THIỆN NHÂN', '12C', 'Nam', '24/12/2007', 'CHO-LON', '24527@ttgdtxcva.edu.vn', '24527', '3c952543dc20b8222ec7f564593c66f58af33c6211a40745e1f44363e25f1782');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24528', 'A0000178', 'NGUYỄN THỊ NHƯNG', '12C', 'Nữ', '06/08/1987', 'CHO-LON', '24528@ttgdtxcva.edu.vn', '24528', '94c6ea5164457a189c7a8ca804c2a1df499e16f9f57b6e3104640e282b44a0e6');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24529', 'A0000179', 'BÙI VĂN PHÁT', '12C', 'Nam', '01/02/1992', 'CHO-LON', '24529@ttgdtxcva.edu.vn', '24529', '2453c3c8851f8a204b061104e8ab847da8bf576a637782f5b0ad3055bae028dc');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24530', 'A0000180', 'LÊ ĐÌNH PHÚC', '12C', 'Nam', '29/11/2004', 'CHO-LON', '24530@ttgdtxcva.edu.vn', '24530', '782af80f3ad94def734254f5d123277310068364fb7058063ba2f8eff13e96df');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24531', 'A0000181', 'TRẦN THIÊN PHÚC', '12C', 'Nam', '06/07/2005', 'CHO-LON', '24531@ttgdtxcva.edu.vn', '24531', 'a641ffe6eaf9eb70c5fe21ecabc376303f271edcd348d6e792fc72c29344999f');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24532', 'A0000182', 'TRƯƠNG VĂN VĨNH PHÚC', '12C', 'Nam', '19/12/2006', 'CHO-LON', '24532@ttgdtxcva.edu.vn', '24532', '38cdaa90f0a5afe3ed97011bb8d55127d1d099f2bf499281464f5b55fdb97fef');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24533', 'A0000183', 'HUỲNH HOÀNG PHƯỚC', '12C', 'Nam', '27/05/2009', 'CHO-LON', '24533@ttgdtxcva.edu.vn', '24533', '568f39dcdb0a30c8df8566bd74913a93d4a73362a5adb72d91b0a95ce3b3cc8e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24534', 'A0000184', 'PHẠM ĐĂNG SINH', '12C', 'Nam', '17/07/2006', 'CHO-LON', '24534@ttgdtxcva.edu.vn', '24534', '999eda8150326b5df97f51cdcb410b3396f48ce163af08dfa8ec75ca202a7ccb');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24535', 'A0000185', 'ĐỖ NGỌC ANH TÀI', '12C', 'Nam', '02/11/2006', 'CHO-LON', '24535@ttgdtxcva.edu.vn', '24535', '80e81b1725e37ca66e05ddfdb478dc470f1e9824a1f554d4eb66cc102894c6cb');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24536', 'A0000186', 'TRƯƠNG QUỐC THÁI', '12C', 'Nam', '21/03/2005', 'CHO-LON', '24536@ttgdtxcva.edu.vn', '24536', 'c41aaca1cf558ee96bbe1be4bab294da99c4298dadbbf6db3f201b450d101b8a');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24537', 'A0000187', 'NGUỴ HẢI THÀNH', '12C', 'Nam', '20/03/2006', 'CHO-LON', '24537@ttgdtxcva.edu.vn', '24537', 'ccca5235595a2ea9ff143ab9a53dbd3b8fd163103185599a23538040d5070fb4');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24174', 'A0000188', 'NGUYỄN NGỌC BẢO TRÂN', '12C', 'Nữ', '08/09/2008', 'CHO-LON', '24174@ttgdtxcva.edu.vn', '24174', '5d433af54f0f175819926e1db9961ee966207c15f9a8d774e30c2507dabc4588');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24539', 'A0000189', 'NGUYỄN NGỌC MỸ TRÂN', '12C', 'Nữ', '28/04/2004', 'CHO-LON', '24539@ttgdtxcva.edu.vn', '24539', '1d6e61d6e1728c3aa4df447f3349da6d6ef5b2977a84db42952203deaa86e401');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24540', 'A0000190', 'LÊ HẠNH UYÊN', '12C', 'Nữ', '12/11/2004', 'CHO-LON', '24540@ttgdtxcva.edu.vn', '24540', '5c87e8b5a8ea0be7c7798c894847a59e5ab1418f2ab2581b760970ecbc796061');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24541', 'A0000191', 'TRƯƠNG VỈ VĂN', '12C', 'Nam', '06/12/2003', 'CHO-LON', '24541@ttgdtxcva.edu.vn', '24541', '70d1afa21115b68c3c8e63096bc5831b879e33a7d9e2b82d734fbeed2e6c9b3e');
INSERT OR REPLACE INTO students (mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash) VALUES ('24542', 'A0000192', 'PHẠM QUỐC VŨ', '12C', 'Nam', '11/05/1999', 'CHO-LON', '24542@ttgdtxcva.edu.vn', '24542', '358fb89c8f8ea15bc3b21a548ba9fbe51dab2a0e7759f9aef1d891214d62d074');

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