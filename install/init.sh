#!/usr/bin/env bash

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
