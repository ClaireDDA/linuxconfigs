#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

setxkbmap -layout "us,ru" -option "grp:alt_shift_toggle" &
exec xrdb -merge ./.Xresources &
exec pcmanfm --desktop &
exec pulseaudio -D &
#exec chromium &
exec jwm 
