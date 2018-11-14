#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR=nvim

PATH=$PATH:~/bin:~/dotfiles/bin:~/color-scripts/color-scripts
HISTIGNORE="history:ls:fg:exit"
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

PS1='\[\e[1;37m\]\342\224\214[\[\e[1;36m\]\u@\h\[\e[1;37m\]]\342\224\200(\[\e[1;32m\]\w\[\e[1;37m\])\342\224\200($(battery)\[\e[1;37m\])\342\224\200(\[\e[1;34m\]$(date "+%I:%M %P")\[\e[1;37m\])\n\[\e[1;37m\]\342\224\224\342\224\200(\[\e[1;36m\]$\[\e[1;37m\]> \[\e[m\]'

# quality of life improvements
alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -l'
alias lla='ls -al'
alias mv='mv -iv'
alias cp='cp -iv'
alias grep='grep --color=auto'

# shortcut aliases
alias weather='curl http://wttr.in/45701'
alias cn='clear;neofetch'
alias 42fc='bash ~/42filechecker/42FileChecker.sh'
