import os
import sys
import time
import tomllib
import urllib.request
import urllib.parse
import urllib.error
from pathlib import Path
from concurrent.futures import ThreadPoolExecutor, as_completed

BASE_DIR = Path(__file__).resolve().parent.parent

def get_wrangler_token():
    config_path = Path(os.environ.get("APPDATA", "")) / "xdg.config" / ".wrangler" / "config" / "default.toml"
    with open(config_path, "rb") as f:
        cfg = tomllib.load(f)
    return cfg["oauth_token"]

def upload_single_file(account_id, bucket_name, token, rel_path, abs_path):
    quoted = urllib.parse.quote(rel_path, safe="/")
    url = f"https://api.cloudflare.com/client/v4/accounts/{account_id}/r2/buckets/{bucket_name}/objects/{quoted}"
    
    with open(abs_path, "rb") as f:
        data = f.read()

    req = urllib.request.Request(
        url,
        data=data,
        headers={
            "Authorization": f"Bearer {token}",
            "Content-Type": "application/pdf"
        },
        method="PUT"
    )

    for attempt in range(3):
        try:
            with urllib.request.urlopen(req, timeout=30) as resp:
                if resp.status == 200:
                    return True, len(data), None
                return False, 0, f"Status {resp.status}"
        except urllib.error.HTTPError as e:
            if attempt == 2:
                return False, 0, f"HTTPError {e.code}: {e.reason}"
            time.sleep(1 + attempt)
        except Exception as e:
            if attempt == 2:
                return False, 0, str(e)
            time.sleep(1 + attempt)
    return False, 0, "Max retries exceeded"

def main():
    account_id = "e27665917eb0aad05a13a3c1f4cede11"
    bucket_name = "bao-diem-pdf"
    token = get_wrangler_token()

    # Quét tất cả file PDF có dấu tiếng Việt trong CHO-LON
    cho_lon_dir = BASE_DIR / "CHO-LON"
    remaining_files = []
    total_bytes = 0

    for p in cho_lon_dir.rglob("*.pdf"):
        rel = p.relative_to(BASE_DIR).as_posix()
        # Chỉ lấy các file có ký tự ngoài ASCII (176 file lỗi)
        try:
            rel.encode("ascii")
        except UnicodeEncodeError:
            remaining_files.append((rel, p, p.stat().st_size))
            total_bytes += p.stat().st_size

    total_count = len(remaining_files)
    print(f"[*] Tìm thấy {total_count} file PDF Chợ Lớn cần hoàn tất ({total_bytes / (1024*1024):.2f} MB)...")

    start_time = time.time()
    uploaded_count = 0
    uploaded_bytes = 0
    errors = []

    with ThreadPoolExecutor(max_workers=8) as executor:
        future_map = {
            executor.submit(upload_single_file, account_id, bucket_name, token, rel, abs_p): (rel, size)
            for rel, abs_p, size in remaining_files
        }

        for future in as_completed(future_map):
            rel, size = future_map[future]
            try:
                ok, b, err = future.result()
                if ok:
                    uploaded_count += 1
                    uploaded_bytes += b
                else:
                    errors.append((rel, err))
            except Exception as ex:
                errors.append((rel, str(ex)))

            if uploaded_count % 25 == 0 or uploaded_count == total_count:
                pct = (uploaded_count / total_count) * 100
                mb = uploaded_bytes / (1024 * 1024)
                print(f"  -> Đã nạp: {uploaded_count}/{total_count} ({pct:.1f}%) | {mb:.1f} MB")

    print(f"\n[HOÀN THÀNH] Đã tải toàn bộ {uploaded_count}/{total_count} file còn lại lên Cloudflare R2!")
    if errors:
        print(f"[!] Còn {len(errors)} file lỗi:")
        for r, e in errors[:5]:
            print(f"  - {r}: {e}")

if __name__ == "__main__":
    main()
