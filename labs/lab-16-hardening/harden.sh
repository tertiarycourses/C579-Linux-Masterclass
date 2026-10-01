#!/bin/bash
# harden.sh - apply baseline hardening steps
echo "== accounts with UID 0 (should be root only) =="
awk -F: '$3==0 {print $1}' /etc/passwd
echo "== applying least privilege to ~/secret.key =="
touch "$HOME/secret.key"
chmod 600 "$HOME/secret.key"
ls -l "$HOME/secret.key"
echo "== world-writable files under \$HOME (fix any found) =="
find "$HOME" -maxdepth 2 -type f -perm -o+w 2>/dev/null
echo "== enabling ufw firewall (SSH + HTTP only) =="
sudo apt install -y ufw > /dev/null
sudo ufw allow ssh > /dev/null
sudo ufw allow http > /dev/null
sudo ufw --force enable
sudo ufw status verbose
