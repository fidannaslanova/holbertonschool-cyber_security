#!/bin/bash
echo "${1#\{xor\}}" | base64 -d | tr -d "\n" | xxd -p | fold -w2 | while read -r b; do printf "\\x$(printf "%02x" $(( 0x$b ^ 0x5F )))"; done
