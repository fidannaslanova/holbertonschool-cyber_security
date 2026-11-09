#!/bin/bash
echo "${1#\{xor\}}" | base64 -d | python3 -c "import sys;sys.stdout.write(''.join(chr(b^0x5F) for b in sys.stdin.buffer.read()))"
