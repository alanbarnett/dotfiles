#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='\[\e[1;36m\]\u \W \$\[\e[0;37m\] '

PS1='\[\e[1;37m\][ \[\e[1;31m\]\u@\h \[\e[1;37m\]] \[\e[1;32m\]\w\n\[\e[1;31m\]#\[\e[0;37m\]> '

# To update
#'source .bashrc'
