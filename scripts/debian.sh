#!/usr/bin/env bash

#  Neovim
sudo apt-add-repository ppa:neovim-ppa/stable

sudo apt-get update

sudo apt-get install -y software-properties-common python-dev python-pip \
    python3-dev python3-pip neovim terminator stow i3 compton zsh curl \
    dunst neofetch htop clipit plank rbenv tmux tmuxinator build-essential
    libssl-dev libxcbl-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev \
    libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev \
    libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev \
    libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev xutils-dev \
    libxcb-shape0-dev autoconf xutils-dev autoconf libtool pkg-config \
    xcb flameshot


# NVM
curl https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash

# Make ZSH Default
chsh -s $(which zsh)

# Oh My ZSH
rm -rf ~/.oh-my-zsh
unlink -s ~/.zshrc
rm -rf ~/.zshrc
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
rm -rf ~/.zshrc

cd ~/.dotfiles
stow autostart clipit dunst git htop i3 mimetypes neofetch plank ruby system tmux user-dirs vim xfce4 xfiles zsh

./~/.dotfiles/scripts/install_vundle.sh

