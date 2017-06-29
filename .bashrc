#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PATH=~/bin:~/dotfiles/bin:$PATH
odd='abarnett@odd03.cs.ohio.edu'
rodd='rreedy@odd03.cs.ohio.edu'
pi='alan@74.140.73.224'
rpi='riley@74.140.73.224'

mkcd ()
{
	mkdir -p -- "$@" && cd -- "$@"
}

newalias ()
{
	echo "alias "$1"='"$2"'" >> ~/.bashrc
}

batterypercentage ()
{
	bpercent=$(cat /sys/class/power_supply/BAT0/capacity)
	status=$(cat /sys/class/power_supply/BAT0/status)

	if [ $status == "Charging" ]; then
		echo -e "\e[1;35m$bpercent%"
	elif [ $bpercent -lt "11" ]; then
		echo -e "\e[1;5;31m$bpercent%"
	elif [ $bpercent -lt "26" ]; then
		echo -e "\e[1;31m$bpercent%"
	else
		echo -e "\e[1;33m$bpercent%"
	fi
}

thetime ()
{
	date '+%I:%M %P'
}

# Old, very simple prompt I used to use
# PS1='\[\e[1;36m\]\u \W \$\[\e[m\] '

# Prompt from before my current one, just doesn't have the lines around it.
#PS1='\[\e[1;37m\][ \[\e[1;36m\]\u@\h \[\e[1;37m\]] \[\e[1;32m\]\w\n\[\e[1;36m\]$\[\e[m\]> '

PS1='\[\e[1;37m\]\342\224\214[\[\e[1;36m\]\u@\h\[\e[1;37m\]]\342\224\200(\[\e[1;32m\]\w\[\e[1;37m\])\342\224\200($(batterypercentage)\[\e[1;37m\])\342\224\200(\[\e[1;34m\]$(thetime)\[\e[1;37m\])\n\[\e[1;37m\]\342\224\224\342\224\200(\[\e[1;36m\]$\[\e[1;37m\]> \[\e[m\]'

# Very functional bash prompt I pulled from someone else because it looked cool, and I wanted to
# figure out how to use the angled lines before the text (which I now know are called box characters)
#PS1="\n\[\033[1;37m\]\342\224\214($(if [[ ${EUID} == 0 ]]; then echo '$bold${red}\u'; else echo '$bold${green}\u'; fi)\[\033[1;37m\])\342\224\200(\[\033[1;34m\]\#\[\033[1;37m\])\342\224\200(\[\033[1;33m\]\@ \d\[\033[1;37m\])\[\033[1;37m\]\n\342\224\224\342\224\200(\[\033[1;32m\]\w\[\033[1;37m\])\342\224\200(\[\033[1;32m\]\$(ls -1 | wc -l | sed 's: ::g') files, \$(ls -lah | grep -m 1 total | sed 's/total //')b\[\033[1;37m\])\342\224\200> \[\033[0m\]"

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias proj='cd ~/Documents/projects'
alias homework='cd ~/Documents/projects/homework'
alias lab='cd ~/Documents/projects/lab'
alias physics='cd ~/Documents/physics'
alias cs='cd ~/Documents/cs'
alias latek='cd ~/Documents/projects/latex'
alias p5='cd ~/Documents/projects/p5'
alias scan='sudo arp-scan --interface=wlp3s0 --localnet'
alias weather='curl http://wttr.in/45701'
alias bat='upower -i /org/freedesktop/UPower/devices/battery_BAT0| grep -E --color=never "state|to\ full|percentage"'
