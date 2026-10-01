#!/bin/bash
# audit.sh - security audit script: one function per check, dated report
report=$HOME/audit-$(date +%F).txt

check_uid0() {
  extra=$(awk -F: '$3==0 && $1!="root" {print $1}' /etc/passwd)
  if [ -z "$extra" ]; then
    echo "PASS: only root has UID 0"
  else
    echo "FAIL: extra UID-0 accounts: $extra"
  fi
}

check_world_writable() {
  files=$(find "$HOME" -maxdepth 3 -type f -perm -o+w 2>/dev/null)
  if [ -z "$files" ]; then
    echo "PASS: no world-writable files under $HOME"
  else
    echo "FAIL: world-writable files found:"
    echo "$files"
  fi
}

check_listening() {
  echo "INFO: listening services (review each one):"
  ss -tuln | tail -n +2
}

check_disk() {
  use=$(df / --output=pcent | tail -1 | tr -dc '0-9')
  if [ "$use" -lt 90 ]; then
    echo "PASS: root filesystem at ${use}% capacity"
  else
    echo "FAIL: root filesystem nearly full (${use}%)"
  fi
}

{
  echo "===== Security Audit Report - $(date) ====="
  check_uid0
  check_world_writable
  check_listening
  check_disk
  echo "==========================================="
} | tee "$report"

echo "Report saved to $report"
