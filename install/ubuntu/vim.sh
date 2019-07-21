#!/usr/bin/env bash

echo "-------------------------------------------";
echo "Installing Vim";
echo "-------------------------------------------";

cd $HOME/.dotfiles

sudo apt-add-repository ppa:neovim-ppa/stable

sudo apt-get update

sudo apt-get install \
  neovim \
  ;

stow vim;

# Install Vundle
./install/install_vundle.sh

echo "-------------------------------------------";
echo "Installing Vim Complete";
echo "-------------------------------------------";