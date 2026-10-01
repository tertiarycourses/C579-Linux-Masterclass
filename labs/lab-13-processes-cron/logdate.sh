#!/bin/bash
# logdate.sh - append a timestamp to ~/cron.log (schedule me with cron)
echo "$(date '+%Y-%m-%d %H:%M:%S') cron job ran" >> "$HOME/cron.log"
