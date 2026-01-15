############
# .bashrc ##
############

## My super 1337 and sexy prompt
#PS1='\n\e[4;97m\]$(line)\[$(reset)\]\e[1;31m\] \h \[\e[m\]\[\e[1;34m\]\w \[\e[m\]\n\[\e[1;97m\] 󰜴 '
PS1='\n\e[1;93m\] \u\e[1;94m\]@\e[1;95m\]\h \[\e[m\]\[\e[1;34m\]\W\[\e[m\]\n\[\e[1;92m\]  \[\e[1;97m\]'

line()
{
    printf "%*s" $COLUMNS ""
}
reset()
{
	tput sgr0
}

#PS1='\e[4;97m\]$(line)\[$(reset)\]\n \e[1;94m\]\h \e[1;94m\]\w \n \e[1;97m\] \$ '


#PS1='[\e[1;90m\]\h \]\[\e[1;95m\]\w \] \n[\e[1;95m\]> \[\e[1;97m\]\] '

## Aliases
#alias rm='rm -i'
alias mv='mv -i'
alias ls='ls --color=auto'
alias la='ls -A'
alias ll='ls -l'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias wttrin='curl -s wttr.in/35453 | head -n 7'
alias kdec1p='kdeconnect-cli -n OnePlus'
## add --accept= to only download certain filetypes 
alias wgetod='wget -e robots=off -r -nc -np --show-progress' 

## SSH aliases
alias sshpi='ssh pi@192.168.0.101'

## Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

## Enable programmable completion features ## copied from mint's default bashrc
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

## Adding ~/.local/bin to $PATH
export PATH=$PATH:~/.local/bin/

## Autostart tmux ##<I don't know what any of this means. I copy/pasted from somewhere YEARS ago.>
# If not running interactively, do not do anything
[[ $- != *i* ]] && return
[[ -z "$TMUX" ]] && exec tmux




