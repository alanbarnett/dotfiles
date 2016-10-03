#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias home='cd ~'
alias homework='cd ~/Documents/projects/homework'
alias proj='cd ~/Documents/projects'
alias lab='cd ~/Documents/projects/lab'
alias copy='~/Documents/projects/bash/copy.sh'
alias getproj='~/Documents/projects/bash/getproj.sh'
alias prime='ssh abarnett@px1.cs.ohio.edu'
#PS1='\[\e[1;36m\]\u \W \$\[\e[0;37m\] '

PS1='\[\e[1;37m\][ \[\e[1;36m\]\u@\h \[\e[1;37m\]] \[\e[1;32m\]\w\n\[\e[1;36m\]$\[\e[0;37m\]> '

# To update
#'source .bashrc'
