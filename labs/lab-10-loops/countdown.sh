#!/bin/bash
# countdown.sh - while loop with a counter
i=${1:-5}
while [ "$i" -gt 0 ]; do
  echo "$i..."
  (( i-- ))
  sleep 1
done
echo "Lift off!"
