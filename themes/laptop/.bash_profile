#
# ~/.bash_profile
#

# Ruby for vimgolf, and "thor" (don't actually know what that is)
RUBY_PATH=$HOME/.gem/ruby/2.6.0/bin
# Folders for scripts
BIN_PATH=$HOME/bin:$HOME/bin/color-scripts:$HOME/dotfiles/bin

PATH=$PATH:$RUBY_PATH:$BIN_PATH

# Source user bashrc
[[ -f ~/.bashrc ]] && . ~/.bashrc

# Start window manager if logging in from the first tty
# This prevents the need for a display manager
if [ "$(tty)" = "/dev/tty1" ]; then
	startx
fi
