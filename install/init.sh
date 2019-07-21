#!/usr/bin/env bash

#  Neovim
sudo apt-add-repository ppa:neovim-ppa/stable

# Etcher Deb
echo "deb https://deb.etcher.io stable etcher" | sudo tee /etc/apt/sources.list.d/balena-etcher.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 379CE192D401AB61

sudo apt-get update

# Library depedendencies
./lib.sh
# Application installation
./apps.sh
# Run Python installations
./python.sh
# Run Ruby installations
./ruby.sh
# Docker installations
./docker.sh
# JavaScript
./js.sh
# ZSH
./zsh.sh
# System
./system.sh
