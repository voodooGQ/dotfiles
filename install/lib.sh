#!/usr/bin/env bash

echo "-------------------------------------------";
echo "Installing Library and Compilation Packages";
echo "-------------------------------------------";

sudo apt-get install -y \
  autoconf \
  automake \
  build-essential \
  cmake \
  fonts-firacode \
  fonts-font-awesome \
  libasound2-dev \
  libcurl4-openssl-dev \
  libev-dev \
  libiw-dev \
  libmpdclient-dev \
  libpango1.0-dev \
  libpulse-dev \
  libpulse0 \
  libpq-dev \
  libreadline-dev \
  libsasl2-dev \
  libssl-dev \
  libstartup-notification0-dev \
  libtool \
  libxcb-composite0-dev \
  libxcb-cursor-dev \
  libxcb-ewmh-dev \
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
