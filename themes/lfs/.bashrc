#
# ~/.bashrc for lfs
# Alan Barnett
# March 2019
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Variables/Settings {{{

# Turn off hashing, we want to always search the path for new executables
set +h

# Default file creation permissions
umask 022

# Set locale
export LC_ALL=POSIX

# LFS variables
export LFS=$HOME/lfs/mnt
export LFS_TGT=$(uname -m)-lfs-linux-gnu-abarnett

# Where to look for programs
LFS_PATH=/tools/bin
SYS_PATH=/bin:/usr/bin
HOME_PATH=$HOME/bin:$HOME/dotfiles/bin
export PATH=$LFS_PATH:$SYS_PATH:$HOME_PATH

# Normal variables
export EDITOR=nvim
export BROWSER=iceweasel

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

# }}}

# Prompt {{{

# Starting prompt hello message
echo -ne "\e[1;34mhello \e[m"

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
alias la='ls -a'					# -A to ignore . and .. folders
alias ll='ls -l'
alias lla='ls -al'

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
alias lfs='cd $LFS'

# }}}

# vim: foldmethod=marker foldmarker={{{,}}}
