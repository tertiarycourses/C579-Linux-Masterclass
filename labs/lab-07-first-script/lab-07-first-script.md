# Lab 7 — Your First Shell Script

**Course:** Linux Masterclass (C579)  
**Topic 02:** Linux Shell Script  
**Objective:** Select scripts as the tool for integrating and deploying software  
**Platform:** [KillerCoda Ubuntu Playground](https://killercoda.com/playgrounds/scenario/ubuntu)

## Goal

Write, save and execute your first Bash script: the #!/bin/bash shebang, echo output, variables, quoting rules and command substitution — then put it on your PATH.

## What you'll build

hello.sh and vars.sh — executable scripts that greet the user and report the date via command substitution.

**Tools:** bash, nano, chmod

## Files in this lab

- `hello.sh`
- `today.sh`
- `vars.sh`

## Step-by-step

1. Create a scripts directory and change into it

   ```bash
   mkdir -p ~/scripts && cd ~/scripts
   ```

2. Create hello.sh with the shebang and an echo line

   ```bash
   printf '#!/bin/bash\necho "Hello World from $(whoami)"\n' > hello.sh
   ```

3. Try to run it — permission is denied because it is not executable

   ```bash
   ./hello.sh
   ```

4. Make it executable and run it again

   ```bash
   chmod +x hello.sh && ./hello.sh
   ```

5. Create vars.sh using variables and quoting (single vs double quotes)

   ```bash
   cp ~/course/labs/lab-07-first-script/vars.sh . && cat vars.sh
   ```

6. Run vars.sh and study how $a, $b and $c interpolate inside double quotes

   ```bash
   bash vars.sh
   ```

7. Add command substitution — capture a command's output into a variable

   ```bash
   echo "today=$(date +%F)" && cp ~/course/labs/lab-07-first-script/today.sh . && bash today.sh
   ```

8. Copy hello.sh into ~/bin so it runs from anywhere on your PATH

   ```bash
   mkdir -p ~/bin && cp hello.sh ~/bin/ && hello.sh
   ```


## Test it

./hello.sh prints the greeting with your username, vars.sh prints 'Hello, I have 16 apples', and hello.sh runs from any directory once it is in ~/bin.
