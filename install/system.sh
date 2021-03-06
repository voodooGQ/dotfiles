#!/usr/bin/env bash

echo "-------------------------------------------";
echo "Installing System Files";
echo "-------------------------------------------";

cd $HOME/.dotfiles

stow autostart \
     bin \
     mimetypes \
     system \
     user-dirs \
     xfiles \
     ;

# Base16
git clone https://github.com/chriskempson/base16-shell.git $HOME/.config/base16-shell
source .zshrc
base16_gruvbox-dark-medium

echo "-------------------------------------------";
echo "Installing System Files Complete";
echo "-------------------------------------------";
