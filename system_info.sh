#!/bin/bash
# Linux System Info
# Purpose: Display basic system info for Linux

echo "==== SYSTEM INFO ===="
echo "Hostname: $(hostname)"
echo "OS Version: $(grep '^PRETTY_NAME=' /etc/os-release | cut -d= -f2 | tr -d '"')"
echo "Kernel Version: $(uname -r)"
echo
echo "==== SHOW UPTIME ===="
uptime -p
echo
echo "==== CPU INFO ===="
lscpu | grep "Model name\|CPU(s)"
echo
echo "==== MEMORY INFO ===="
free -h
echo
echo "==== DISK USAGE ===="
df -h --total | grep -v tmpfs
echo 
echo "==== LOGGED IN USERS ===="
who
echo 
echo "==== TOP 5 CPU PROCESSES ===="
ps -eo pid,comm,%cpu --sort=%cpu | head -6
echo
