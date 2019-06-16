#!/usr/bin/env bash

#  Neovim
sudo apt-add-repository ppa:neovim-ppa/stable

# Etcher Deb
echo "deb https://deb.etcher.io stable etcher" | sudo tee /etc/apt/sources.list.d/balena-etcher.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 379CE192D401AB61

sudo apt-get update

sudo apt-get install -y software-properties-common python-dev python-pip python3-dev python3-pip \
    neovim stow i3 compton zsh curl dunst neofetch htop clipit plank tmux tmuxinator \
    build-essential libssl-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev \
    libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev \
    libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev \
    xutils-dev libxcb-shape0-dev autoconf xutils-dev autoconf libtool pkg-config xcb flameshot \
    arandr ranger nautilus nitrogen pipenv zeal docker.io docker-compose autoconf automake \
    build-essential  python-dev exfat-fuse exfat-utils hub tig conky jq lsb-core aptitude \
    nvidia-prime net-tools w3m-img cargo highlight httpie fd-find ddgr lxappearance xautolock \
    jmtpfs mtp-tools scrot curl gnome-tweak-tool unclutter fzf touchegg pavucontrol libpulse0 \
    libpulse-dev

# NVM
curl https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash

../vendor/zsh/oh-my-zsh.sh
