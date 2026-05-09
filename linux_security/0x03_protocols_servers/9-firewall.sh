#!/bin/bash
# Set up basic iptables rules to block all incoming traffic except SSH
iptables -A INPUT -p tcp --dport 22 -j ACCEPT && iptables -A INPUT -j DROP
