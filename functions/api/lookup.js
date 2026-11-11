// ====================================================================
// Cloudflare Pages Function: /api/lookup
// Tra cứu điểm và bài thi của học sinh từ Cloudflare D1
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
    const rawStudentId = (body.studentId || "").trim().toUpperCase();
    const rawDob = (body.dob || "").trim();

    if (!rawStudentId || !rawDob) {
      return new Response(
        JSON.stringify({ error: "Vui lòng nhập đầy đủ Mã số học sinh và Ngày tháng năm sinh." }),
        { status: 400, headers: corsHeaders }
      );
    }

    const normDob = normalizeDob(rawDob);

    // Kiểm tra binding D1
    if (!env.DB) {
      return new Response(
        JSON.stringify({
          error: "Chưa cấu hình cơ sở dữ liệu Cloudflare D1 (env.DB). Vui lòng cấu hình D1 binding trong cài đặt Cloudflare Pages!",
        }),
        { status: 500, headers: corsHeaders }
      );
    }

    // 1. Tìm thông tin học sinh
    const studentStmt = env.DB.prepare(`
      SELECT student_id, full_name, class_name, gender, dob, campus
      FROM students
      WHERE UPPER(student_id) = ? AND dob = ?
    `);
    const studentRow = await studentStmt.bind(rawStudentId, normDob).first();

    if (!studentRow) {
      // Kiểm tra xem MSHS có tồn tại không để gợi ý
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

    // 2. Lấy điểm tất cả các môn thi của học sinh
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
    const { results: subRows } = await scoresStmt.bind(rawStudentId).all();

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
