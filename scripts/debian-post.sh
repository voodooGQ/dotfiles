#!/usr/bin/env bash

rm -rf ~/.zshrc
cd ~/.dotfiles
stow autostart clipit dunst git htop i3 mimetypes neofetch plank ruby system tmux user-dirs vim xfce4 xfiles zsh

cd scripts
./install_vundle.sh

# Base16
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
source .zshrc
base16_gruvbox-dark-medium
