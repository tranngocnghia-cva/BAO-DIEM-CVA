import os
import sys
import time
import tomllib
import urllib.request
import urllib.error
from pathlib import Path
from concurrent.futures import ThreadPoolExecutor, as_completed

BASE_DIR = Path(__file__).resolve().parent.parent

def get_wrangler_token():
    config_path = Path(os.environ.get("APPDATA", "")) / "xdg.config" / ".wrangler" / "config" / "default.toml"
    if not config_path.exists():
        raise FileNotFoundError(f"Không tìm thấy file cấu hình wrangler tại {config_path}")
    with open(config_path, "rb") as f:
        cfg = tomllib.load(f)
    token = cfg.get("oauth_token")
    if not token:
        raise ValueError("Chưa tìm thấy oauth_token trong cấu hình wrangler!")
    return token

def upload_single_file(account_id, bucket_name, token, rel_path, abs_path):
    url = f"https://api.cloudflare.com/client/v4/accounts/{account_id}/r2/buckets/{bucket_name}/objects/{rel_path}"
    
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
    
    print("[*] Đang đọc mã xác thực Cloudflare...")
    token = get_wrangler_token()
    print("[+] Xác thực thành công.")

    # Quét tất cả file PDF
    pdf_files = []
    total_bytes = 0
    for campus in ["AN-DONG", "CHO-LON"]:
        campus_dir = BASE_DIR / campus
        if not campus_dir.exists():
            continue
        for p in campus_dir.rglob("*.pdf"):
            rel = p.relative_to(BASE_DIR).as_posix()
            size = p.stat().st_size
            pdf_files.append((rel, p, size))
            total_bytes += size

    total_count = len(pdf_files)
    print(f"[*] Tìm thấy {total_count} file PDF ({total_bytes / (1024*1024):.2f} MB)")
    print(f"[*] Đang tải lên R2 bucket '{bucket_name}' với 8 luồng song song...")

    start_time = time.time()
    uploaded_count = 0
    uploaded_bytes = 0
    errors = []

    with ThreadPoolExecutor(max_workers=8) as executor:
        future_map = {
            executor.submit(upload_single_file, account_id, bucket_name, token, rel, abs_p): (rel, size)
            for rel, abs_p, size in pdf_files
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

            if uploaded_count % 50 == 0 or uploaded_count == total_count:
                pct = (uploaded_count / total_count) * 100
                mb = uploaded_bytes / (1024 * 1024)
                elapsed = time.time() - start_time
                speed = mb / elapsed if elapsed > 0 else 0
                print(f"  -> Tiến độ: {uploaded_count}/{total_count} ({pct:.1f}%) | {mb:.1f} MB | {speed:.2f} MB/s")

    elapsed_total = time.time() - start_time
    print(f"\n============================================================")
    print(f"[HOÀN THÀNH] Đã tải {uploaded_count}/{total_count} file lên Cloudflare R2")
    print(f"Thời gian: {elapsed_total:.1f} giây ({uploaded_bytes / (1024*1024):.2f} MB)")
    if errors:
        print(f"[CẢNH BÁO] Có {len(errors)} file lỗi:")
        for r, e in errors[:10]:
            print(f"  - {r}: {e}")
    print(f"============================================================")

if __name__ == "__main__":
    main()
