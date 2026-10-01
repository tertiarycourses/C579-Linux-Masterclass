# Lab 4 — Users, Ownership and Permissions

**Course:** Linux Masterclass (C579)  
**Topic 01:** Linux Fundamental  
**Objective:** Coordinate access to release components with users, groups and permissions  
**Platform:** [KillerCoda Ubuntu Playground](https://killercoda.com/playgrounds/scenario/ubuntu)

## Goal

Work with the multiuser model: switch identities with su/sudo, read ls -l permission strings, and control access with chmod (alphabetic and octal), chown and umask.

## What you'll build

A fruit.txt file whose permissions you set to rw-r--r-- and rwxrwxrw-, plus a file owned by root.

**Tools:** bash, sudo, coreutils

## Files in this lab

- `fruit.txt`
- `perms.sh`

## Step-by-step

1. Confirm your identity and list what sudo lets you do

   ```bash
   whoami && sudo -l | head
   ```

2. Copy the fruit.txt exercise file to your home directory

   ```bash
   cp ~/course/labs/lab-04-permissions/fruit.txt ~/fruit.txt && cd ~
   ```

3. Decode the permission string in a long listing

   ```bash
   ls -l fruit.txt
   ```

4. Give user+group execute with alphabetic notation, then remove it

   ```bash
   chmod ug+x fruit.txt && ls -l fruit.txt && chmod ug-x fruit.txt
   ```

5. Set exact permissions rw-/r--/r-- with alphabetic notation

   ```bash
   chmod u=rw,g=r,o=r fruit.txt && ls -l fruit.txt
   ```

6. Set rwxrwxrw- using octal notation (776)

   ```bash
   chmod 776 fruit.txt && ls -l fruit.txt
   ```

7. Change the file's owner to root, then confirm you can no longer write to it

   ```bash
   sudo chown root fruit.txt && ls -l fruit.txt
   ```

8. Take ownership back with chown user:group

   ```bash
   sudo chown $(whoami):$(whoami) fruit.txt
   ```

9. Display the current file-creation mask and predict a new file's permissions

   ```bash
   umask
   ```

10. Create a file and verify the umask prediction (666 minus mask)

   ```bash
   touch masked.txt && ls -l masked.txt
   ```


## Test it

ls -l shows -rw-r--r-- after the alphabetic chmod and -rwxrwxrw- after chmod 776; the root-owned file refuses your write until you chown it back.
