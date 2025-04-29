<img src="images/banner.png" alt="Snort NIDS Project Banner" width="100%"/>
🛡️ Network Intrusion Detection System (NIDS) Project Using Snort
🔍 Overview
This project demonstrates the deployment of Snort as a Network Intrusion Detection System (NIDS) on a Linux environment. It includes setup steps, rule testing, real-time alert generation, and a basic analysis workflow.

🧰 Tools Used
🐧 Ubuntu (Tested on 22.04)

🐍 Snort 2.x

📡 Virtual test environments (VMs)

📝 Bash scripting

🗂️ Files Included

File Name	Description
snort_installation_guide.sh	Bash script to install and configure Snort
snort_sample_alert.log	Sample alert log from a test run
snort_test_alerts.md	Descriptions of attack simulations and results
README.md	Full documentation and setup steps
images/banner.png	Banner image for GitHub display
🚀 Project Steps
1️⃣ Installation & Configuration
Installed required packages (snort, libpcap, daq).

Verified Snort was capturing packets using snort -v.

Set interface in promiscuous mode.

Defined HOME_NET and tested with default rules.

2️⃣ Writing & Testing Rules
Created custom rules to detect:

ICMP pings

HTTP requests to specific ports

Nmap scans

Stored rules in /etc/snort/rules/local.rules.

3️⃣ Simulating Attacks
Ran ping, nmap, and curl commands to trigger alerts.

Verified alerts using:

bash
Copy
Edit
tail -f /var/log/snort/alert
4️⃣ Sample Alert
log
Copy
Edit
[**] [1:10000001:0] ICMP Ping Detected [**]
[Classification: Misc activity] [Priority: 3]
04/28-14:12:22.001234 192.168.1.10 -> 192.168.1.100
ICMP TTL:64 TOS:0x0 ID:56789 IpLen:20 DgmLen:84
📌 Purpose
This project showcases hands-on IDS capabilities that are critical for roles such as:

SOC Analyst

Blue Team Security Engineer

Cybersecurity Analyst

🧠 What You Learn
IDS setup with open-source tooling

Traffic monitoring and alerting

Rule-based detection logic

Basic log analysis

👤 Author
Sadiq Bashiru
📍 Abuja, Nigeria
🔗 GitHub: ogbash10
📧 bashirusadiq10@gmail.com

