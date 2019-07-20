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
# Docker installations
./docker.sh
# Run Python installations
./python.sh

# NVM
curl https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash

../vendor/zsh/oh-my-zsh.sh
