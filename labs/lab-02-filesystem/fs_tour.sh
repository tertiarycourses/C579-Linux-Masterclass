#!/bin/bash
# fs_tour.sh - tour the Linux file system hierarchy
for d in /bin /etc /home /opt /tmp /usr /var; do
  echo "== $d =="
  ls "$d" 2>/dev/null | head -5
  echo
done
echo "Root directory (/) is the top of the hierarchy."
