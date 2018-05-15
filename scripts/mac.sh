#!/usr/bin/env bash

# install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install packages
brew install nvim python2 python node

# Upgrade pip3
pip3 install --upgrade pip setuptools wheel

# Install NeoVim deps
pip3 install neovim
pip install neovim
npm install -g neovim
