#!/bin/sh

eval `dbus-launch --auto-syntax`
hostname=$(hostname)
[[ "$hostname" =~ pc ]] && xrandr --output DP-0 --left-of DP-4
hashwall -f '#131313' -b '#1e1b1c' -s 12
sxhkd &
xsetroot -cursor_name left_ptr &
xrdb $HOME/.Xresources &
setxkbmap us && setxkbmap -option "caps:swapescape"
xset m 1/1 3
unclutter &
command -v udiskie &> /dev/null && udiskie &
exec bspwm
