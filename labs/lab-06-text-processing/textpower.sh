#!/bin/bash
# textpower.sh - text-processing pipeline examples
cd "$(dirname "$0")"
echo "== unique sorted fruits ==";      sort fruit.txt | uniq
echo "== fruits starting with s or p =="; grep '^[sp]' fruit.txt
echo "== count of apple ==";            grep -c apple fruit.txt
echo "== 2nd field of presidents CSV =="; cut -d',' -f2 us_presidents.csv | sort -u | head -5
