#!/usr/bin/env bash
# author: unknown
# sentby: MoreChannelNoise (https://www.youtube.com/user/MoreChannelNoise)
# editby: gotbletu (https://www.youtube.com/user/gotbletu)

# demo: https://www.youtube.com/watch?v=kxJClZIXSnM
# info: this is a script to launch other rofi scripts,
#       saves us the trouble of binding multiple hotkeys for each script,
#       when we can just use one hotkey for everything.

declare -A LABELS
declare -A COMMANDS

###
# List of defined 'bangs'

# launch programs
COMMANDS["apps"]="rofi -combi-modi window,drun -show combi"
LABELS["apps"]=""

# open bookmarks
COMMANDS["bookmarks"]="~/.rofi/scripts/bookmarks.sh"
LABELS["bookmarks"]=""

# search local files
COMMANDS["locate"]="~/.rofi/scripts/locate.sh"
LABELS["locate"]=""

# open calendar
COMMANDS['calendar']="~/.rofi/scripts/calendar.sh"
LABELS["calendar"]="Calendar"

# open calculator
COMMANDS['calculator']="~/.rofi/scripts/calculator.sh"
LABELS["calculator"]="Calculator"

# open custom web searches
COMMANDS["web"]="~/.rofi/scripts/websearch.sh"
LABELS["web"]=""

# open vscode
COMMANDS['code']="~/.rofi/scripts/vscode.sh"
LABELS["code"]="VSCode"

# open browser
COMMANDS['firefox']="~/.rofi/scripts/firefox.sh"
LABELS["firefox"]="Firefox"

COMMANDS['files']='~/.rofi/scripts/files.sh'
LABELS["files"]="Files"

# open terminal
COMMANDS['terminal']="~/.rofi/scripts/terminal.sh"
LABELS["terminal"]="$> Terminal"

# open slack
COMMANDS['slack']="~/.rofi/scripts/slack.sh"
LABELS["slack"]="Slack"

# open slack
COMMANDS['spotify']="~/.rofi/scripts/spotify.sh"
LABELS["spotify"]="Spotify"

COMMANDS['display']="~/.rofi/scripts/display.sh"
LABELS["display"]="display"

# show clipboard history
# source: https://bitbucket.org/pandozer/rofi-clipboard-manager/overview
# COMMANDS["clipboard"]='rofi -modi "clipboard:~/.bin/rofi-clipboard-manager/mclip.py menu" -show clipboard && ~/.bin/rofi-clipboard-manager/mclip.py paste'
# LABELS["clipboard"]=""

################################################################################
# do not edit below
################################################################################
##
# Generate menu
##
function print_menu()
{
    for key in ${!LABELS[@]}
    do
  echo "$key    ${LABELS}"
     #   echo "$key    ${LABELS[$key]}"
     # my top version just shows the first field in labels row, not two words side by side
    done
}
##
# Show rofi.
##
function start()
{
    print_menu | sort | rofi -dmenu -i -p "\$category"

}


# Run it
value="$(start)"

# Split input.
# grab upto first space.
choice=${value%%\ *}
# graph remainder, minus space.
input=${value:$((${#choice}+1))}

##
# Cancelled? bail out
##
if test -z ${choice}
then
    exit
fi

# check if choice exists
if test ${COMMANDS[$choice]+isset}
then
    # Execute the choice
    eval echo "Executing: ${COMMANDS[$choice]}"
    eval ${COMMANDS[$choice]}
else
 eval  $choice | rofi
 # prefer my above so I can use this same script to also launch apps like geany or leafpad etc (DK)
 echo "Unknown command: ${choice}" | rofi -dmenu -p "error"
fi
