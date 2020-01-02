#
# Alan Barnett - 2020-01-02
# My ~/.bash_profile for my laptop
# This file should set the default environment, which includes adding
# directories to the PATH, and any variables you'd like for all subshells
# Runs startx if you log in on tty1
#

# Ruby for vimgolf, and "thor" (don't actually know what that is)
RUBY_PATH=$HOME/.gem/ruby/2.6.0/bin
# Folders for scripts
BIN_PATH=$HOME/bin:$HOME/bin/color-scripts:$HOME/dotfiles/bin

PATH=$PATH:$RUBY_PATH:$BIN_PATH

# Source my bashrc, if it exists
[[ -f ~/.bashrc ]] && . ~/.bashrc

# Start window manager if logging in from the first tty
# This prevents the need for a display manager
if [ "$(tty)" = "/dev/tty1" ]; then
	startx
fi
