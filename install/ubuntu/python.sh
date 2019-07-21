#!/usr/bin/env bash

echo "-------------------------------------------";
echo "Python Installation";
echo "-------------------------------------------";

# APT Dept
sudo apt-get install -y \
  pipenv \
  python-dev \
  python-pip \
  python3-dev \
  python3-pip \
  python-dev \
  ;

# Pip Packages
pip3 install lyricwikia
pip3 install spotify-cli-linux
pip3 install youtube-dl
pip install lyricwikia
pip install spotify-cli-linux
pip install youtube-dl

echo "-------------------------------------------";
echo "Python Installation Complete";
echo "-------------------------------------------";