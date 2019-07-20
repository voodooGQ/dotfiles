#!/usr/bin/env bash

cd ~/Code/github.com/voodooGQ/dotfiles
stow autostart \
     bin \
     clipit \
     compton \
     dunst \
     git \
     gtk-2.0 \
     gtk-3.0 \
     htop \
     i3 \
     mimetypes \
     neofetch \
     plank \
     ruby \
     system \
     tmux \
     user-dirs \
     vim \
     xfiles \
     zsh

# Install Vundle
./install/install_vundle.sh

# Base16
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
source .zshrc
base16_gruvbox-dark-medium

# Ranger Devicons
git clone https://github.com/alexanderjeurissen/ranger_devicons \
          ~/.config/ranger/plugins/ranger_devicons

cd ~/.config/ranger/plugins/ranger_devicons
