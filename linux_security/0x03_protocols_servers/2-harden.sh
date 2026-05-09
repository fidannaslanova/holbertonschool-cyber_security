#!/bin/bash
find / -type d -perm -o+w 2>/dev/null | tee /tmp/ww_dirs.txt && chmod o-w $(cat /tmp/ww_dirs.txt)
