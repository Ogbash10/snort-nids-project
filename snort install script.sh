#!/bin/bash

# Snort NIDS Setup Script

echo "[+] Updating system..."
sudo apt update && sudo apt upgrade -y

echo "[+] Installing required packages..."
sudo apt install -y build-essential libpcap-dev libpcre3-dev libdumbnet-dev bison flex zlib1g-dev liblzma-dev openssl libssl-dev libnghttp2-dev libdnet libdnet-dev

echo "[+] Installing DAQ library..."
cd /tmp
wget https://www.snort.org/downloads/snort/daq-2.0.7.tar.gz
tar -xvzf daq-2.0.7.tar.gz
cd daq-2.0.7
./configure && make && sudo make install

echo "[+] Installing Snort..."
cd /tmp
wget https://www.snort.org/downloads/snort/snort-2.9.20.tar.gz
tar -xvzf snort-2.9.20.tar.gz
cd snort-2.9.20
./configure --enable-sourcefire
make
sudo make install

echo "[+] Creating Snort directories..."
sudo mkdir -p /etc/snort/rules /var/log/snort /usr/local/lib/snort_dynamicrules

echo "[+] Creating basic rule..."
echo 'alert icmp any any -> any any (msg:"ICMP Packet Detected"; sid:1000001; rev:1;)' | sudo tee /etc/snort/rules/local.rules

echo "[+] Creating configuration file..."
sudo bash -c 'cat > /etc/snort/snort.conf' <<EOL
var RULE_PATH /etc/snort/rules
include \$RULE_PATH/local.rules
EOL

echo "[+] Snort setup completed!"
echo "Run: sudo snort -A console -q -c /etc/snort/snort.conf -i eth0"
