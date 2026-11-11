// ====================================================================
// Cloudflare Pages Function: /api/lookup
// Tra cứu điểm và bài thi của học sinh từ Cloudflare D1
// Hỗ trợ 2 phương thức: MSHS + Ngày sinh HOẶC Email trường + Mật khẩu
// ====================================================================

function normalizeDob(dobStr) {
  if (!dobStr) return "";
  dobStr = String(dobStr).trim();

  // YYYY-MM-DD
  const mIso = dobStr.match(/^(\d{4})[-/](\d{1,2})[-/](\d{1,2})$/);
  if (mIso) {
    const [, y, m, d] = mIso;
    return `${d.padStart(2, "0")}/${m.padStart(2, "0")}/${y}`;
  }

  // D/M/YYYY or DD/MM/YYYY
  const mVn = dobStr.match(/^(\d{1,2})[-/.](\d{1,2})[-/.](\d{4})$/);
  if (mVn) {
    const [, d, m, y] = mVn;
    return `${d.padStart(2, "0")}/${m.padStart(2, "0")}/${y}`;
  }

  // ddmmyyyy
  const mRaw = dobStr.match(/^(\d{2})(\d{2})(\d{4})$/);
  if (mRaw) {
    const [, d, m, y] = mRaw;
    return `${d}/${m}/${y}`;
  }

  return dobStr;
}

async function hashPassword(pwd) {
  const enc = new TextEncoder().encode(pwd);
  const buf = await crypto.subtle.digest("SHA-256", enc);
  return Array.from(new Uint8Array(buf))
    .map((b) => b.toString(16).padStart(2, "0"))
    .join("");
}

async function verifyStudentPassword(student, password) {
  if (!password) return false;
  const pwd = String(password).trim();

  // 1. So khớp với password_hash
  if (student.password_hash) {
    if (student.password_hash === pwd) return true;
    const hashed = await hashPassword(pwd);
    if (student.password_hash === hashed) return true;
  }

  // 2. So khớp ngày sinh dạng 8 số liền ddmmyyyy hoặc dd/mm/yyyy
  const rawDob = student.dob || "";
  const dobDigits = rawDob.replace(/\D/g, "");
  if (dobDigits && pwd === dobDigits) return true;
  if (rawDob && pwd === rawDob) return true;

  // 3. So khớp account_id hoặc student_id
  const accId = String(student.account_id || "").trim();
  const sid = String(student.student_id || "").trim();
  if (accId && pwd.toLowerCase() === accId.toLowerCase()) return true;
  if (sid && pwd.toUpperCase() === sid.toUpperCase()) return true;

  // 4. Mật khẩu khởi tạo chung
  if (["cva@123", "cva123", "123456", "cva2026"].includes(pwd.toLowerCase())) return true;

  return false;
}

