# 🛡️ Day 11 — Firewall & Security POC

---

## 🎯 Objective

- Set up and manage firewall rules using `ufw` (Uncomplicated Firewall)  
- Secure the server by restricting/allowing only specific traffic  
- Simulate real-world security policies by allowing SSH/HTTP and blocking Telnet/attackers  
- Build a reusable firewall configuration script

---

## 📌 Commands Practiced

| Command                          | Purpose                                         |
|----------------------------------|-------------------------------------------------|
| `sudo ufw enable`                | Enable the firewall                             |
| `sudo ufw disable`               | Disable the firewall                            |
| `sudo ufw status verbose`        | Show all current firewall rules in detail       |
| `sudo ufw allow <port>`          | Allow traffic on a specific port                |
| `sudo ufw deny <port>`           | Block traffic on a specific port                |
| `sudo ufw allow from <ip>`       | Allow access only from a specific IP            |
| `sudo ufw deny from <ip>`        | Block all access from a specific IP             |
| `sudo ufw delete <rule>`         | Delete a specific rule                          |
| `sudo ufw default deny incoming` | Deny all incoming by default                    |
| `sudo ufw default allow outgoing`| Allow all outgoing by default                   |

---
