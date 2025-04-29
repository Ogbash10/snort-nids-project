![Banner](images/banner.png)

# 🛡️ Network Intrusion Detection System (NIDS) using Snort

> A simulated security project demonstrating setup and detection with **Snort** NIDS on Ubuntu.

## 🌐 Overview
This project showcases how to set up and configure **Snort** on Ubuntu to detect network-based attacks such as port scans and brute force attempts.

## 🧰 Tools Used
- 🐌 **Snort**
- 🐧 **Ubuntu Server/Desktop 22.04**
- 🪟 **Windows 10** (Attacker VM)
- 🌐 Wireshark (optional for verification)

## 📦 Project Structure
```
NIDS_Project/
├── snort_install_script.sh
├── sample_alert_logs.txt
├── nids_report.pdf 
└── README.md
```

## 🚀 Setup Summary
1. Install Snort using the script.
2. Simulate attacks (e.g., Nmap scan, SSH brute force).
3. Check logs in `/var/log/snort/alert`.
4. Analyze alerts and generate report.

## 🔎 Example Detection
- **Port Scan Detected** - From `192.168.1.15` (Nmap scan)
- **SSH Brute Force** - Multiple login attempts from `192.168.1.20`

## 🧾 Files
- `snort_install_script.sh` – Auto-installs Snort
- `sample_alert_logs.txt` – Sample alert entries
- `nids_report.pdf` – Placeholder for detailed PDF report

---
**Author:** Bashiru Sadiq  
**Date:** April 2025  
**Tags:** `Snort`, `NIDS`, `Cybersecurity`, `Alert Detection`, `Security Monitoring`
