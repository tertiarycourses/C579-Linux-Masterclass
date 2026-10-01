#!/bin/bash
# trapit.sh - trap cleans up on exit or Ctrl-C
cleanup() {
  echo
  echo "Trap fired - cleaning up temporary files..."
  rm -f /tmp/trapit.$$
  exit 0
}
trap cleanup INT TERM EXIT
touch /tmp/trapit.$$
echo "Working... press Ctrl-C to interrupt (or wait 30s)"
sleep 30
