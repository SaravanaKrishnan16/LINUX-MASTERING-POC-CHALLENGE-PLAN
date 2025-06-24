#!/bin/bash

echo "===== NETWORK DIAGNOSTICS ====="

echo -e "\n🖧 IP Address:"
ip a

echo -e "\n📶 Pinging 8.8.8.8..."
ping -c 4 8.8.8.8

echo -e "\n🌍 Pinging google.com..."
ping -c 4 google.com

echo -e "\n📡 Traceroute to google.com:"
traceroute google.com

echo -e "\n🔍 DNS Lookup:"
nslookup google.com

echo -e "\n🌐 Curl HTTP test:"
curl -I https://www.google.com

echo -e "\n📊 Active connections (ss):"
ss -tuln

echo -e "\n📁 Network service status:"
systemctl status NetworkManager | head -n 10

echo -e "\n✅ Network diagnostics completed."
