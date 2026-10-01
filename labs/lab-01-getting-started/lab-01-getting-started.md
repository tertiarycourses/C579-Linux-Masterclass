# Lab 1 — Getting Started with the KillerCoda Ubuntu Playground

**Course:** Linux Masterclass (C579)  
**Topic 01:** Linux Fundamental  
**Objective:** Analyse the components of a Linux release — kernel, shell and distribution  
**Platform:** [KillerCoda Ubuntu Playground](https://killercoda.com/playgrounds/scenario/ubuntu)

## Goal

Launch the free browser-based KillerCoda Ubuntu playground, explore the terminal, and identify the components of the running Linux release: the kernel version, the distribution and the shell.

## What you'll build

A working Ubuntu lab environment with the course exercise files cloned from GitHub.

**Tools:** KillerCoda Ubuntu playground, bash, git

## Files in this lab

- `sysinfo.sh`

## Step-by-step

1. Open the KillerCoda Ubuntu playground in your browser and sign in (free account)

   ```bash
   https://killercoda.com/playgrounds/scenario/ubuntu
   ```

2. Confirm who you are logged in as

   ```bash
   whoami
   ```

3. Identify the kernel release and system architecture

   ```bash
   uname -a
   ```

4. Identify the Ubuntu distribution and release

   ```bash
   lsb_release -a
   ```

5. Inspect the distribution details recorded in the os-release file

   ```bash
   cat /etc/os-release
   ```

6. Check which shell you are running

   ```bash
   echo $SHELL
   ```

7. Clone the course exercise files from GitHub

   ```bash
   git clone https://github.com/tertiarycourses/C579-Linux-Masterclass.git course
   ```

8. List the lab folders you just downloaded

   ```bash
   ls course/labs
   ```

9. Run the provided system-report script to summarise your Linux release components

   ```bash
   bash course/labs/lab-01-getting-started/sysinfo.sh
   ```


## Test it

uname -a shows a Linux kernel, lsb_release -a shows Ubuntu, and sysinfo.sh prints a system report with the kernel, distro, shell, uptime and disk usage.
