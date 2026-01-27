#!/bin/bash
# Basic web vulnerability scan
# Usage: ./basic_web_scan.sh example.com

if [ -z "$1" ]; then
  echo "Usage: $0 example.com"
  exit 1
fi

TARGET=$1

echo "[+] Running Nmap scan"
nmap -p 80,443 -sV -sC "$TARGET"

echo "[+] Running Nikto"
nikto -h "http://$TARGET"

echo "[+] Detecting technologies"
whatweb "$TARGET"

