# Lab 17 — Building a Security Audit Script

**Course:** Linux Masterclass (C579)  
**Topic 04:** Linux Security  
**Objective:** Implement a script that audits the configuration and surfaces improvements  
**Platform:** [KillerCoda Ubuntu Playground](https://killercoda.com/playgrounds/scenario/ubuntu)

## Goal

Combine everything you learned — functions, conditionals, loops, pipes and text processing — into audit.sh, a security audit script that checks accounts, permissions, listening services and disk usage, then writes a timestamped report.

## What you'll build

audit.sh — a security audit tool producing ~/audit-YYYY-MM-DD.txt with a finding per check.

**Tools:** bash, awk, find, ss, df

## Files in this lab

- `audit.sh`

## Step-by-step

1. Copy and study audit.sh — one function per check, a report built with redirection

   ```bash
   cp ~/course/labs/lab-17-security-audit/audit.sh ~/scripts/ && cat ~/scripts/audit.sh
   ```

2. Run the audit

   ```bash
   bash ~/scripts/audit.sh
   ```

3. Read the report it generated

   ```bash
   cat ~/audit-*.txt
   ```

4. Interpret each finding: UID-0 accounts, world-writable files, listening ports, disk usage
5. Fix a finding — remove world-write from any flagged file — and re-run the audit

   ```bash
   chmod o-w <flagged-file> && bash ~/scripts/audit.sh
   ```

6. Extend the script: add a check that the ufw firewall is active (exit code of ufw status)

   ```bash
   sudo ufw status | grep -q 'Status: active' && echo PASS || echo FAIL
   ```

7. Schedule the audit to run daily at 07:00 with cron — continuous improvement

   ```bash
   ( crontab -l 2>/dev/null; echo '0 7 * * * $HOME/scripts/audit.sh' ) | crontab - && crontab -l
   ```

8. Remove the schedule when done

   ```bash
   crontab -r
   ```


## Test it

audit.sh writes a dated report listing each check with PASS/FAIL, the re-run shows your fix flipped a FAIL to PASS, and crontab -l shows the daily 07:00 entry before cleanup.
