#!/usr/bin/env bash

echo "-------------------------------------------";
echo "Installing Library and Compilation Packages";
echo "-------------------------------------------\n\n";

sudo apt-get install -y \
  software-properties-common \
  build-essential \
  libssl-dev \
  libxcb-keysyms1-dev \
  libpango1.0-dev \
  libxcb-util0-dev \
  libxcb-icccm4-dev \
  libyajl-dev \
  libstartup-notification0-dev \
  libxcb-randr0-dev
  libev-dev \
  libxcb-cursor-dev
  libxcb-xinerama0-dev
  libxcb-xkb-dev
  libxkbcommon-dev
  libxkbcommon-x11-dev \
  xutils-dev \
  libxcb-shape0-dev \
  automake \
  lsb-core \
  autoconf \
  libtool \
  pkg-config \
  libpulse0
  libpulse-dev \

echo "-------------------------------------------";
echo "Library Installation Complete";
echo "-------------------------------------------\n\n";