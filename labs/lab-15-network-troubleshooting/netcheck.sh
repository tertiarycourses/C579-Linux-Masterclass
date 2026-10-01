#!/bin/bash
# netcheck.sh - network health check with a PASS/FAIL report
pass() { echo "PASS: $1"; }
fail() { echo "FAIL: $1"; }

echo "===== Network Health Check ($(date)) ====="

# 1. Interface has an IP address
ip -4 addr show scope global | grep -q inet \
  && pass "interface has an IPv4 address" \
  || fail "no IPv4 address - check ip addr / DHCP"

# 2. Default gateway reachable
gw=$(ip route | awk '/default/ {print $3; exit}')
if [ -n "$gw" ] && ping -c 1 -W 2 "$gw" > /dev/null 2>&1; then
  pass "default gateway $gw reachable"
else
  fail "default gateway unreachable - check ip route / cabling"
fi

# 3. Internet reachable by IP (no DNS involved)
ping -c 1 -W 2 8.8.8.8 > /dev/null 2>&1 \
  && pass "internet reachable by IP (8.8.8.8)" \
  || fail "no route to internet - gateway or upstream problem"

# 4. DNS resolution works
getent hosts google.com > /dev/null \
  && pass "DNS resolves google.com" \
  || fail "DNS failure - check /etc/resolv.conf"

# 5. Web (layer 7) reachable
curl -s --max-time 5 -o /dev/null https://www.google.com \
  && pass "HTTPS fetch succeeded" \
  || fail "HTTPS fetch failed - proxy or firewall problem"

echo "==========================================="
