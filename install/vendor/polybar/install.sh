#!/usr/bin/env bash
# https://github.com/polybar/polybar/wiki/Compiling

cd $HOME

sudo apt install build-essential \
git \ 
cmake \ 
cmake-data \ 
pkg-config \ 
python3-sphinx \
libcairo2-dev \
libxcb1-dev \
libxcb-util0-dev \
libxcb-randr0-dev \
libxcb-composite0-dev \ 
python3-xcbgen \ 
xcb-proto \ 
libxcb-image0-dev \
libxcb-ewmh-dev \
libxcb-icccm4-dev

mkdir -p Code/github.com/jaagr
cd Code/github.com/jaagr

git clone https://github.com/jaagr/polybar polybar
cd polybar

git checkout $(git tag | tail -n 1)

./build.sh