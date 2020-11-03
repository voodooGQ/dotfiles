#!/usr/bin/env bash

echo "-------------------------------------------";
echo "Installing Vim";
echo "-------------------------------------------";

cd $HOME/.dotfiles

sudo apt-add-repository -y ppa:neovim-ppa/stable

sudo apt-get update

sudo apt-get install -y \
  neovim \
  ;

stow vim;

mkdir -p ~/.vim/bundle > /dev/null 2>&1;
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim > /dev/null 2>&1;

echo "-------------------------------------------";
echo "Installing Vim Complete";
echo "-------------------------------------------";
