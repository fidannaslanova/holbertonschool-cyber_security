#!/bin/bash
result=$(grep -i "starttls\|tls" /etc/postfix/main.cf 2>/dev/null)
if [ -z "$result" ]
then
    echo "STARTTLS not configured"
else
    echo "$result"
fi
