#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# shit to make iterm faster
launchctl remove com.apple.suggestd
launchctl remove com.apple.followupd
find ~/Library/Logs/DiagnosticReports -mindepth 1 -delete > /dev/null 2>&1

# brew stuff
mkdir -p /tmp/.abarnett-brew-locks
export GOROOT=~/goroot

export EDITOR='nvim'
export MAIL=alanbarnett328@gmail.com

PATH=~/valgrind:~/color-scripts/color-scripts:~/bin:~/dotfiles/bin:~/.gem/ruby/2.5.0/bin:~/.brew/bin:$PATH
HISTIGNORE="history:ls:fg:exit"
HISTCONTROL=ignoreboth

CFLAGS='-Wall -Wextra -Werror'

mkcd ()
{
	mkdir -p -- "$@" && cd -- "$@"
}

rm ()
{
	mv -iv -- "$@" ~/Trash
}

norminator ()
{
	norminette $1 | GREP_COLOR='1;38;5;40' egrep --color=always "^Norme|$" | GREP_COLOR='1;38;5;33' egrep --color=always '^Warning|$' | GREP_COLOR='1;38;5;196' egrep --color=always '^Error|$'
}

PS1='\[\e[1;37m\]\342\224\214[\[\e[1;36m\]\u@\h\[\e[1;37m\]]\342\224\200(\[\e[1;32m\]\w\[\e[1;37m\])\342\224\200(\[\e[1;34m\]$(date "+%I:%M %p")\[\e[1;37m\])\342\224\200[\[\e[1;31m\]$?\[\e[1;37m\]]\n\[\e[1;37m\]\342\224\224\342\224\200(\[\e[1;36m\]$\[\e[1;37m\]> \[\e[m\]'

# quality of life improvements
alias ls='ls -G'
alias la='ls -a'
alias ll='ls -l'
alias lla='ls -la'
alias mv='mv -iv'
alias cp='cp -iv'
alias gcc='gcc $CFLAGS'

# shortcut aliases
alias proj='cd ~/cadet/projects'
alias gproj='cd ~/cadet/git'
alias pdfs='cd /nfs/intrav2cdn/pdf/pdf'
alias cs='clear; screenfetch 2> /dev/null'
alias 42fc='bash ~/42FileChecker/42FileChecker.sh'
alias 42fcnoi='bash ~/42FileChecker/42FileChecker.sh --project "gnl" --path "~/cadet/gitgnl"'
