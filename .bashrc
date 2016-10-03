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

PS1='\[\033[01m\][ \[\033[01;36m\]\u@\h \[\033[00m\]\[\033[01m\]] \[\033[01;32m\]\w\[\033[00m\]\n\[\033[01;36m\]$\[\033[00m\]> '

# To update
#'source .bashrc'
