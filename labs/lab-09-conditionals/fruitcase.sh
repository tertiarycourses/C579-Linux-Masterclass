#!/bin/bash
# fruitcase.sh - case statement
fruit=${1:-unknown}
case $fruit in
  apple|pear)   echo "$fruit is a pome fruit" ;;
  banana)       echo "$fruit is a tropical fruit" ;;
  strawberry)   echo "$fruit is a berry (botanically, not quite!)" ;;
  *)            echo "I do not know the fruit '$fruit'" ;;
esac
