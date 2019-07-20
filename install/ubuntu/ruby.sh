#!/usr/bin/env bash

echo "-------------------------------------------";
echo "Ruby Installation";
echo "-------------------------------------------";

# RBENV + Ruby-Build
mkdir -p ~/Code/github.com/rbenv/
git clone git@github.com:rbenv/rbenv.git ~/Code/github.com/rbenv/rbenv
git clone git@github.com:rbenv/ruby-build.git ~/Code/github.com/rbenv/ruby-build
ln -s ~/Code/github.com/rbenv/rbenv ~/.rbenv
mkdir -p ~/.rbenv/plugins/
ln -s ~/Code/github.com/rbenv/ruby-build ~/.rbenv/plugins/ruby-build
cd ~/.rbenv && src/configure && make -C src

# Ruby install
rbenv install 2.6.3
rbenv global 2.6.3
rbenv rehash

echo "-------------------------------------------";
echo "Ruby Installation";
echo "-------------------------------------------";