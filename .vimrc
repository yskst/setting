
### keybord setting ###
bindkey -e        			# keybind set emacs mode.
#bindkey -v        			# keybind set vim mode.

bindkey "^H"    backward-delete-char
bindkey "^[[3~" delete-char
bindkey "^[[1~" beginning-of-line
bindkey "^[[4~" end-of-line

### miscellaneous setting ###
setopt auto_cd					 # if type dirctory name, execute cd
setopt correct    			 # fix command spel
setopt magic_equal_subst # after '=', complement(e.g. --prefix=/usr)
setopt prompt_subst			 # complement in prompt definition.
setopt notify						 # instantly show status of back ground jobs.
setopt equals						 # =command equal to `which command`

### complement setting ###
autoload -U compinit;compinit # on complemention
setopt auto_list							# show candidacy fo complemention
setopt auto_menu							# push Tab key, show candidacy in order
setopt list_packed						# candidate is packed and displayed.
# big or little letter isn't distinguished in complementation
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' 


### Glog ###
setopt extended_glob	# extend glob function
unsetopt caseglob			# big or small letter is not distinguished.


### History ###
HISTFILE=~/.history # file of history
HISTSIZE=100						# the number of history saving in memory
HISTSIZE=10000					# the number of history saving in file
setopt share_history		# share history other shells
setopt hist_reduce_blanks # excessive space deleted when save.

### Prompt ###
# coloring in prompt
autoload -U colors; colors
# normal user
tmp_prompt="[%{${fg[cyan]}%}%m@%n %{${reset_color}%}] "
tmp_prompt2="%{${fg[cyan]}%}%_> %{${reset_color}%}"
tmp_rprompt="%{${fg[green]}%}[%~]%{${reset_color}%}"
tmp_sprompt="%{${fg[yellow]}%}%r is correct? [Yes, No, Abort, Edit]:%{${reset_color}%}"

# root user. (set bold font and under bar)
if [ ${UID} -eq 0 ]; then
  tmp_prompt="%B%U${tmp_prompt}%u%b"
  tmp_prompt2="%B%U${tmp_prompt2}%u%b"
  tmp_rprompt="%B%U${tmp_rprompt}%u%b"
  tmp_sprompt="%B%U${tmp_sprompt}%u%b"
fi

PROMPT=$tmp_prompt    # normal prompt
PROMPT2=$tmp_prompt2  # secondly prompt(there is command two lines)
RPROMPT=$tmp_rprompt  # right side prompt
SPROMPT=$tmp_sprompt  # for spelling correction

### Title (user@hostname) ###
case "${TERM}" in
		kterm*|xterm*|)
		precmd() {
				echo -ne "\033]0;${USER}@${HOST%%.*}\007"
		}
		;;
esac


### setiing path ###
#if [ `hostname` = jupiter01.ailab.tj.chiba-u.jp ];then
#    PATH=/work/yousa/matlab/bin/:$PATH
#fi

export PATH=$PATH:/net/penguin/data/software/CentOS5/usr/ynakahara/local/bin:/net/penguin/data/software/CentOS5/bin:/net/penguin/data/software/CentOS6/bin
export PATH=/net/gliese/research1/yousa/path/bin:$PATH

#set cuda's param
export PATH=/usr/local/cuda-5.5/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda-5.5/lib64:/lib:/usr/local/cuda-5.5/lib:$LD_LIBRARY_PATH


### setting alias ###
alias ls='ls -B --color=auto'
alias ll='ls -l -h'
alias la='ls -a'
alias df='df -h'
alias du='du -h'
alias diff='diff -s'


