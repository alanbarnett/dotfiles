#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR=nvim

PATH=$PATH:~/bin:~/dotfiles/bin
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

battery ()
{
	percent=$(cat /sys/class/power_supply/BAT0/capacity)
	status=$(cat /sys/class/power_supply/BAT0/status)

	if [ $status == "Charging" ] || [ $status == "Unknown" ]; then
		echo -e "\e[1;35m$percent%\e[m"
	elif [ $percent -lt "11" ]; then
		echo -e "\e[1;5;31m$bpercent%\e[m"
	elif [ $percent -lt "26" ]; then
		echo -e "\e[1;31m$percent%\e[m"
	else
		echo -e "\e[1;33m$percent%\e[m"
	fi
}

btc ()
{
	curl -s http://api.coindesk.com/v1/bpi/currentprice.json | python -c "import json, sys; value=json.load(sys.stdin)['bpi']['USD']['rate']; print(value.split('.')[0])"
}


# Old, very simple prompt I used to use
# PS1='\[\e[1;36m\]\u \W \$\[\e[m\] '

# Prompt from before my current one, just doesn't have the lines around it.
#PS1='\[\e[1;37m\][ \[\e[1;36m\]\u@\h \[\e[1;37m\]] \[\e[1;32m\]\w\n\[\e[1;36m\]$\[\e[m\]> '

# Current prompt, 2 lines with box printing characters. Shows name, hostname, directory, battery percent and time.
PS1='\[\e[1;37m\]\342\224\214[\[\e[1;36m\]\u@\h\[\e[1;37m\]]\342\224\200(\[\e[1;32m\]\w\[\e[1;37m\])\342\224\200($(battery)\[\e[1;37m\])\342\224\200(\[\e[1;34m\]$(date "+%I:%M %P")\[\e[1;37m\])\n\[\e[1;37m\]\342\224\224\342\224\200(\[\e[1;36m\]$\[\e[1;37m\]> \[\e[m\]'

# Very functional bash prompt I pulled from someone else because it looked cool, and I wanted to figure out how to use the box printing characters
#PS1="\n\[\033[1;37m\]\342\224\214($(if [[ ${EUID} == 0 ]]; then echo '$bold${red}\u'; else echo '$bold${green}\u'; fi)\[\033[1;37m\])\342\224\200(\[\033[1;34m\]\#\[\033[1;37m\])\342\224\200(\[\033[1;33m\]\@ \d\[\033[1;37m\])\[\033[1;37m\]\n\342\224\224\342\224\200(\[\033[1;32m\]\w\[\033[1;37m\])\342\224\200(\[\033[1;32m\]\$(ls -1 | wc -l | sed 's: ::g') files, \$(ls -lah | grep -m 1 total | sed 's/total //')b\[\033[1;37m\])\342\224\200> \[\033[0m\]"


# quality of life improvements
alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -al'
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
