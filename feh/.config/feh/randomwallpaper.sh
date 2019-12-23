#!/bin/bash
while true
do
  feh --no-fehbg --bg-scale --recursive --randomize "${HOME}/Pictures/Wallpapers"
  # Every 10 minutes
  sleep 600
done
