#!/bin/bash
# Subdomain enumeration script
# Usage: ./subdomain_enum.sh example.com

if [ -z "$1" ]; then
  echo "Usage: $0 domain.com"
  exit 1
fi

DOMAIN=$1
OUTPUT="subdomains.txt"

echo "[+] Enumerating subdomains for $DOMAIN"

subfinder -d "$DOMAIN" -silent > "$OUTPUT"

echo "[+] Saved results to $OUTPUT"
