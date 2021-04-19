#!/bin/bash
# https://www.youtube.com/user/gotbletu

BROWSER=firefox

surfraw -browser=$BROWSER \
        "$(cat ~/.config/surfraw/bookmarks | \
           sed '/^$/d' | \
           sed '/^#/d' | \
           sed '/^\//d' | \
           sort -n | \
           rofi -dmenu -mesg ">>> ~/.config/surfraw/bookmarks" -i -p "bookmarks")"
