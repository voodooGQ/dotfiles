#!/usr/bin/env sh

killall -q polybar

while pgrep -x polybar >/dev/null; do sleep 1; done

HOSTNAME=$(hostname)

for m in $(polybar --list-monitors | cut -d":" -f1); do
    if [ $(hostname) = kajabi ]; then
        MONITOR=$m polybar --reload bottomkajabi &
    else
        printf "$HOSTNAME"
        MONITOR=$m polybar --reload bottomxfce &
    fi
done
