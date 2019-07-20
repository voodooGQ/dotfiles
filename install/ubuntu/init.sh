#!/usr/bin/env bash

#  Neovim
sudo apt-add-repository ppa:neovim-ppa/stable

# Etcher Deb
echo "deb https://deb.etcher.io stable etcher" | sudo tee /etc/apt/sources.list.d/balena-etcher.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 379CE192D401AB61

sudo apt-get update

sudo apt-get install -y software-properties-common \
    build-essential libssl-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev \
    libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev \
    libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev \
    xutils-dev libxcb-shape0-dev autoconf xutils-dev autoconf libtool pkg-config xcb flameshot \
    docker.io docker-compose autoconf automake \
    lsb-core \
    lxappearance xautolock \
    libpulse0 \
    libpulse-dev

# Application installation
./apps.sh
# Run Python installs
./python.sh

# NVM
curl https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash

../vendor/zsh/oh-my-zsh.sh
