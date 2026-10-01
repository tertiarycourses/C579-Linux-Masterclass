# Lab 2 — Exploring the Linux File System

**Course:** Linux Masterclass (C579)  
**Topic 01:** Linux Fundamental  
**Objective:** Analyse how a Linux system organises its release components on disk  
**Platform:** [KillerCoda Ubuntu Playground](https://killercoda.com/playgrounds/scenario/ubuntu)

## Goal

Navigate the Linux file system hierarchy from the root directory down: identify what lives in /bin, /etc, /home, /var and friends, use absolute and relative paths, and reveal hidden files.

## What you'll build

A mental map of the Linux directory tree and fluency with pwd, cd, ls and tree.

**Tools:** bash, coreutils, tree

## Files in this lab

- `fs_tour.sh`

## Step-by-step

1. Print your current (home) directory

   ```bash
   pwd
   ```

2. List the top of the file system hierarchy

   ```bash
   ls /
   ```

3. Look at system configuration files in /etc

   ```bash
   ls /etc | head
   ```

4. Look at log files in /var/log

   ```bash
   ls /var/log
   ```

5. Change into /etc with an absolute path, then return home with the tilde shortcut

   ```bash
   cd /etc && pwd && cd ~ && pwd
   ```

6. Move up one level with the .. shortcut

   ```bash
   cd .. && pwd && cd ~
   ```

7. Show a long listing with file sizes in human-readable form

   ```bash
   ls -lh /var/log
   ```

8. Show all files including hidden dot files in your home directory

   ```bash
   ls -la ~
   ```

9. Install and use tree to visualise a directory tree two levels deep

   ```bash
   sudo apt install -y tree && tree -d -L 2 /var
   ```

10. Identify the file type of a few files

   ```bash
   file /bin/ls /etc/hostname /var/log
   ```


## Test it

You can explain what /bin, /etc, /home, /tmp, /usr and /var hold, and ls -la ~ reveals hidden dot files such as .bashrc.
