# Lab 3 — Working with Files, Directories and Links

**Course:** Linux Masterclass (C579)  
**Topic 01:** Linux Fundamental  
**Objective:** Coordinate release files — create, copy, move, remove and link them  
**Platform:** [KillerCoda Ubuntu Playground](https://killercoda.com/playgrounds/scenario/ubuntu)

## Goal

Create and manage files and directories with touch, mkdir, cp, mv and rm; generate file sets with brace expansion; edit with nano; and compare hard links against symbolic links.

## What you'll build

A working directory of files you created, renamed, moved and linked — including a hard link that survives deletion of its original and a symlink that breaks.

**Tools:** bash, coreutils, nano

## Files in this lab

- `lorem_ipsum.txt`
- `makefiles.sh`

## Step-by-step

1. Make a working directory and change into it

   ```bash
   mkdir ~/demo && cd ~/demo
   ```

2. Create an empty file with touch and check it

   ```bash
   touch new_file.txt && ls -l
   ```

3. Create six files at once with brace expansion

   ```bash
   touch apple_{A,B}{1..3}
   ```

4. Verify the expansion created apple_A1..apple_B3

   ```bash
   ls apple_*
   ```

5. Edit new_file.txt with nano — type a line, then Ctrl-X, y, Enter to save

   ```bash
   nano new_file.txt
   ```

6. Copy a file, then rename it with mv

   ```bash
   cp new_file.txt copy.txt && mv copy.txt renamed.txt
   ```

7. Move the file into a subdirectory

   ```bash
   mkdir sub && mv renamed.txt sub/
   ```

8. Copy the lorem ipsum exercise file into your demo directory

   ```bash
   cp ~/course/labs/lab-03-files-directories/lorem_ipsum.txt lorem.txt
   ```

9. Create a hard link and a symbolic link to lorem.txt

   ```bash
   ln lorem.txt lorem2 && ln -s lorem.txt lorem3
   ```

10. Delete the original and compare the links — the hard link still reads, the symlink is broken

   ```bash
   rm lorem.txt && cat lorem2 | head -1 ; cat lorem3
   ```

11. Clean up the broken symlink and remove the directory tree when done

   ```bash
   rm lorem3 && cd ~ && rm -r ~/demo
   ```


## Test it

cat lorem2 still shows the text after lorem.txt is deleted, while cat lorem3 reports 'No such file or directory' — you can explain why.
