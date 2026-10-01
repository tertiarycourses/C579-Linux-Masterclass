# Lab 9 — Conditionals — if, test and case

**Course:** Linux Masterclass (C579)  
**Topic 02:** Linux Shell Script  
**Objective:** Configure scripts that branch on test results  
**Platform:** [KillerCoda Ubuntu Playground](https://killercoda.com/playgrounds/scenario/ubuntu)

## Goal

Branch your scripts: if/elif/else with test brackets for numeric, string and file checks, and the case statement for multi-way selection.

## What you'll build

checknum.sh (positive/negative/zero), filecheck.sh (file tests) and fruitcase.sh (case menu).

**Tools:** bash, test

## Files in this lab

- `checknum.sh`
- `filecheck.sh`
- `fruitcase.sh`

## Step-by-step

1. Copy the lab scripts into your scripts folder

   ```bash
   cd ~/scripts && cp ~/course/labs/lab-09-conditionals/*.sh .
   ```

2. Study checknum.sh — if / elif / else with numeric tests -gt, -lt, -eq

   ```bash
   cat checknum.sh
   ```

3. Run it against different numbers

   ```bash
   bash checknum.sh 5 && bash checknum.sh -3 && bash checknum.sh 0
   ```

4. Study filecheck.sh — file tests: -e exists, -f regular file, -d directory, -x executable

   ```bash
   cat filecheck.sh
   ```

5. Test it against a file that exists and one that doesn't

   ```bash
   bash filecheck.sh /etc/hostname && bash filecheck.sh /no/such/file
   ```

6. Compare strings with = and != inside [ ]

   ```bash
   s='linux'; if [ "$s" = 'linux' ]; then echo match; fi
   ```

7. Study fruitcase.sh — case pattern matching with | alternatives and a *) default

   ```bash
   cat fruitcase.sh
   ```

8. Run the case script with different fruits

   ```bash
   bash fruitcase.sh apple && bash fruitcase.sh durian
   ```


## Test it

checknum.sh classifies 5, -3 and 0 correctly; filecheck.sh reports /etc/hostname as an existing regular file; fruitcase.sh hits its default branch for durian.
