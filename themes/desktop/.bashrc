#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR=nvim

PATH=~/bin:~/dotfiles/bin:$PATH
HISTIGNORE="history:ls:pwd:fg:bg:clear:exit"
HISTCONTROL=ignoreboth

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

PS1='\[\e[1;37m\]\342\224\214[\[\e[1;36m\]\u@\h\[\e[1;37m\]]\342\224\200(\[\e[1;32m\]\w\[\e[1;37m\])\342\224\200(\[\e[1;34m\]$(date "+%I:%M %P")\[\e[1;37m\])\n\[\e[1;37m\]\342\224\224\342\224\200(\[\e[1;36m\]$\[\e[1;37m\]> \[\e[m\]'

# quality of life improvements
alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -l'
alias lla='ls -la'
alias mv='mv -iv'
alias cp='cp -iv'
alias grep='grep --color=auto'

# shortcut aliases
alias proj='cd ~/Documents/projects'
alias homework='cd ~/Documents/projects/homework'
alias lab='cd ~/Documents/projects/lab'
alias latek='cd ~/Documents/projects/latex'
alias p5='cd ~/Documents/projects/p5'
alias physics='cd ~/Documents/physics'
alias cs='cd ~/Documents/cs'
alias weather='curl http://wttr.in/45701'
alias cn='clear;neofetch'
