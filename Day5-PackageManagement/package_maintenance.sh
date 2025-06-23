#!/bin/bash

echo "===== Linux Package Maintenance ====="

# Update repository index
sudo apt update

# Upgrade all installed packages
sudo apt upgrade -y

# Install important packages (can customize here)
sudo apt install -y htop curl

# Clean up unused packages
sudo apt autoremove -y

echo "✅ Package maintenance completed successfully!"
