# Set monitor to 144hz
xrandr --output DVI-D-0 --mode 1920x1080 --rate 144 &

# Source x window config file
xrdb .Xresources

# Set keyboard repeat rate and delay
xset r rate 200 25 &
# Set mouse acceleration profile to flat
xinput --set-prop 'pointer:Razer Razer DeathAdder Chroma' 'libinput Accel Profile Enabled' 0, 1 &

# Keyboard layout settings
# colemak-alan is my custom mod of colemak
# caps:ctrl_modifier			make caps act like control
# shift:both_capslock_cancel	both shifts to caps, one shift to turn it off
# Don't need to do this with the Planck! Or the Advantage! :)
#setxkbmap -layout us-alan -variant colemak-alan \
#	-option caps:ctrl_modifier,shift:both_capslock_cancel

# Set desktop background
~/.fehbg &

# Startup daemons
picom --experimental-backends &				# compositor for window effects, transparency, and blurs
dunst &				# notification daemon
sxhkd &				# hotkey configuration daemon
unclutter &			# hide mouse when not moving it
mpd &				# music player daemon

# Hot corners
xdotool behave_screen_edge bottom-right exec --sync notify_date.sh &

# Start a window manager
exec $WM
