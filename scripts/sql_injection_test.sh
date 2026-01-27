#!/bin/bash
# SQL Injection test using sqlmap
# Usage: ./sql_injection_test.sh "http://site/page.php?id=1"

if [ -z "$1" ]; then
  echo "Usage: $0 \"http://example.com/page.php?id=1\""
  exit 1
fi

URL=$1

sqlmap -u "$URL" --batch --level=2 --risk=1
