#!/usr/bin/env bash

cd ~/Code/github.com/voodooGQ/dotfiles
stow autostart \
     bin \
     mimetypes \
     system \
     user-dirs \
     xfiles \
     ;

# Base16
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
source .zshrc
base16_gruvbox-dark-medium

# Ranger Devicons
git clone https://github.com/alexanderjeurissen/ranger_devicons \
          ~/.config/ranger/plugins/ranger_devicons

cd ~/.config/ranger/plugins/ranger_devicons
