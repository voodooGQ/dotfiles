#!/usr/bin/env sh

killall -q polybar

while pgrep -x polybar >/dev/null; do sleep 1; done

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload bottom &
    MONITOR=$m polybar --reload top &
  done
else
  polybar --reload bottom &
  polybar --reload top &
fi
