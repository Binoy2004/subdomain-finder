#!/bin/bash

# ===== KALAN TOOL =====
clear

echo "======================================"
echo "        KALAN SUBDOMAIN TOOL          "
echo "======================================"
echo ""

# Check required tools
if ! command -v assetfinder &> /dev/null
then
    echo "assetfinder not installed. Install it first."
    exit
fi

if ! command -v httprobe &> /dev/null
then
    echo "httprobe not installed. Install it first."
    exit
fi

# Input domain
echo -n "Enter Target Domain: "
read domain

echo ""
echo "[+] Searching subdomains for $domain"

# Loading animation
spin() {
    local pid=$!
    local spin='-\|/'
    local i=0
    while kill -0 $pid 2>/dev/null
    do
        i=$(( (i+1) %4 ))
        printf "\r[%c] Scanning..." "${spin:$i:1}"
        sleep .1
    done
    printf "\r[✔] Scan completed!     \n"
}

# Run scan in background
(
assetfinder --subs-only $domain > all_subs.txt
cat all_subs.txt | httprobe > live_subs.txt
) &

spin

echo ""
echo "========== LIVE SUBDOMAINS =========="
cat live_subs.txt
echo "====================================="
echo ""

echo "[✔] Results saved in live_subs.txt"
