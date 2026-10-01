#!/bin/bash
# debugme.sh - switch tracing on and off with set -x / set +x
echo "Before tracing"
set -x
total=$(( 2 + 3 ))
echo "total=$total"
set +x
echo "After tracing"
