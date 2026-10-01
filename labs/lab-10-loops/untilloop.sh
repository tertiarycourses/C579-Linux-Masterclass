#!/bin/bash
# untilloop.sh - until runs UNTIL the condition becomes true
i=1
until [ "$i" -gt 5 ]; do
  echo "until count: $i"
  (( i++ ))
done
