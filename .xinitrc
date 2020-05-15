#!/bin/sh

sxhkd &
xsetroot -cursor_name left_ptr &
xrdb $HOME/.Xresources &
setxkbmap gb &
unclutter &
udiskie &
exec bspwm -c $HOME/.config/bspwm/bspwmrc
