#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias homework='cd ~/Documents/projects/homework'
alias proj='cd ~/Documents/projects'
alias lab='cd ~/Documents/projects/lab'
alias copy='~/Documents/projects/bash/copy.sh'
alias getproj='~/Documents/projects/bash/getproj.sh'
alias prime='ssh abarnett@px1.cs.ohio.edu'
alias scan='sudo arp-scan --interface=wlp3s0 --localnet'
alias pi='ssh alan@74.140.73.224 -p 2022'

# Old, very simple prompt I used to use
#PS1='\[\e[1;36m\]\u \W \$\[\e[m\] '

# Prompt from before my current one, just doesn't have the lines around it.
#PS1='\[\e[1;37m\][ \[\e[1;36m\]\u@\h \[\e[1;37m\]] \[\e[1;32m\]\w\n\[\e[1;36m\]$\[\e[m\]> '

PS1='\[\e[1;37m\]\342\224\214[ \[\e[1;36m\]\u@\h \[\e[1;37m\]]\342\224\200(\[\e[1;32m\]\w\[\e[1;37m\])\n\[\e[1;37m\]\342\224\224\342\224\200(\[\e[1;36m\]$\[\e[1;37m\]> \[\e[m\]'

# Very functional bash prompt I pulled from someone else because it looked cool, and I wanted to
# figure out how to use the angled lines before the text
#PS1="\n\[\033[1;37m\]\342\224\214($(if [[ ${EUID} == 0 ]]; then echo '$bold${red}\u'; else echo '$bold${green}\u'; fi)\[\033[1;37m\])\342\224\200(\[\033[1;34m\]\#\[\033[1;37m\])\342\224\200(\[\033[1;33m\]\@ \d\[\033[1;37m\])\[\033[1;37m\]\n\342\224\224\342\224\200(\[\033[1;32m\]\w\[\033[1;37m\])\342\224\200(\[\033[1;32m\]\$(ls -1 | wc -l | sed 's: ::g') files, \$(ls -lah | grep -m 1 total | sed 's/total //')b\[\033[1;37m\])\342\224\200> \[\033[0m\]"

# To update
#'source .bashrc'
