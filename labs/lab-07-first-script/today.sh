#!/bin/bash
# today.sh - command substitution captures a command's output
today=$(date +%F)
now=$(date +%T)
echo "Today is $today and the time is $now"
echo "This machine has been up for $(uptime -p)"
