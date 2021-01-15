#!/bin/sh

hostname=$(hostname)

[[ "$hostname" =~ pc ]] && xrandr --output HDMI-1 --left-of DP-1
sxhkd &
xsetroot -cursor_name left_ptr &
xrdb $HOME/.Xresources &
setxkbmap gb &
unclutter &
command -v udiskie &> /dev/null && udiskie &
exec dbus-launch --sh-syntax --exit-with-session bspwm -c $HOME/.config/bspwm/bspwmrc
