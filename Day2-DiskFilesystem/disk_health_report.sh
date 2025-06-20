#!/bin/bash

echo "===== Disk Health Report ====="
echo ""

echo "👉 Block Devices:"
lsblk
echo ""

echo "👉 Mounted Filesystems:"
findmnt
echo ""

echo "👉 Disk Free Summary:"
df -h
echo ""

echo "👉 Top 5 Largest Folders in /:"
du -h / | sort -hr | head -n 5
echo ""

echo "👉 Partition Table:"
sudo fdisk -l
echo ""

echo "👉 Filesystem UUID Info:"
sudo blkid
echo ""

echo "===== Report Completed ====="
