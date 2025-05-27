#!/bin/bash 
file=targets.txt           

if [ ! -d logs ]; then
	mkdir -p logs
fi

while read -r target || [ -n "$target" ]; do

        target=$(echo "$target" | xargs) [ -z "$target" ] && continue

        nmap -Pn "$target" -sV \
        --script "http-headers,http-enum,ssl-cert,ssl-enum-ciphers" \
        --script-args "http.useragent=Mozilla/5.0,test" \
        -T3 --max-rate 50 --max-retries 2 \
        -oN "logs/${target}.log"

done < "$file"