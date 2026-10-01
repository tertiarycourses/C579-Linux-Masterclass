#!/bin/bash
# makefiles.sh - create a demo file set with brace expansion
mkdir -p ~/demo && cd ~/demo
touch new_file.txt
touch apple_{A,B}{1..3}
echo "Created in ~/demo:"
ls
