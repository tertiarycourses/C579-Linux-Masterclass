# bashrc_snippet.sh - append these lines to ~/.bashrc to persist your environment
# Aliases
alias cls='clear'
alias ll='ls -lah'
# Extend the command search path with your own scripts
export PATH="${PATH}:$HOME/bin"
# Customise the prompt: user@host:directory$
export PS1='\u@\h:\w$ '
