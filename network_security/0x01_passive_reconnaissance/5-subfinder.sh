#!/bin/bash
export PATH=$PATH:~/go/bin
subfinder -d "$1" -o "$1.txt" -oI
