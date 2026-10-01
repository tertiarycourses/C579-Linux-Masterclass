# Lab 8 — User Input, Arguments and Arithmetic

**Course:** Linux Masterclass (C579)  
**Topic 02:** Linux Shell Script  
**Objective:** Configure scripts that accept parameters for flexible deployment  
**Platform:** [KillerCoda Ubuntu Playground](https://killercoda.com/playgrounds/scenario/ubuntu)

## Goal

Make scripts interactive and reusable: read user input, use positional parameters $1..$9, $#, $@ and $0, and calculate with $(( )) arithmetic expansion.

## What you'll build

greet.sh (reads your name), args.sh (echoes its arguments) and calc.sh (adds two numbers).

**Tools:** bash, read

## Files in this lab

- `args.sh`
- `calc.sh`
- `greet.sh`

## Step-by-step

1. Change into your scripts directory and copy the lab scripts

   ```bash
   cd ~/scripts && cp ~/course/labs/lab-08-input-arguments/*.sh .
   ```

2. Study greet.sh — read -p prompts the user and stores the answer

   ```bash
   cat greet.sh
   ```

3. Run it and type your name when prompted

   ```bash
   bash greet.sh
   ```

4. Study args.sh — $0 is the script, $1/$2 the arguments, $# the count, $@ all of them

   ```bash
   cat args.sh
   ```

5. Run it with two arguments and check each expansion

   ```bash
   bash args.sh apple banana
   ```

6. Run it with five arguments — what changes?

   ```bash
   bash args.sh a b c d e
   ```

7. Study calc.sh — $(( )) performs integer arithmetic

   ```bash
   cat calc.sh
   ```

8. Add 15 and 27 with calc.sh

   ```bash
   bash calc.sh 15 27
   ```

9. Experiment with arithmetic expansion directly in the shell

   ```bash
   echo $((7*6)) && x=10 && echo $((x+5))
   ```


## Test it

greet.sh greets you by the name you typed, args.sh reports the right count with $#, and calc.sh 15 27 prints 42.
