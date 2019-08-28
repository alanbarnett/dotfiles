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
export EMAIL=alanbarnett328@gmail.com

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

# }}}

# Prompt {{{

# Use ptheme for my prompt
. $HOME/bin/ptheme/prompt_alan.sh

# }}}

# Aliases {{{

# default options (add arguments to default commands)
alias ls='ls -G'				# Add colors
alias grep='grep -G'			# Add colors
alias cp='cp -iv'				# Ask before overwriting, show copied files
alias mv='mv -iv'				# Ask before overwriting, show moved files
alias ln='ln -iv'				# Ask before overwriting, show linked files
alias gcc='gcc $CFLAGS'			# CFLAGS defined at the top, in Variables

# shortcut aliases (save typing)
alias la='ls -A'				# -A to ignore . and .. folders
alias ll='ls -l'
alias lla='ls -Al'
alias fls='ft_ls -Gl'

# git shortcuts
alias g='git'
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gC='git checkout'
alias gd='git diff'
alias gl='git log --oneline --graph --all'
alias gm='git merge'
alias gp='git push'
alias gP='git pull'
alias gs='git status'

# docker shortcuts
alias d='docker'
alias dc='docker container'
alias di='docker image'
alias dr='docker run'
alias drri='docker run --rm -it'

# docker-machine shortcuts
alias dm='docker-machine'
alias dms='docker-machine start'
alias dmS='docker-machine stop'

# cd shortcuts
alias dots='cd ~/dotfiles'
alias proj='cd ~/cadet/projects'
alias gproj='cd ~/cadet/git'
alias pdfs='cd /nfs/intrav2cdn/pdf/pdf'

# }}}

# vim: foldmethod=marker foldmarker={{{,}}}
