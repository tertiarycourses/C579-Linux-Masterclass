# Lab 16 — Hardening Linux Security

**Course:** Linux Masterclass (C579)  
**Topic 04:** Linux Security  
**Objective:** Identify potential improvements to the Linux security configuration and implement them  
**Platform:** [KillerCoda Ubuntu Playground](https://killercoda.com/playgrounds/scenario/ubuntu)

## Goal

Apply the security principles: enforce least privilege on files, lock down SSH-style access, review accounts, and enable the ufw firewall so only the services you need are reachable.

## What you'll build

A hardened lab machine — private key file at 600, firewall enabled with only SSH/HTTP allowed, and a reviewed account list.

**Tools:** chmod, passwd, ufw, ss, sudo

## Files in this lab

- `harden.sh`

## Step-by-step

1. Review the accounts on the system — real users have a shell, service accounts mostly don't

   ```bash
   cut -d: -f1,7 /etc/passwd | head -15
   ```

2. Confirm only root has UID 0 (any other UID-0 user is a red flag)

   ```bash
   awk -F: '$3==0 {print $1}' /etc/passwd
   ```

3. Create a sensitive file and apply least privilege — owner-only read/write

   ```bash
   touch ~/secret.key && chmod 600 ~/secret.key && ls -l ~/secret.key
   ```

4. Find world-writable files in your home tree — each is a risk to fix

   ```bash
   find ~ -maxdepth 2 -type f -perm -o+w 2>/dev/null
   ```

5. Check which services are listening before the firewall goes up

   ```bash
   ss -tuln
   ```

6. Install and enable the ufw firewall, allowing only SSH and HTTP

   ```bash
   sudo apt install -y ufw && sudo ufw allow ssh && sudo ufw allow http && sudo ufw --force enable
   ```

7. Verify the firewall rules

   ```bash
   sudo ufw status verbose
   ```

8. Practise least privilege with sudo — run one privileged command, not a root shell

   ```bash
   sudo tail -3 /var/log/dpkg.log
   ```

9. Discuss: which insecure services would you replace? (FTP→SFTP, telnet→SSH, HTTP→HTTPS)

## Test it

ls -l shows -rw------- on secret.key, ufw status reports active with only 22 and 80 allowed, and the UID-0 check returns root alone.
