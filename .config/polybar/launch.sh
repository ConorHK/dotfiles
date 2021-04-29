#!/bin/sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar
if [ "$(hostname)" = pc ]; then
  polybar -c ~/.config/polybar/config.ini pc &
 sleep 1; hideIt.sh --name '^polybar-pc_DP-1$' --signal -d top &
else
  polybar -c ~/.config/polybar/config.ini laptop &
  # sleep 1; hideIt.sh --name "polybar-laptop_eDP-1" --signal -d top &
fi
