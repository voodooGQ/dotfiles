#!/usr/bin/env bash

# Clear out autogenned zshrc file from oh-my-zsh
rm -rf ~/.zshrc

cd ~/Code/github.com/voodooGQ/dotfiles
stow autostart bin clipit dunst git gtk-2.0 gtk-3.0 htop i3 mimetypes neofetch plank ruby system \
     tmux user-dirs vim xfce4 xfiles zsh

# Install Vundle
cd scripts
./install_vundle.sh

# Base16
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
source .zshrc
base16_gruvbox-dark-medium

# Ranger Devicons
git clone https://github.com/alexanderjeurissen/ranger_devicons \
          ~/.config/ranger/plugins/ranger_devicons

cd ~/.config/ranger/plugins/ranger_devicons

# RBENV + Ruby-Build
mkdir -p ~/Code/github.com/rbenv/
git clone git@github.com:rbenv/rbenv.git ~/Code/github.com/rbenv/rbenv
git clone git@github.com:rbenv/ruby-build.git ~/Code/github.com/rbenv/ruby-build
ln -s ~/Code/github.com/rbenv/rbenv ~/.rbenv
mkdir -p ~/.rbenv/plugins/
ln -s ~/Code/github.com/rbenv/ruby-build ~/.rbenv/plugins/ruby-build
cd ~/.rbenv && src/configure && make -C src

# pip
pip install spotify-cli-linux
pip install youtube-dl

# ----- Custom Deb

# BAT: Updated package - https://github.com/sharkdp/bat/releases
sudo dpkg -i ~/.dotfiles/deb/bat_0.11.0_amd64.deb
