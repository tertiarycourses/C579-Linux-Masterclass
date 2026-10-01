#!/bin/bash
# backup.sh - archive a directory into a dated .tar.gz with verification
if [ $# -ne 1 ]; then
  echo "Usage: $0 <directory-to-back-up>"
  exit 1
fi
src=$1
if [ ! -d "$src" ]; then
  echo "Error: $src is not a directory"
  exit 2
fi
dest=$HOME/backups
mkdir -p "$dest"
name=$(basename "$src")-$(date +%F).tar.gz
if tar czf "$dest/$name" -C "$(dirname "$src")" "$(basename "$src")"; then
  echo "Backup created: $dest/$name ($(du -h "$dest/$name" | cut -f1))"
  echo "Contents:"
  tar tzf "$dest/$name" | head
else
  echo "Backup FAILED"
  exit 3
fi
