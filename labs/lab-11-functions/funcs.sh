#!/bin/bash
# funcs.sh - functions, arguments and local variables
greet() {
  local name=$1
  echo "Hello, $name!"
}
add() {
  local sum=$(( $1 + $2 ))
  echo "$1 + $2 = $sum"
  return 0
}
greet "Linux learner"
greet "$(whoami)"
add 3 4
echo "add returned exit status $?"
