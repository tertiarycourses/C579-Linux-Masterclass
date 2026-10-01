# Lab 12 — Automation Script — Backup with tar

**Course:** Linux Masterclass (C579)  
**Topic 02:** Linux Shell Script  
**Objective:** Select and configure a script that packages release files for deployment  
**Platform:** [KillerCoda Ubuntu Playground](https://killercoda.com/playgrounds/scenario/ubuntu)

## Goal

Put it all together: write backup.sh, a parameterised script that archives a directory with tar, gzip-compresses it, timestamps the filename, verifies the archive and reports disk usage.

## What you'll build

backup.sh — a reusable backup tool producing dated .tar.gz archives with a verification listing.

**Tools:** bash, tar, gzip, du, df

## Files in this lab

- `backup.sh`

## Step-by-step

1. Create some files worth backing up

   ```bash
   mkdir -p ~/project && touch ~/project/app_{1..5}.conf && echo data > ~/project/data.txt
   ```

2. Copy and study backup.sh — arguments, command substitution, tar czf, exit codes

   ```bash
   cd ~/scripts && cp ~/course/labs/lab-12-backup-script/backup.sh . && cat backup.sh
   ```

3. Run it against the project directory

   ```bash
   bash backup.sh ~/project
   ```

4. List the archive contents to verify the backup (tar tzf)

   ```bash
   tar tzf ~/backups/project-*.tar.gz | head
   ```

5. Check the archive size and free disk space

   ```bash
   du -h ~/backups && df -h / | tail -1
   ```

6. Extract the archive into a restore directory to prove it round-trips

   ```bash
   mkdir -p ~/restore && tar xzf ~/backups/project-*.tar.gz -C ~/restore && ls ~/restore
   ```

7. Run backup.sh with no argument — the usage message and exit 1 protect the user

   ```bash
   bash backup.sh; echo "exit=$?"
   ```


## Test it

A dated project-YYYY-MM-DD.tar.gz appears in ~/backups, tar tzf lists the five .conf files, the restore directory round-trips them, and a missing argument exits with status 1.
