#!/usr/bin/env bash

# install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install packages
brew install nvim python2 python node zsh

# Upgrade pip3
pip3 install --upgrade pip setuptools wheel

# Install NeoVim deps
pip3 install neovim
pip install neovim
npm install -g neovim

# Install base16-shell
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

# Install Oh-My-ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s /bin/zsh
