#!/bin/bash

echo "🔧 System Automation Report"
echo "📅 Date: $(date)"
echo "🕒 Uptime:"
uptime

echo -e "\n💾 Disk Usage:"
df -h

echo -e "\n🧠 Memory Info:"
free -h

echo -e "\n📂 Top 5 Largest Directories in Home:"
du -ah $HOME | sort -rh | head -n 5

echo -e "\n✅ Script executed successfully!"
