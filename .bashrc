# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

PS1='\[\e\\\][\u@\h \W]\$ '

alias ls='ls -B --color=auto'
alias ll='ls -l -h'
alias la='ls -a'
alias df='df -h'
alias du='du -h'
alias diff='diff -s'

if [ -f /usr/bin/gnome-terminal ]; then
    alias xterm='/usr/bin/gnome-terminal'
fi


case $TERM in
    xterm*)
        export PROMPT_COMMAND='echo -ne "\e]0;$USER@${HOSTNAME%%.*}\a"'
        ;;
    screen)
        export PROMPT_COMMAND='echo -ne "\eP\e]0;$USER@${HOSTNAME%%.*}\a\e\\"; echo -ne "\ek$(pwd)\e\\"'
        ;;
esac

