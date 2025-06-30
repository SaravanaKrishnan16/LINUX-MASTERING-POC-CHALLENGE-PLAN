# 🔐 Day 12 — Data Integrity Validation POC

---

## 🎯 Objective

- Validate file integrity using hashing techniques  
- Detect file tampering or unauthorized changes  
- Simulate real-world scenarios like backup verification  
- Automate integrity validation using a shell script

---

## 📌 Commands Practiced

| Command        | Purpose                                           |
|----------------|---------------------------------------------------|
| `md5sum`       | Generate/check MD5 checksum for file integrity    |
| `sha256sum`    | Generate/check SHA-256 checksum                   |
| `diff`         | Compare files line-by-line                        |
| `cmp`          | Compare files byte-by-byte                        |
| `chmod +x`     | Make a script executable                          |
| `echo`, `cat`  | Create and view file contents                     |

---

## 🔧 Full POC Execution

---

### ✅ 1️⃣ Create and Simulate Files

```bash
mkdir -p ~/integrity_demo
cd ~/integrity_demo

echo "This is a secure file." > original.txt
cp original.txt tampered.txt
echo "Hacked by intruder" >> tampered.txt




