#!/bin/sh

# /etc/X11/xinit/xinitrc
#
# global xinitrc file, used by all X sessions started by xinit (startx)

# invoke global X session script
#. /etc/X11/Xsession
xrandr --output eDP-1 --off
xrandr --output HDMI-1 --primary
xrdb -merge ~/.Xresources
xset -b
exec i3
