#!/bin/bash

echo "🛡️ Configuring basic firewall rules..."

sudo ufw --force enable
sudo ufw default deny incoming
sudo ufw default allow outgoing

# Allow essential services
sudo ufw allow ssh
sudo ufw allow http
sudo ufw allow https

# Simulate blocking telnet and fake attacker IP
sudo ufw deny 23
sudo ufw deny from 203.0.113.10

echo "✅ Firewall rules applied!"
sudo ufw status verbose
