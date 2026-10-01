#!/bin/bash
# checknum.sh - if / elif / else with numeric tests
n=${1:-0}
if [ "$n" -gt 0 ]; then
  echo "$n is positive"
elif [ "$n" -lt 0 ]; then
  echo "$n is negative"
else
  echo "$n is zero"
fi
