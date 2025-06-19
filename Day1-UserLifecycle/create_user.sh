#!/bin/bash

read -p "Enter username: " username
read -p "Enter comment: " comment

sudo useradd -m -s /bin/bash -c "$comment" -e 2025-07-31 "$username"
echo "$username:Welcome@123" | sudo chpasswd
sudo groupadd -f developers
sudo groupadd -f cloud
sudo usermod -a -G developers,cloud "$username"
sudo chage -M 60 -W 5 -I 10 "$username"

echo "User $username created successfully with expiry and groups!"
