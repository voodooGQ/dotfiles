#!/usr/bin/bash

clock() {
  echo $(date "+%a %b %d, %T")
}

battery() {
  echo $(acpi --battery | cut -d, -f2 | tail -c 4)
}

while :; do
  #RUBY=$(ruby $HOME/tmp/test.rb)1
  echo -e "%{l}   \uf242  $(battery) %{r}\uf017  $(clock)  "
  #echo "%{l}%{F#FFFF00}%{B#0000FF} $(Clock) %{F-}%{B-}%{r}${RUBY}"
  sleep 1
done
