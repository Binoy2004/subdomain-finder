# KALAN Subdomain Tool 🔍

KALAN is a simple Bash-based reconnaissance tool that helps security researchers and bug bounty hunters quickly discover **live subdomains** of a target domain.

The tool uses **Assetfinder** to collect subdomains and **httprobe** to identify which ones are alive.

---

## ⚡ Features

* Fast subdomain discovery
* Live domain detection
* Spinner loading animation
* Clean terminal output
* Saves results automatically

---

## 🛠 Requirements

Before running the tool, install the following:

* Assetfinder
* httprobe
* Bash

Install them using:

```bash
go install github.com/tomnomnom/assetfinder@latest
go install github.com/tomnomnom/httprobe@latest
```

Make sure Go binaries are in your PATH.

---

## 📥 Installation

Clone the repository:

```bash
git clone https://github.com/yourusername/kalan-subdomain-tool.git
```

Go into the directory:

```bash
cd kalan-subdomain-tool
```

Give execution permission:

```bash
chmod +x kalan.sh
```

---

## 🚀 Usage

Run the script:

```bash
./kalan.sh
```

Enter the target domain when prompted:

```
Enter Target Domain: example.com
```

The tool will:

1. Find subdomains
2. Check which are live
3. Save results to a file

---

## 📂 Output

Two files will be generated:

```
all_subs.txt     → All discovered subdomains
live_subs.txt    → Live/active subdomains
```

Example output:

```
========== LIVE SUBDOMAINS ==========
https://api.example.com
https://mail.example.com
=====================================
```

---

## 📌 Project Structure

```
kalan-subdomain-tool
│
├── kalan.sh
├── README.md
└── results
```

---

## ⚠ Disclaimer

This tool is created for **educational purposes and authorized security testing only**.

Do not use this tool on systems without permission.

---

## 👨‍💻 Author

Created by **KALAN**

GitHub: https://github.com/yourusername

---

## ⭐ Support

If you like this project, consider giving it a **star ⭐ on GitHub**.
