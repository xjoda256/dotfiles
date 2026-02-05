##############
## ~/.zshrc ##
## ×Joda™ ####
##############

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000000
SAVEHIST=1000000
setopt autocd notify
bindkey -e
# The following lines were added by compinstall
zstyle :compinstall filename '/home/joda/.zshrc'
autoload -Uz compinit
compinit

path+=('~/.local/bin/')
export PATH

## zoxide ##
eval "$(zoxide init zsh --cmd z)"

## gimme all the hist ##
setopt INC_APPEND_HISTORY

## prompt ##
NEWLINE=$'\n'
PS1=${NEWLINE}' %F{magenta}%B@%F{yellow}%B%m%f %F{blue}%B%~'${NEWLINE}'%f%B %#%f%b '

## make HOME END DEL keys work ##
source ~/.zkbd/alacritty-:0
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
bindkey '^[[3~' delete-char

## aliases ##
alias ls='eza --group-directories-first'
alias la='eza -a --group-directories-first'
alias ll='eza -l --group-directories-first'
alias cd='z'
alias grep='grep --color=auto'
alias wttr='curl - wttr.in/35453 | head -n 7'
alias wgetod='wget -e robots=off -r -nc -np --show-progress'
alias nvhy='nvim ~/.config/hypr/hyprland.conf'
alias nvinit='nvim .config/nvim/init.lua'
alias clear='clear; source .zshrc'

## make compurter go zoom ##
echo
printf "i use \e[1;30mzsh\e[0;97m btw"
echo
fastfetch -c ~/.config/fastfetch/Blocks.jsonc
echo

