#
# Alan Barnett - 2020-01-02
# My ~/.bash_profile for MacOS
# This file should set the default environment, which includes adding
# directories to the PATH, and any variables you'd like for all subshells
#

# Path for brew's executables
BREW_PATH=$HOME/.brew/bin
# Folders for scripts
HOME_PATH=$HOME/clones/color-scripts/color-scripts:$HOME/bin:$HOME/dotfiles/bin:$HOME/dotfiles/bin/mac

PATH=$BREW_PATH:$HOME_PATH:$PATH

# Source my bashrc, if it exists
[[ -f ~/.bashrc ]] && . ~/.bashrc
