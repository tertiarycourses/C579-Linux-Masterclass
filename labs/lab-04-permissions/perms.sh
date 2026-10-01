#!/bin/bash
# perms.sh - demonstrate permission changes on fruit.txt
cp "$(dirname "$0")/fruit.txt" ~/fruit.txt
cd ~
echo "Initial permissions:";        ls -l fruit.txt
chmod u=rw,g=r,o=r fruit.txt
echo "After chmod u=rw,g=r,o=r:";   ls -l fruit.txt
chmod 776 fruit.txt
echo "After chmod 776:";            ls -l fruit.txt
umask_now=$(umask)
echo "Current umask: $umask_now (new files get 666 minus this mask)"
