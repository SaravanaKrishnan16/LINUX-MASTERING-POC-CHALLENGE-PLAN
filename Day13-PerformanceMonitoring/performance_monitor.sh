#!/bin/bash

echo "📊 Linux Performance Report — $(date)"
echo "----------------------------------------"

echo -e "\n🕒 Uptime:"
uptime

echo -e "\n💾 Memory Usage:"
free -h

echo -e "\n🧠 Virtual Memory & CPU:"
vmstat 1 3

echo -e "\n📀 Disk I/O Stats:"
iostat

echo -e "\n🔥 Top 5 CPU-consuming processes:"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6
