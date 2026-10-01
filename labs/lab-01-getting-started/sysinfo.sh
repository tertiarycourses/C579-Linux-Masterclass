#!/bin/bash
# sysinfo.sh - report the components of this Linux release
echo "===== Linux System Report ====="
echo "User        : $(whoami)"
echo "Hostname    : $(hostname)"
echo "Kernel      : $(uname -r)"
echo "Architecture: $(uname -m)"
echo "Distro      : $(. /etc/os-release && echo "$PRETTY_NAME")"
echo "Shell       : $SHELL"
echo "Uptime      : $(uptime -p)"
echo "Disk usage  :"
df -h / | tail -1
echo "==============================="