export async function onRequestPost(context) {
  const { request, env } = context;

  // Header CORS
  const corsHeaders = {
    "Access-Control-Allow-Origin": "*",
    "Access-Control-Allow-Methods": "POST, OPTIONS",
    "Access-Control-Allow-Headers": "Content-Type",
    "Content-Type": "application/json; charset=utf-8",
  };

  try {
    const body = await request.json();

    // Kiểm tra binding D1
    if (!env.DB) {
      return new Response(
        JSON.stringify({
          error: "Chưa cấu hình cơ sở dữ liệu Cloudflare D1 (env.DB). Vui lòng cấu hình D1 binding trong cài đặt Cloudflare Pages!",
        }),
        { status: 500, headers: corsHeaders }
      );
    }

    let method = body.method;
    if (!method) {
      method = body.email || body.password ? "email" : "mshs";
    }

    let studentRow = null;

    // --- PHƯƠNG THỨC 2: EMAIL TRƯỜNG / SỐ TÀI KHOẢN + MẬT KHẨU ---
    if (method === "email") {
      const rawEmail = (body.email || "").trim().toLowerCase();
      const password = body.password || "";

      if (!rawEmail || !password) {
        return new Response(
          JSON.stringify({ error: "Vui lòng nhập đầy đủ Email trường (hoặc Số tài khoản) và Mật khẩu." }),
          { status: 400, headers: corsHeaders }
        );
      }

      const accId = rawEmail.split("@")[0];
      const studentStmt = env.DB.prepare(`
        SELECT id, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash
        FROM students
        WHERE LOWER(email) = ? OR LOWER(email) = ? OR account_id = ? OR UPPER(student_id) = ?
      `);
      studentRow = await studentStmt.bind(rawEmail, `${accId}@ttgdtxcva.edu.vn`, accId, accId.toUpperCase()).first();

      if (!studentRow) {
        return new Response(
          JSON.stringify({ error: "Không tìm thấy tài khoản học sinh với email hoặc số tài khoản này. Vui lòng kiểm tra lại!" }),
          { status: 400, headers: corsHeaders }
        );
      }

      const isValid = await verifyStudentPassword(studentRow, password);
      if (!isValid) {
        return new Response(
          JSON.stringify({
            error: "Mật khẩu không chính xác. Gợi ý: Mật khẩu mặc định là Ngày tháng năm sinh (ddmmyyyy, ví dụ: 27022009)!",
          }),
          { status: 400, headers: corsHeaders }
        );
      }
    }
    // --- PHƯƠNG THỨC 1: MÃ SỐ HỌC SINH + NGÀY SINH ---
    else {
      const rawStudentId = (body.studentId || "").trim().toUpperCase();
      const rawDob = (body.dob || "").trim();

      if (!rawStudentId || !rawDob) {
        return new Response(
          JSON.stringify({ error: "Vui lòng nhập đầy đủ Mã số học sinh và Ngày tháng năm sinh." }),
          { status: 400, headers: corsHeaders }
        );
      }

      const normDob = normalizeDob(rawDob);

      const studentStmt = env.DB.prepare(`
        SELECT id, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash
        FROM students
        WHERE UPPER(student_id) = ? AND dob = ?
      `);
      studentRow = await studentStmt.bind(rawStudentId, normDob).first();

      if (!studentRow) {
        const checkStmt = env.DB.prepare("SELECT student_id FROM students WHERE UPPER(student_id) = ?");
        const checkRow = await checkStmt.bind(rawStudentId).first();
        if (checkRow) {
          return new Response(
            JSON.stringify({
              error: "Mã số học sinh đúng nhưng Ngày sinh không khớp. Vui lòng kiểm tra lại ngày sinh (ngày/tháng/năm)!",
            }),
            { status: 400, headers: corsHeaders }
          );
        }
        return new Response(
          JSON.stringify({ error: "Không tìm thấy học sinh với Mã số này. Vui lòng kiểm tra lại!" }),
          { status: 400, headers: corsHeaders }
        );
      }
    }

    const studentId = studentRow.student_id;
    // Xóa password_hash trước khi trả về client
    delete studentRow.password_hash;

    // Lấy điểm tất cả các môn thi của học sinh
    const scoresStmt = env.DB.prepare(`
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
    `);
    const { results: subRows } = await scoresStmt.bind(studentId).all();

    const scores = (subRows || []).map((r) => ({
      ...r,
      pdf_url: r.pdf_key ? `/api/pdf/${r.pdf_key}` : null,
    }));

    return new Response(
      JSON.stringify({
        success: true,
        student: studentRow,
        scores,
      }),
      { status: 200, headers: corsHeaders }
    );
  } catch (err) {
    return new Response(
      JSON.stringify({ error: `Lỗi máy chủ: ${err.message || String(err)}` }),
      { status: 500, headers: corsHeaders }
    );
  }
}

export async function onRequestOptions() {
  return new Response(null, {
    status: 204,
    headers: {
      "Access-Control-Allow-Origin": "*",
      "Access-Control-Allow-Methods": "POST, OPTIONS",
      "Access-Control-Allow-Headers": "Content-Type",
    },
  });
}
