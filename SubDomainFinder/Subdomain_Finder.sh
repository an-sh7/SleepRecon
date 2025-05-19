#!/bin/bash

# Usage: ./v2.sh domain.com

# Subfinder is required
domain="$1"
output="subs_$domain.txt"

subfinder -d "$domain" -silent | sort -u > "$output"
echo "[*] Subdomains saved to $output"
