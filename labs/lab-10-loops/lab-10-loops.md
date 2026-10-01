# Lab 10 — Loops — for, while and until

**Course:** Linux Masterclass (C579)  
**Topic 02:** Linux Shell Script  
**Objective:** Configure scripts that repeat deployment steps over many items  
**Platform:** [KillerCoda Ubuntu Playground](https://killercoda.com/playgrounds/scenario/ubuntu)

## Goal

Automate repetition: for loops over lists, ranges and files; while and until loops with counters; and break/continue to control the flow.

## What you'll build

forloop.sh, countdown.sh (while) and a renamer one-liner that processes a batch of files.

**Tools:** bash

## Files in this lab

- `countdown.sh`
- `forloop.sh`
- `untilloop.sh`

## Step-by-step

1. Copy the lab scripts

   ```bash
   cd ~/scripts && cp ~/course/labs/lab-10-loops/*.sh .
   ```

2. Study forloop.sh — iterate a word list and a {1..5} range

   ```bash
   cat forloop.sh
   ```

3. Run it

   ```bash
   bash forloop.sh
   ```

4. Loop over files with a wildcard directly in the shell

   ```bash
   for f in /etc/*.conf; do echo "config: $f"; done | head
   ```

5. Study countdown.sh — a while loop with a counter and (( i-- ))

   ```bash
   cat countdown.sh
   ```

6. Run the countdown

   ```bash
   bash countdown.sh 5
   ```

7. Study untilloop.sh — until runs UNTIL the condition becomes true

   ```bash
   cat untilloop.sh
   ```

8. Run it and compare with while

   ```bash
   bash untilloop.sh
   ```

9. Use break and continue — skip 3, stop at 7

   ```bash
   for i in {1..9}; do [ $i -eq 3 ] && continue; [ $i -eq 7 ] && break; echo $i; done
   ```

10. Batch-create then batch-rename files with a loop

   ```bash
   mkdir -p ~/batch && cd ~/batch && touch report_{1..5}.txt && for f in report_*.txt; do mv "$f" "${f%.txt}.bak"; done && ls
   ```


## Test it

countdown.sh 5 counts 5-4-3-2-1 then 'Lift off!', the break/continue loop prints 1 2 4 5 6, and ~/batch holds report_1.bak … report_5.bak.
