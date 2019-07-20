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
pip install \
  lyricwikia \
  spotify-cli-linux \
  youtube-dl \
  ;

echo "-------------------------------------------";
echo "Python Installation Complete";
echo "-------------------------------------------";