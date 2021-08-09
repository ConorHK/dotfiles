#!/bin/sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar
if [ "$(hostname)" = pc ]; then
  polybar -c ~/.config/polybar/config.ini pc-1 &
  polybar -c ~/.config/polybar/config.ini pc-2 &
else
  polybar -c ~/.config/polybar/config.ini laptop &
fi
