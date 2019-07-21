#!/usr/bin/env bash

echo "-------------------------------------------";
echo "ZSH Installation";
echo "-------------------------------------------";

# Install Oh My ZSH
sudo apt-get install -y zsh;
sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
rm -rf $HOME/.zshrc
cd $HOME/.dotfiles/
stow zsh

echo "-------------------------------------------";
echo "ZSH Install Complete";
echo "-------------------------------------------";