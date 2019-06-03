#!/usr/bin/bash

Clock() {
  DATETIME=$(date "+%a %b %d, %T")
  echo -n "$DATETIME"
}

while :; do
  RUBY=$(ruby $HOME/tmp/test.rb)
  echo "%{l}   %{F#FFFF00}$(Clock)%{F-} %{r}${RUBY}   "
  #echo "%{l}%{F#FFFF00}%{B#0000FF} $(Clock) %{F-}%{B-}%{r}${RUBY}"
  sleep 1
done
