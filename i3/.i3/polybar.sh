#!/usr/bin/env sh

killall -q polybar

while pgrep -x polybar >/dev/null; do sleep 1; done

if type "xrandr"; then
  monitors=$(xrandr --query | grep " connected" | cut -d" " -f1)
  monitor_cnt=$(xrandr -q | rg ' connected' | wc -l)

  for m in $monitors; do
    if [ $monitor_cnt -gt 1 ]; then
      if [ "$m" = "DP2-1" ]; then
         MONITOR=$m polybar --reload top &
         MONITOR=$m polybar --reload bottom &
      else
         MONITOR=$m polybar --reload topbig &
      fi
    else
       MONITOR=$m polybar --reload top &
       MONITOR=$m polybar --reload bottom &
    fi
  done

else
  polybar --reload bottom &
  polybar --reload top &
fi
