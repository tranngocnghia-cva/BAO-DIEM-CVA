// ====================================================================
// Cloudflare Worker: Hệ thống Báo Điểm & Tra Cứu Bài Thi Trực Tuyến
// Trung tâm GDNN-GDTX Chu Văn An • TP. Hồ Chí Minh
// ====================================================================

import indexHtml from "./index.html";

// Chuẩn hóa ngày sinh về định dạng dd/mm/yyyy
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

  // ddmmyyyy (8 chữ số liền nhau)
  const mRaw = dobStr.match(/^(\d{2})(\d{2})(\d{4})$/);
  if (mRaw) {
    const [, d, m, y] = mRaw;
    return `${d}/${m}/${y}`;
  }

  return dobStr;
}

// Băm mật khẩu SHA-256
async function hashPassword(pwd) {
  const enc = new TextEncoder().encode(pwd);
  const buf = await crypto.subtle.digest("SHA-256", enc);
  return Array.from(new Uint8Array(buf))
    .map((b) => b.toString(16).padStart(2, "0"))
    .join("");
}

// Xác thực mật khẩu cá nhân học sinh
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

const corsHeaders = {
  "Access-Control-Allow-Origin": "*",
  "Access-Control-Allow-Methods": "GET, POST, OPTIONS",
  "Access-Control-Allow-Headers": "Content-Type",
};

export default {
  async fetch(request, env, ctx) {
    const url = new URL(request.url);
    const pathname = url.pathname;

    // 1. Xử lý OPTIONS Preflight CORS
    if (request.method === "OPTIONS") {
      return new Response(null, { status: 204, headers: corsHeaders });
    }

    // 2. Endpoint API: Tra cứu điểm & bài thi (/api/lookup)
    if (pathname === "/api/lookup") {
      if (request.method !== "POST") {
        return new Response(JSON.stringify({ error: "Method Not Allowed" }), {
          status: 405,
          headers: { ...corsHeaders, "Content-Type": "application/json; charset=utf-8" },
        });
      }

      if (!env.DB) {
        return new Response(
          JSON.stringify({
            error: "Chưa cấu hình cơ sở dữ liệu Cloudflare D1 (env.DB). Vui lòng kiểm tra lại D1 binding!",
          }),
          { status: 500, headers: { ...corsHeaders, "Content-Type": "application/json; charset=utf-8" } }
        );
      }

      try {
        const body = await request.json();
        const rawIdentifier = String(body.identifier || body.mshs || body.studentId || body.email || "").trim();
        const rawSecret = String(body.dob || body.secret || body.password || "").trim();

        if (!rawIdentifier || !rawSecret) {
          return new Response(
            JSON.stringify({ error: "Vui lòng nhập đầy đủ Mã số học sinh và Ngày tháng năm sinh." }),
            { status: 400, headers: { ...corsHeaders, "Content-Type": "application/json; charset=utf-8" } }
          );
        }

        const accId = rawIdentifier.split("@")[0];

        // Tìm bản ghi học sinh dựa trên 5 số MSHS, email trường hoặc mã thi
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
              error: "Không tìm thấy học sinh với thông tin này. Gợi ý: Nhập đúng 5 số mã học sinh (5 số trong email trường của em, ví dụ: 26001)!",
            }),
            { status: 400, headers: { ...corsHeaders, "Content-Type": "application/json; charset=utf-8" } }
          );
        }

        // Kiểm tra ngày sinh học sinh
        let isValid = false;
        const normSecret = normalizeDob(rawSecret);
        if (normSecret && normSecret === studentRow.dob) {
          isValid = true;
        }

        if (!isValid) {
          const dobDigits = (studentRow.dob || "").replace(/\D/g, "");
          const secretDigits = rawSecret.replace(/\D/g, "");
          if (dobDigits && secretDigits === dobDigits) {
            isValid = true;
          }
        }

        if (!isValid) {
          isValid = await verifyStudentPassword(studentRow, rawSecret);
        }

        if (!isValid) {
          return new Response(
            JSON.stringify({
              error: "Ngày tháng năm sinh không khớp với dữ liệu học sinh. Vui lòng kiểm tra lại ngày sinh (ngày/tháng/năm)!",
            }),
            { status: 400, headers: { ...corsHeaders, "Content-Type": "application/json; charset=utf-8" } }
          );
        }

        const examSubId = studentRow.student_id;
        studentRow.display_mshs = studentRow.mshs || studentRow.student_id;
        studentRow.exam_sbd = studentRow.student_id;
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
          { status: 200, headers: { ...corsHeaders, "Content-Type": "application/json; charset=utf-8" } }
        );
      } catch (err) {
        return new Response(
          JSON.stringify({ error: `Lỗi máy chủ: ${err.message || String(err)}` }),
          { status: 500, headers: { ...corsHeaders, "Content-Type": "application/json; charset=utf-8" } }
        );
      }
    }

    // 3. Endpoint API: Tải/Xem file PDF bài thi từ Cloudflare R2 (/api/pdf/...)
    if (pathname.startsWith("/api/pdf/")) {
      const pdfKey = decodeURIComponent(pathname.replace("/api/pdf/", ""));
      if (!pdfKey) {
        return new Response("Thiếu đường dẫn file PDF.", { status: 400, headers: corsHeaders });
      }

      if (!env.PDF_BUCKET) {
        return new Response("Chưa cấu hình Cloudflare R2 Bucket (env.PDF_BUCKET).", {
          status: 500,
          headers: corsHeaders,
        });
      }

      try {
        const object = await env.PDF_BUCKET.get(pdfKey);
        if (!object) {
          return new Response(`Không tìm thấy file bài thi: ${pdfKey}`, {
            status: 404,
            headers: corsHeaders,
          });
        }

        const headers = new Headers();
        object.writeHttpMetadata(headers);
        headers.set("etag", object.httpEtag);
        headers.set("Content-Type", "application/pdf");
        const fileName = pdfKey.split("/").pop();
        headers.set("Content-Disposition", `inline; filename="${fileName}"`);
        headers.set("Cache-Control", "public, max-age=86400"); // Cache 1 ngày
        headers.set("Access-Control-Allow-Origin", "*");

        return new Response(object.body, { status: 200, headers });
      } catch (err) {
        return new Response(`Lỗi đọc file từ R2: ${err.message || String(err)}`, {
          status: 500,
          headers: corsHeaders,
        });
      }
    }

    // 4. Mặc định: Phục vụ trực tiếp giao diện Web Tra Cứu (index.html)
    return new Response(indexHtml, {
      status: 200,
      headers: {
        "Content-Type": "text/html; charset=utf-8",
        "Cache-Control": "public, max-age=3600",
      },
    });
  },
};
