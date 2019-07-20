#!/usr/bin/env bash

# APT Dept
sudo apt-get install -y \
  pipenv \
  python-dev \
  python-pip \
  python3-dev \
  python3-pip \
  python-dev

# Pip Packages
pip install \
  spotify-cli-linux \
  youtube-dl