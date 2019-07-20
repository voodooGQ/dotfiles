#!/usr/bin/env bash

echo "-------------------------------------------";
echo "Python Installation";
echo "-------------------------------------------";

# Install Oh My ZSH
sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
rm -rf $HOME/.zshrc

echo "-------------------------------------------";
echo "ZSH Install Complete";
echo "-------------------------------------------";