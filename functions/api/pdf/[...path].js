// ====================================================================
// Cloudflare Pages Function: /api/pdf/[...path]
// Lấy file PDF bài thi trực tiếp từ Cloudflare R2 Bucket
// ====================================================================

export async function onRequestGet(context) {
  const { request, env, params } = context;

  // Lấy đường dẫn file từ tham số mảng params.path
  const pathParts = params.path;
  if (!pathParts || pathParts.length === 0) {
    return new Response("Thiếu đường dẫn file PDF.", { status: 400 });
  }

  const pdfKey = Array.isArray(pathParts) ? pathParts.join("/") : String(pathParts);
  const fileName = pdfKey.split("/").pop();

  // Kiểm tra binding Cloudflare R2
  if (!env.PDF_BUCKET) {
    return new Response(
      "Chưa cấu hình R2 Bucket (env.PDF_BUCKET). Vui lòng cấu hình R2 binding trong cài đặt Cloudflare Pages!",
      { status: 500, headers: { "Content-Type": "text/plain; charset=utf-8" } }
    );
  }

  try {
    const object = await env.PDF_BUCKET.get(pdfKey);

    if (!object) {
      return new Response(`Không tìm thấy file bài thi: ${pdfKey}`, {
        status: 404,
        headers: { "Content-Type": "text/plain; charset=utf-8" },
      });
    }

    const headers = new Headers();
    object.writeHttpMetadata(headers);
    headers.set("etag", object.httpEtag);
    headers.set("Content-Type", "application/pdf");
    headers.set("Content-Disposition", `inline; filename="${fileName}"`);
    headers.set("Cache-Control", "public, max-age=86400"); // Cache 1 ngày
    headers.set("Access-Control-Allow-Origin", "*");

    return new Response(object.body, {
      status: 200,
      headers,
    });
  } catch (err) {
    return new Response(`Lỗi đọc file từ R2: ${err.message || String(err)}`, {
      status: 500,
      headers: { "Content-Type": "text/plain; charset=utf-8" },
    });
  }
}
