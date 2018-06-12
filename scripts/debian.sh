#!/usr/bin/env bash

#  Neovim
sudo apt-add-repository ppa:neovim-ppa/stable

sudo apt-get update

sudo apt-get install software-properties-common python-dev python-pip \
    python3-dev python3-pip neovim
