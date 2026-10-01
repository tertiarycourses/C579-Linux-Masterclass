#!/bin/bash
# filecheck.sh - file tests
target=$1
if [ -z "$target" ]; then echo "Usage: $0 <path>"; exit 1; fi
if [ -e "$target" ]; then
  echo "$target exists"
  [ -f "$target" ] && echo "...and is a regular file"
  [ -d "$target" ] && echo "...and is a directory"
  [ -x "$target" ] && echo "...and is executable"
else
  echo "$target does not exist"
fi
