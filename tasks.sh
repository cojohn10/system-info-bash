#!/bin/bash

echo "System Hostname: "; hostname; echo""
echo "Operating System: "; grep PRETTY_NAME /etc/os-release; echo ""
echo "System Uptime: "; uptime; echo ""
echo "Linux Kernel Version: "; uname -r; echo ""
echo "CPU Information: "; lscpu | grep "Architecture\|Model\|^CPU\|Vendor"; echo ""
echo "Available Memory: "; free -h | grep "^Mem\|free"; echo ""
echo "IP Information: "; ip address; echo ""
echo "File system Information: "; df -h; echo ""
echo "Recent General Errors: "; grep -i "error" /var/log/syslog | tail -n 5