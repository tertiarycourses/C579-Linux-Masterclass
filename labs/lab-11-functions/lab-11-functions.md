# Lab 11 — Functions, Exit Status and Debugging

**Course:** Linux Masterclass (C579)  
**Topic 02:** Linux Shell Script  
**Objective:** Improve scripts with reusable functions and diagnose script issues  
**Platform:** [KillerCoda Ubuntu Playground](https://killercoda.com/playgrounds/scenario/ubuntu)

## Goal

Structure bigger scripts with functions, local variables and return values; read exit codes with $?; and debug with bash -x, set -x and trap.

## What you'll build

funcs.sh (function library), exitcodes.sh and a debugged script traced with set -x.

**Tools:** bash, trap

## Files in this lab

- `debugme.sh`
- `exitcodes.sh`
- `funcs.sh`
- `trapit.sh`

## Step-by-step

1. Copy the lab scripts

   ```bash
   cd ~/scripts && cp ~/course/labs/lab-11-functions/*.sh .
   ```

2. Study funcs.sh — define a function, pass it arguments, keep variables local

   ```bash
   cat funcs.sh
   ```

3. Run it and watch each function fire

   ```bash
   bash funcs.sh
   ```

4. Check the exit status of a good and a bad command with $?

   ```bash
   ls /etc > /dev/null; echo $? ; ls /nope 2>/dev/null; echo $?
   ```

5. Study exitcodes.sh — return values and exit N set the status your caller sees

   ```bash
   cat exitcodes.sh && bash exitcodes.sh; echo "script exited with $?"
   ```

6. Trace a script line by line with bash -x

   ```bash
   bash -x funcs.sh
   ```

7. Study debugme.sh — set -x switches tracing on mid-script, set +x off

   ```bash
   cat debugme.sh && bash debugme.sh
   ```

8. Study trapit.sh — trap cleans up on exit or Ctrl-C

   ```bash
   cat trapit.sh
   ```

9. Run trapit.sh and interrupt it with Ctrl-C to fire the trap

   ```bash
   bash trapit.sh
   ```


## Test it

funcs.sh prints output from each function, a failed ls returns a non-zero $?, bash -x shows each command prefixed with +, and Ctrl-C on trapit.sh prints the cleanup message.
