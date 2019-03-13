#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Extra {{{

# shit to make iterm faster
launchctl remove com.apple.suggestd
launchctl remove com.apple.followupd
find ~/Library/Logs/DiagnosticReports -mindepth 1 -delete > /dev/null 2>&1

# brew stuff
mkdir -p /tmp/.abarnett-brew-locks

# }}}

# Variables {{{

export EDITOR=nvim
export MAIL=alanbarnett328@gmail.com

PATH=$HOME/clones/color-scripts/color-scripts:$HOME/bin:$HOME/dotfiles/bin:$HOME/.brew/bin:$PATH

HISTCONTROL=ignoreboth
HISTIGNORE="history:ls:pwd:fg:bg:clear:exit"

# For my gcc alias
CFLAGS='-Wall -Wextra -Werror'

# }}}

# Functions {{{

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

# }}}

# Prompt {{{

# Script for my prompt
. $HOME/clones/ptheme/prompt_alan_mac.sh

# }}}

# Aliases {{{

# default options (add arguments to default commands)
alias ls='ls -G'				# Add colors
alias grep='grep -G'			# Add colors
alias cp='cp -iv'				# Ask before overwriting, show copied files
alias mv='mv -iv'				# Ask before overwriting, show moved files
alias gcc='gcc $CFLAGS'			# CFLAGS defined at the top, in Variables

# shortcut aliases (save typing)
alias la='ls -A'				# -A to ignore . and .. folders
alias ll='ls -l'
alias lla='ls -Al'
alias fls='ft_ls -Gl'

# git shortcuts
alias g='git'
alias ga='git add'
alias gc='git commit'
alias gd='git diff'
alias gl='git log --oneline --graph'
alias gp='git push'
alias gs='git status'

# cd shortcuts
alias proj='cd ~/cadet/projects'
alias gproj='cd ~/cadet/git'
alias pdfs='cd /nfs/intrav2cdn/pdf/pdf'

# }}}

# vim: foldmethod=marker foldmarker={{{,}}}
