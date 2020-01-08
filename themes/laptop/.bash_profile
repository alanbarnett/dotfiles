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

# variables for ibus
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

# Session settings variables
export EDITOR=nvim
export MANPAGER='nvim +Man!'
export BROWSER=iceweasel
export EMAIL=alanbarnett328@gmail.com
export TERMINAL=my_urxvt

# Source my bashrc, if it exists
[[ -f ~/.bashrc ]] && . ~/.bashrc

# Start window manager if logging in from the first tty
# This prevents the need for a display manager
if [ "$(tty)" = "/dev/tty1" ]; then
	startx
fi
