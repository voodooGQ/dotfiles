#!/bin/bash
# https://www.youtube.com/user/gotbletu

# In some cases the gui requires this being set rather than using the system variable
BROWSER=/usr/bin/firefox

surfraw -browser=$BROWSER \
  $(sr -elvi | \
    awk -F'-' '{print $1}' | \
    sed '/:/d' | \
    awk '{$1=$1};1' | \
    rofi -kb-row-select "Tab" \
         -kb-row-tab "Control+space" \
         -dmenu \
         -i \
         -p "web" \
  )
