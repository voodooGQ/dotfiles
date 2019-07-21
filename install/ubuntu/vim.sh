#!/usr/bin/env bash

echo "-------------------------------------------";
echo "Installing Vim";
echo "-------------------------------------------";

cd $HOME/.dotfiles

stow vim

# Install Vundle
./install/install_vundle.sh

echo "-------------------------------------------";
echo "Installing Vim Complete";
echo "-------------------------------------------";