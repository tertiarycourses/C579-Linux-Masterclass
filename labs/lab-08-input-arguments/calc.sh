#!/bin/bash
# calc.sh - arithmetic expansion
if [ $# -ne 2 ]; then
  echo "Usage: $0 num1 num2"
  exit 1
fi
sum=$(( $1 + $2 ))
product=$(( $1 * $2 ))
echo "$1 + $2 = $sum"
echo "$1 x $2 = $product"
