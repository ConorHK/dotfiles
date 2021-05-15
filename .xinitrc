#!/bin/sh

eval `dbus-launch --auto-syntax`
hostname=$(hostname)
[[ "$hostname" =~ pc ]] && xrandr --output DP-3 --left-of DP-1
sxhkd &
xsetroot -cursor_name left_ptr &
xrdb $HOME/.Xresources &
setxkbmap gb && setxkbmap -option "caps:swapescape" &&
unclutter &
command -v udiskie &> /dev/null && udiskie &
exec bspwm
