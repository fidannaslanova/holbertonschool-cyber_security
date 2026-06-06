#!/bin/bash
hashcat -a 1 -m 0 "$1" wordlist1.txt wordlist2.txt --outfile=9-password.txt --outfile-format=2
