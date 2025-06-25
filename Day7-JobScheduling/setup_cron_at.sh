#!/bin/bash

# Create demo script
cat <<EOF > ~/job_scheduler_demo.sh
#!/bin/bash
echo "[$(date)] 🧠 Cron Job Executed - Backup Simulated" >> ~/cron_log.txt
EOF

chmod +x ~/job_scheduler_demo.sh

# Install and start cron & at
sudo apt update
sudo apt install -y cron at

sudo systemctl enable cron
sudo systemctl start cron
sudo systemctl enable atd
sudo systemctl start atd

# Add cron entry
(crontab -l 2>/dev/null; echo "* * * * * ~/job_scheduler_demo.sh") | crontab -

echo "✅ Cron job scheduled every minute. Check ~/cron_log.txt"

# Schedule at job
echo "echo '🧠 One-time AT job triggered at \$(date)' >> ~/at_log.txt" | at now + 1 minute
echo "✅ One-time at job scheduled. Check ~/at_log.txt after a minute."
