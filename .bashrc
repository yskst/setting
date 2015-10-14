# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

PS1='\[\e\\\][\u@\h \W]\$ '

alias ls='ls -B'
alias ll='ls -l -h'
alias la='ls -a'
alias df='df -h'
alias du='du -h'
alias diff='diff -s'

if [ -f /usr/bin/gnome-terminal ]; then
    alias xterm='/usr/bin/gnome-terminal'
fi

export PROMPT_COMMAND='echo -ne "\033]0;$PWD\007"'
