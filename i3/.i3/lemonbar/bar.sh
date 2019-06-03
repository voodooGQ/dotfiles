#!/usr/bin/bash
# Define the clock
Clock() {
        DATETIME=$(date "+%a %b %d, %T")

        echo -n "$DATETIME"
}

while :; do
  RUBY=$(ruby $HOME/tmp/test.rb)
  echo "%{c}%{F#FFFF00}%{B#0000FF} $(Clock) %{F-}%{B-} | ${RUBY}"
  sleep 1
done
