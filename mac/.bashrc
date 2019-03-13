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

export EDITOR='nvim'
export MAIL=alanbarnett328@gmail.com

PATH=$HOME/clones/color-scripts/color-scripts:$HOME/bin:$HOME/dotfiles/bin:$HOME/.brew/bin:$PATH

HISTIGNORE="history:ls:pwd:fg:bg:clear:exit"
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

# Script for my prompt
. $HOME/clones/ptheme/prompt_alan_mac.sh

# quality of life improvements
alias ls='ls -G'
alias mv='mv -iv'
alias cp='cp -iv'
alias gcc='gcc $CFLAGS'

# shortcut aliases
alias la='ls -a'
alias ll='ls -l'
alias lla='ls -la'
alias proj='cd ~/cadet/projects'
alias gproj='cd ~/cadet/git'
alias pdfs='cd /nfs/intrav2cdn/pdf/pdf'
alias cs='clear; screenfetch 2> /dev/null'

# git shortcuts
alias g='git'
alias ga='git add'
alias gc='git commit'
alias gd='git diff'
alias gl='git log --oneline --graph'
alias gp='git push'
alias gs='git status'
