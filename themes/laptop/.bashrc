#
# ~/.bashrc
# Alan Barnett
# January 2020
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Starting prompt hello message
echo -ne "\e[1;34mhello \e[m"

# Variables {{{

HISTCONTROL=ignoreboth:erasedups
HISTIGNORE="history:pwd:fg:bg:clear:exit"

# For my gcc alias
CFLAGS='-Wall -Wextra -Werror'

# }}}

# Functions {{{

# Make directory, cd into it
function mkcd ()
{
	mkdir -p -- "$@" && cd -- "$@"
}

# Move a file to ~/Trash instead of deleting it
function rm ()
{
	mv -iv -- "$@" ~/trash
}

# Tells you how many of an amount of silver you need to get 1 gold
# I used this to help me figure out prices of ores/metals in terraria
function sg()
{
	echo "100 / $1" | bc -l;
}

# }}}

# Prompt {{{

# Use ptheme for my prompt
. $HOME/bin/ptheme/prompt_alan.sh

# }}}

# Aliases {{{

# default options (add arguments to default commands)
#alias ls='ls --color=auto -F'		# Add colors and */=>@| classifier
alias ls='ft_ls -Gl'				# Use my custom ls instead
alias grep='grep --color=auto'		# Add colors
alias cp='cp -iv'					# Ask before overwriting, show copied files
alias mv='mv -iv'					# Ask before overwriting, show moved files
alias ln='ln -iv'					# Ask before overwriting, show linked files
alias gcc='gcc $CFLAGS'				# CFLAGS defined at the top, in Variables
alias less='/usr/share/nvim/runtime/macros/less.sh'	# Use nvim plugin for less
alias bat='bat --theme=zenburn'		# Use my favorite bat theme (cat clone)
alias bc='bc -l'					# Use the advanced math library

# shortcut aliases (save typing)
alias la='ls -a'					# -A to ignore . and .. folders
alias ll='ls -l'
alias lla='ls -al'
alias fls='ft_ls -Gl'
# TODO make wttr into a script
# take arg for zip code, other args for style of output
# bar vs script vs cli
alias wttr='curl http://wttr.in/94555'
alias btcg='curl rate.sx/btc'
alias cn='clear; neofetch'
alias pa='pacaur'
alias r='ranger'

# sudo shortcuts
alias s='sudo systemctl'
alias n='sudo netctl'
alias p='sudo pacman'

# git shortcuts
alias g='git'
alias ga='git add'
alias gb='git branch'
alias gc='git commit --verbose'
alias gC='git checkout'
alias gd='git diff'
alias gdc='git diff --cached'
alias gf='git fetch'
alias gl='git log --oneline --graph --all'
# Below alias shows full commit hash, which is kinda long
#alias glf='git log --graph --all'
# Below alias shows the short commit hash (oneline), and full commit message
alias glf='git log --oneline --pretty --graph --all'
# Below alias adds the patch of changes to the last alias
alias glp='git log --oneline --pretty --graph --all --patch'
alias gm='git merge'
alias gp='git push'
alias gP='git pull'
alias gr='git reset'
alias gR='git rebase'
alias gs='git status'
alias gS='git stash'

# task shortcuts
alias t='task'
alias ta='task add'
alias td='task done'
alias tD='task delete'
alias te='task edit'
alias tm='task modify'
alias tt='task project:today'

# cd shortcuts
alias dots='cd ~/dotfiles'
alias proj='cd ~/projects'

# }}}

# vim: foldmethod=marker foldmarker={{{,}}}
