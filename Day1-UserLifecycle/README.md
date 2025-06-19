# 🐧 Day 1 — Enterprise User Lifecycle Automation (Username: saravana)

---

## 🎯 Objective

Master Linux user and group management by automating the user lifecycle with:

- Creating users with expiry
- Adding to multiple groups
- Setting password policies
- Automating the full process via shell script

---

## 📌 Commands Practiced

| Command      | Purpose                                  |
|--------------|-------------------------------------------|
| `useradd`    | Add user to the system                    |
| `groupadd`   | Create user groups                        |
| `passwd`     | Set user password                         |
| `usermod`    | Modify user settings                      |
| `chage`      | Manage password aging and expiry          |
| `id`, `groups` | Check user group membership and info   |

---

## 🔧 Full POC Execution

---

### ✅ 1️⃣ Create Groups

Create the necessary groups:

```bash
sudo groupadd developers
sudo groupadd cloud

### ✅ 2️⃣ Create User saravanan with Expiry, Comment & Shell

sudo useradd -m -d /home/saravanan -s /bin/bash -c "Cloud Engineer - +91-9876543210" -e 2025-07-31 saravanan
echo "saravanan:Welcome@123" | sudo chpasswd

### ✅ 3️⃣ Add saravanan to Multiple Groupssudo usermod -a -G developers,cloud saravanan

### ✅ 4️⃣ Set Password Expiry Policy for saravanan
Set password aging rules:


sudo chage -M 60 saravanan       # Max days before password change
sudo chage -W 5 saravanan        # Warn 5 days before expiry
sudo chage -I 10 saravanan       # Lock account after 10 days of inactivity

Verify the password policy applied:

chage -l saravanan

### ✅ 5️⃣ Verify Everything is Correct
Check user information:

id saravanan
groups saravanan
chage -l saravanan