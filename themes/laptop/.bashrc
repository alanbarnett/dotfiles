#
# ~/.bashrc
# Alan Barnett
# March 2019
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Starting prompt hello message
echo -ne "\e[1;34mhello \e[m"

# Variables {{{

export EDITOR=nvim
export BROWSER=iceweasel
export EMAIL=alanbarnett328@gmail.com

HISTCONTROL=ignoreboth:erasedups
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
#alias ls='ls --color=auto'			# Add colors
alias ls='ft_ls -Gl'				# Use my custom ls instead
alias grep='grep --color=auto'		# Add colors
alias cp='cp -iv'					# Ask before overwriting, show copied files
alias mv='mv -iv'					# Ask before overwriting, show moved files
alias gcc='gcc $CFLAGS'				# CFLAGS defined at the top, in Variables

# shortcut aliases (save typing)
alias la='ls -a'					# -A to ignore . and .. folders
alias ll='ls -l'
alias lla='ls -al'
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
alias gb='git branch'
alias gc='git commit'
alias gC='git checkout'
alias gd='git diff'
alias gl='git log --oneline --graph --all'
alias gp='git push'
alias gP='git pull'
alias gs='git status'

# sudo shortcuts
alias ss='sudo systemctl'
alias n='sudo netctl'
alias p='sudo pacman'

# cd shortcuts
alias dots='cd ~/dotfiles'
alias proj='cd ~/projects'

# }}}

# vim: foldmethod=marker foldmarker={{{,}}}
