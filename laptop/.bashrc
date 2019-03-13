#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Set tabs to 4 spaces
# Some programs don't like this (ls's columns, for example, expect 8 space tabs)
#tabs -4

# figlet for funsies
#figlet -f small alan@x200
#printf "\n"

export EDITOR=nvim
export EMAIL=alanbarnett328@gmail.com

PATH=$PATH:~/bin:~/dotfiles/bin:~/color-scripts/color-scripts
HISTIGNORE="history:ls:pwd:fg:bg:clear:exit"
HISTCONTROL=ignoreboth

# Functions {{{

mkcd ()
{
	mkdir -p -- "$@" && cd -- "$@"
}

rm ()
{
	mv -iv -- "$@" ~/Trash
}

btc ()
{
	curl -s http://api.coindesk.com/v1/bpi/currentprice.json | python -c "import json, sys; value=json.load(sys.stdin)['bpi']['USD']['rate']; print(value.split('.')[0])"
}

# }}}

# Prompt {{{

# Use ptheme for my prompt
. $HOME/bin/ptheme/prompt_alan.sh

# }}}

# Aliases {{{

# quality of life improvements (add arguments to default commands)
alias ls='ls --color=auto'
alias mv='mv -iv'
alias cp='cp -iv'
alias grep='grep --color=auto'

# shortcut aliases (make new commands from other commands)
alias fls='ft_ls -Gl'
alias la='ls -A'
alias ll='ls -l'
alias lla='ls -Al'
alias SS='sudo systemctl'
alias n='sudo netctl'
alias p='sudo pacman'
alias weather='curl http://wttr.in/94555'
alias cn='clear;neofetch'
alias setv='pactl set-sink-volume 0 '

# }}}

# vim: foldmethod=marker foldmarker={{{,}}}
