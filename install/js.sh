#!/usr/bin/env bash

echo "-------------------------------------------";
echo "JavaScript Installation";
echo "-------------------------------------------";

curl https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash

cd $HOME/.dotfiles
stow js

echo "-------------------------------------------";
echo "JavaScript Installation Complete";
echo "-------------------------------------------";
