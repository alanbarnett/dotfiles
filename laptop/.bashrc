#
# ~/.bashrc
# Alan Barnett
# March 2019
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Variables {{{

export EDITOR=nvim
export EMAIL=alanbarnett328@gmail.com

PATH=$PATH:$HOME/bin:$HOME/dotfiles/bin:$HOME/color-scripts/color-scripts
HISTCONTROL=ignoreboth
HISTIGNORE="history:ls:pwd:fg:bg:clear:exit"

# For my gcc alias
CFLAGS='-Wall -Wextra -Werror'

# }}}

# Functions {{{

# Make directory, cd into it
mkcd ()
{
	mkdir -p -- "$@" && cd -- "$@"
}

# Move a file to ~/Trash instead of deleting it
rm ()
{
	mv -iv -- "$@" ~/Trash
}

# One-liner to get current value of bitcoin
# TODO make into a normal python script, I hate oneliners
btc ()
{
	curl -s http://api.coindesk.com/v1/bpi/currentprice.json | python -c "import json, sys; value=json.load(sys.stdin)['bpi']['USD']['rate']; print(value.split('.')[0])"
}

# }}}

# Prompt {{{

# Use ptheme for my prompt
. $HOME/bin/ptheme/prompt_alan.sh

# }}}

# Aliases {{{

# default options (add arguments to default commands)
alias ls='ls --color=auto'			# Add colors
alias grep='grep --color=auto'		# Add colors
alias cp='cp -iv'					# Ask before overwriting, show copied files
alias mv='mv -iv'					# Ask before overwriting, show moved files
alias gcc='gcc $CFLAGS'				# CFLAGS defined at the top, in Variables

# shortcut aliases (save typing)
alias la='ls -A'					# -A to ignore . and .. folders
alias ll='ls -l'
alias lla='ls -Al'
alias fls='ft_ls -Gl'
# TODO make wttr into a script
# take arg for zip code, other args for style of output
# bar vs script vs cli
alias wttr='curl http://wttr.in/94555'
alias cn='clear; neofetch'
alias setv='pactl set-sink-volume 0'

# git shortcuts
alias g='git'
alias ga='git add'
alias gc='git commit'
alias gd='git diff'
alias gl='git log --oneline --graph'
alias gp='git push'
alias gs='git status'

# sudo shortcuts
alias ss='sudo systemctl'
alias n='sudo netctl'
alias p='sudo pacman'

# cd shortcuts
alias proj='cd ~/projects'

# }}}

# vim: foldmethod=marker foldmarker={{{,}}}
