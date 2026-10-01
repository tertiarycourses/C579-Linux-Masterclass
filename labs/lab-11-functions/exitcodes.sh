#!/bin/bash
# exitcodes.sh - exit codes tell the caller what happened
check_file() {
  if [ -f "$1" ]; then
    echo "OK: $1 exists"
    return 0
  else
    echo "MISSING: $1"
    return 2
  fi
}
check_file /etc/hostname
check_file /no/such/file
status=$?
echo "Last check returned $status"
exit $status
