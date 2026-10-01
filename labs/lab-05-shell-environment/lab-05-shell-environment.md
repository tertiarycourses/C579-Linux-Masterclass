# Lab 5 — Customising the Shell Environment

**Course:** Linux Masterclass (C579)  
**Topic 02:** Linux Shell Script  
**Objective:** Configure the shell environment used to run integration scripts  
**Platform:** [KillerCoda Ubuntu Playground](https://killercoda.com/playgrounds/scenario/ubuntu)

## Goal

Configure your working environment: create aliases, set environment variables, extend PATH, customise the PS1 prompt, and persist the changes in ~/.bashrc.

## What you'll build

A personalised shell with a cls alias, a custom prompt and an extended PATH that survives new sessions.

**Tools:** bash, nano, env

## Files in this lab

- `bashrc_snippet.sh`

## Step-by-step

1. List your current aliases

   ```bash
   alias
   ```

2. Create aliases to fix a typo and clear the screen

   ```bash
   alias grpe='grep' && alias cls='clear'
   ```

3. Try the new aliases, then remove one

   ```bash
   cls && unalias grpe
   ```

4. Set an environment variable and read it back (no spaces around =)

   ```bash
   MYNAME='Alfred' && echo $MYNAME
   ```

5. Export it so child processes inherit it

   ```bash
   export MYNAME && bash -c 'echo $MYNAME'
   ```

6. Inspect the command search path

   ```bash
   echo $PATH
   ```

7. Append a directory to PATH for this session

   ```bash
   mkdir -p ~/bin && export PATH="${PATH}:$HOME/bin"
   ```

8. Customise the prompt to show user and directory

   ```bash
   export PS1='\u@\h:\w$ '
   ```

9. Persist the alias, PATH and prompt by appending them to ~/.bashrc

   ```bash
   echo "alias cls='clear'" >> ~/.bashrc && echo 'export PATH="${PATH}:$HOME/bin"' >> ~/.bashrc
   ```

10. Reload the configuration and review your command history

   ```bash
   source ~/.bashrc && history | tail
   ```


## Test it

After source ~/.bashrc, cls clears the screen, echo $PATH ends with your ~/bin, and the prompt shows user@host:directory.
