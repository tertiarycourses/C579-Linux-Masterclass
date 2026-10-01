# Lab 13 — Managing Processes and Scheduling with Cron

**Course:** Linux Masterclass (C579)  
**Topic 03:** Linux Networking Configuration  
**Objective:** Execute configuration tests on running processes and schedule automated jobs  
**Platform:** [KillerCoda Ubuntu Playground](https://killercoda.com/playgrounds/scenario/ubuntu)

## Goal

Inspect and control processes with ps, top and kill; run jobs in the background with &, bg and fg; then automate a script with a cron schedule and verify it from its log.

## What you'll build

A cron job that runs logdate.sh every minute and appends timestamps to ~/cron.log.

**Tools:** ps, top, kill, cron, crontab

## Files in this lab

- `logdate.sh`

## Step-by-step

1. List your processes, then everything on the system

   ```bash
   ps && ps aux | head
   ```

2. Watch processes interactively with top (press q to quit)

   ```bash
   top -n 1 | head -15
   ```

3. Start a long-running background job with &

   ```bash
   sleep 600 &
   ```

4. List jobs and find the sleep's process ID

   ```bash
   jobs && ps aux | grep 'sleep 600' | grep -v grep
   ```

5. Kill the background process by PID (old-deck exercise)

   ```bash
   kill $(pgrep -f 'sleep 600') && jobs
   ```

6. Open a second bash shell, find its PID with ps aux | grep bash, and kill it

   ```bash
   bash & ps aux | grep bash | head && kill %+
   ```

7. Copy logdate.sh — a one-line script that appends the date to ~/cron.log

   ```bash
   cp ~/course/labs/lab-13-processes-cron/logdate.sh ~/scripts/ && chmod +x ~/scripts/logdate.sh
   ```

8. Install a crontab entry that runs it every minute

   ```bash
   ( crontab -l 2>/dev/null; echo '* * * * * $HOME/scripts/logdate.sh' ) | crontab -
   ```

9. Confirm the schedule is installed and cron is running

   ```bash
   crontab -l && sudo service cron start
   ```

10. Wait a minute or two, then watch the log grow in real time

   ```bash
   tail -f ~/cron.log
   ```

11. Remove the schedule when done

   ```bash
   crontab -r
   ```


## Test it

The killed sleep disappears from jobs, and ~/cron.log gains one timestamp line per minute while the crontab entry is active.
