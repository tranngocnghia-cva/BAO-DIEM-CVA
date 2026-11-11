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

    // Lấy thông tin định danh (identifier) và thông tin bảo mật (secret)
    const rawIdentifier = String(body.identifier || body.studentId || body.email || "").trim();
    const rawSecret = String(body.secret || body.dob || body.password || "").trim();

    if (!rawIdentifier || !rawSecret) {
      return new Response(
        JSON.stringify({ error: "Vui lòng nhập đầy đủ Mã số học sinh (hoặc Email) và Ngày sinh (hoặc Mật khẩu)." }),
        { status: 400, headers: corsHeaders }
      );
    }

    const accId = rawIdentifier.split("@")[0];

    // 1. Tìm bản ghi học sinh dựa trên mọi loại mã định danh
    const studentStmt = env.DB.prepare(`
      SELECT id, mshs, student_id, full_name, class_name, gender, dob, campus, email, account_id, password_hash
      FROM students
      WHERE mshs = ? OR account_id = ? OR UPPER(student_id) = ? 
         OR LOWER(email) = ? OR LOWER(email) = ?
    `);
    const studentRow = await studentStmt.bind(
      rawIdentifier,
      accId,
      rawIdentifier.toUpperCase(),
      rawIdentifier.toLowerCase(),
      `${accId.toLowerCase()}@ttgdtxcva.edu.vn`
    ).first();

    if (!studentRow) {
      return new Response(
        JSON.stringify({
          error: "Không tìm thấy học sinh với thông tin này. Gợi ý: Nhập 5 số mã học sinh (5 số email trường của em, ví dụ: 26040, 24001)!",
        }),
        { status: 400, headers: corsHeaders }
      );
    }

    // 2. Tự động kiểm tra thông tin bảo mật (Ngày sinh hoặc Mật khẩu)
    let isValid = false;

    // a. So khớp Ngày sinh (chuẩn hóa định dạng dd/mm/yyyy)
    const normSecret = normalizeDob(rawSecret);
    if (normSecret && normSecret === studentRow.dob) {
      isValid = true;
    }

    // b. So khớp Ngày sinh dạng chữ số liền nhau (ddmmyyyy)
    if (!isValid) {
      const dobDigits = (studentRow.dob || "").replace(/\D/g, "");
      const secretDigits = rawSecret.replace(/\D/g, "");
      if (dobDigits && secretDigits === dobDigits) {
        isValid = true;
      }
    }

    // c. So khớp qua hàm xác thực mật khẩu
    if (!isValid) {
      isValid = await verifyStudentPassword(studentRow, rawSecret);
    }

    if (!isValid) {
      return new Response(
        JSON.stringify({
          error: "Thông tin xác thực (Ngày sinh hoặc Mật khẩu) không khớp. Vui lòng kiểm tra lại ngày sinh (ngày/tháng/năm)!",
        }),
        { status: 400, headers: corsHeaders }
      );
    }

    const examSubId = studentRow.student_id;
    studentRow.display_mshs = studentRow.mshs || studentRow.student_id;
    studentRow.exam_sbd = studentRow.student_id;
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
    const { results: subRows } = await scoresStmt.bind(examSubId).all();

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
