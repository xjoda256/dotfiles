###############
## ~/.bashrc ##
## ×Joda™ #####
###############

## super 1337 prompt ##
PS1='\n\e[0;97m╭───\e[0;35m\] @\e[0;96m\]\h \[\e[m\]\[\e[1;34m\]\w\[\e[m\]\n\[\e[0;97m\]╰─ \[\e[0;97m\]'

## line drawing characters ╭ ─ ╮ ╰ ─ ╯ ┌ ┐ ┴ ┬ └ ┘ │    ##

## aliases ##
alias mv='mv -i'
alias ls='eza --group-directories-first'
alias la='eza -a --group-directories-first'
alias ll='eza -l --group-directories-first'
alias cd='z'
alias grep='grep --color=auto'
## add --accept= to only download certain filetypes ##
alias wgetod='wget -e robots=off -r -nc -np --show-progress'
alias nvhy='nvim ~/.config/hypr/hyprland.conf'
alias nviminit='nvim ~/.config/nvim/init.lua'
alias clear='clear; source ~/.bashrc '

## source global definitions ##
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

## enable programmable completion features ##
if ! shopt -oq posix; then
	if [ -f /usr/share/bash-completion/bash_completion ]; then
		. /usr/share/bash-completion/bash_completion
	elif [ -f /etc/bash_completion ]; then
		. /etc/bash_completion
	fi
fi

## adding ~/.local/bin to $PATH ##
export PATH=$PATH:~/.local/bin/

## autostart tmux if in interactive shell ##
[[ $- != *i* ]] && return
[[ -z "$TMUX" ]] && exec tmux

## zoxide is aliased to cd above ##
eval "$(zoxide init bash --cmd z)" 

## mkdir then cd into it ##
mkcd () {
  mkdir -p -- "$1" && cd -P -- "$1"
}

## make a .bak copy ##
bak () {
	mv $1 $1.bak
}

## very improtant thing to make your computer run faster ##
echo
printf "\e[0;97m i use \e[1;34march™\e[0;97m btw"
echo
echo
fastfetch -c ~/.config/fastfetch/Blocks.jsonc
echo

