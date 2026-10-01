# Lab 6 — Redirection, Pipes and Text Processing

**Course:** Linux Masterclass (C579)  
**Topic 02:** Linux Shell Script  
**Objective:** Select and combine text-processing tools for build and release pipelines  
**Platform:** [KillerCoda Ubuntu Playground](https://killercoda.com/playgrounds/scenario/ubuntu)

## Goal

Master the Unix I/O model: redirect stdout/stderr, pipe commands together, and process text with grep, regular expressions, sort, cut, uniq, wc, head, tail and diff.

## What you'll build

A processed fruit list — sorted, de-duplicated and pattern-matched — plus a saved process listing.

**Tools:** bash, grep, sort, cut, uniq, wc, diff

## Files in this lab

- `fruit.txt`
- `lorem_ipsum.txt`
- `original_file.txt`
- `people.txt`
- `revised_file.txt`
- `textpower.sh`
- `us_presidents.csv`

## Step-by-step

1. Change into the lab folder with the exercise files

   ```bash
   cd ~/course/labs/lab-06-text-processing
   ```

2. Page through a long file with head and tail

   ```bash
   head lorem_ipsum.txt && tail -3 lorem_ipsum.txt
   ```

3. Redirect a sorted copy of fruit.txt into a new file (overwrite with >)

   ```bash
   sort fruit.txt > fruit_sorted.txt
   ```

4. Append a new fruit to the file with >>

   ```bash
   echo 'mango' >> fruit_sorted.txt
   ```

5. Feed a file into a command with <

   ```bash
   wc -l < fruit_sorted.txt
   ```

6. Pipe sort into uniq to drop duplicates

   ```bash
   sort fruit.txt | uniq | head
   ```

7. Save the full process list to a file (old-deck activity)

   ```bash
   ps aux > processes.txt
   ```

8. Search with grep: case-insensitive, whole word, count and invert

   ```bash
   grep -i Apple fruit.txt && grep -w apple fruit.txt && grep -c apple fruit.txt
   ```

9. Use regular expressions — anchors, classes and alternation

   ```bash
   grep '^p' fruit.txt && grep 'berry$' fruit.txt && grep -E 'apple|pear' fruit.txt
   ```

10. Find every fruit starting with s or p (old-deck activity)

   ```bash
   grep '^[sp]' fruit.txt
   ```

11. Cut the 2nd field out of the presidents CSV and sort it uniquely

   ```bash
   cut -d',' -f2 us_presidents.csv | sort -u | head
   ```

12. Compare two files with diff

   ```bash
   diff original_file.txt revised_file.txt
   ```

13. Silence output you don't want with the null device

   ```bash
   cat fruit.txt > /dev/null
   ```


## Test it

grep -c apple fruit.txt returns a count, grep '^[sp]' lists only s/p fruits, processes.txt contains your ps aux snapshot, and the pipe chain prints unique sorted fruits.
