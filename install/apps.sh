#!/usr/bin/env bash

echo "-------------------------------------------";
echo "Installing System Applications";
echo "-------------------------------------------";

sudo apt-get install -y \
  aptitude \
  arandr \
  cargo \
  compton \
  curl \
  dunst \
  exfat-fuse \
  exfat-utils \
  flameshot \
  fzf \
  highlight \
  htop \
  httpie \
  hub \
  i3 \
  jmtpfs \
  jq \
  lxappearance \
  mtp-tools \
  nautilus \
  neofetch \
  net-tools \
  nvidia-prime \
  pavucontrol \
  powertop \
  rofi \
  scrot \
  screen \
  slack \
  stow \
  surfraw \
  tig \
  tilix \
  tlp \
  tmux \
  tmuxinator \
  unclutter \
  w3m \
  w3m-img \
  wget \
  xautolock \
  xcb \
  zeal \
  ;

stow clipit \
     compton \
     dunst \
     git \
     gtk-2.0 \
     gtk-3.0 \
     htop \
     i3 \
     neofetch \
     tmux;

echo "-------------------------------------------";
echo "System Applications Complete";
echo "-------------------------------------------";
