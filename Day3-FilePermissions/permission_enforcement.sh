#!/bin/bash

# Create users and groups
sudo groupadd -f project_team
sudo groupadd -f interns

sudo useradd -m -G project_team alice
sudo useradd -m -G interns bob

echo "alice:Welcome@123" | sudo chpasswd
echo "bob:Welcome@123" | sudo chpasswd

# Create directory and file
sudo mkdir -p /secure_data
sudo touch /secure_data/confidential.txt
sudo chown alice:project_team /secure_data/confidential.txt

# Set standard permissions
sudo chmod 740 /secure_data/confidential.txt

# Apply ACL for bob
sudo setfacl -m u:bob:r /secure_data/confidential.txt

# Verification
echo "==== Permissions Set Successfully ===="
stat /secure_data/confidential.txt
getfacl /secure_data/confidential.txt
