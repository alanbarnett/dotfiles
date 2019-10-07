# Source x window config file
xrdb .Xresources

# Set desktop background
~/.fehbg

# Set keyboard repeat rate and delay
xset r rate 200 25
# Set mouse acceleration
xinput --set-prop 11 'libinput Accel Speed' -0.4

# Startup daemons
ibus-daemon -drx	# keyboard layout switching program
dunst &				# notification daemon
sxhkd &				# hotkey configuration daemon
unclutter &			# hide mouse when not moving it
#nm-applet &		# wifi panel

# Hot corners
xdotool behave_screen_edge bottom-right exec notify_date.sh &

# Keyboard layout settings
# caps:ctrl_modifier			make caps act like control
# shift:both_capslock_cancel	both shifts to caps, one shift to turn it off
setxkbmap us -option caps:ctrl_modifier,shift:both_capslock_cancel

# Compositor for window effects, transparency, and blurs
compton	\
	--shadow-opacity=0.5 \
	--shadow-offset-x=-2 \
	--shadow-offset-y=-2 \
	--fade-in-step=0.025 \
	--fade-out-step=0.025 \
	--fade-delta=4 \
	--no-dock-shadow \
	--inactive-dim 0.15 \
	--blur-background &

# Start a window manager
exec i3
#exec dwm
#exec openbox
