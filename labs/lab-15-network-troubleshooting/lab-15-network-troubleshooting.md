# Lab 15 — Network Configuration and Troubleshooting

**Course:** Linux Masterclass (C579)  
**Topic 03:** Linux Networking Configuration  
**Objective:** Execute network configuration tests and diagnose issues from the results  
**Platform:** [KillerCoda Ubuntu Playground](https://killercoda.com/playgrounds/scenario/ubuntu)

## Goal

Inspect and test Linux networking: interfaces and addresses with ip, name resolution with /etc/hosts, reachability with ping, sockets with ss — then run netcheck.sh to automate the diagnosis and interpret its report.

## What you'll build

netcheck.sh — a network health-check script that tests interface, DNS, gateway and web reachability and prints a PASS/FAIL report.

**Tools:** ip, ping, ss, getent, curl, ssh/scp (concept)

## Files in this lab

- `netcheck.sh`

## Step-by-step

1. List the network interfaces and their IP addresses

   ```bash
   ip addr
   ```

2. Show the routing table and identify the default gateway

   ```bash
   ip route
   ```

3. Check the hostname and its resolution

   ```bash
   hostname && getent hosts $(hostname)
   ```

4. Test reachability with ping (4 packets)

   ```bash
   ping -c 4 8.8.8.8
   ```

5. Test name resolution + reachability together

   ```bash
   ping -c 4 google.com
   ```

6. Map a friendly name in /etc/hosts and ping it

   ```bash
   echo '127.0.0.1 myapp.local' | sudo tee -a /etc/hosts && ping -c 2 myapp.local
   ```

7. List listening sockets and the services behind them

   ```bash
   ss -tuln
   ```

8. Fetch a page over HTTP to prove layer-7 connectivity

   ```bash
   curl -Is https://www.google.com | head -1
   ```

9. Copy and study netcheck.sh — each test maps to a diagnosis when it fails

   ```bash
   cp ~/course/labs/lab-15-network-troubleshooting/netcheck.sh ~/scripts/ && cat ~/scripts/netcheck.sh
   ```

10. Run the health check and read the PASS/FAIL report

   ```bash
   bash ~/scripts/netcheck.sh
   ```

11. Interpret: which failure would mean a DNS problem? A gateway problem? Discuss.

## Test it

ping 8.8.8.8 and ping google.com both succeed, ss -tuln lists the listening services, and netcheck.sh prints PASS for interface, gateway, DNS and web tests.
