#!/usr/bin/env bash

echo "-------------------------------------------";
echo "Installing Library and Compilation Packages";
echo "-------------------------------------------";

sudo apt-get install -y \
  autoconf \
  automake \
  build-essential \
  cmake \
  fonts-font-awesome \
  libev-dev \
  libmpdclient-dev \
  libpango1.0-dev \
  libpulse-dev \
  libpulse0 \
  libssl-dev \
  libstartup-notification0-dev \
  libtool \
  libcurl4-openssl-dev \
  libxcb-composite0-dev \
  libasound2-dev \
  libiw-dev \
  libxcb-ewmh-dev \
  libxcb-cursor-dev \
  libxcb-icccm4-dev \
  libxcb-keysyms1-dev \
  libxcb-randr0-dev \
  libxcb-shape0-dev \
  libxcb-util0-dev \
  libxcb-xinerama0-dev \
  libxcb-xkb-dev \
  libxkbcommon-dev \
  libxkbcommon-x11-dev \
  libyajl-dev \
  lsb-core \
  pkg-config \
  software-properties-common \
  xcb-proto \
  xutils-dev \
  ;

echo "-------------------------------------------";
echo "Library Installation Complete";
echo "-------------------------------------------";
