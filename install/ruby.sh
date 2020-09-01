#!/usr/bin/env bash

echo "-------------------------------------------";
echo "Ruby Installation";
echo "-------------------------------------------";

# RBENV + Ruby-Build
mkdir -p $HOME/Code/github.com/rbenv/
git clone git@github.com:rbenv/rbenv.git $HOME/Code/github.com/rbenv/rbenv
git clone git@github.com:rbenv/ruby-build.git $HOME/Code/github.com/rbenv/ruby-build
ln -s $HOME/Code/github.com/rbenv/rbenv $HOME/.rbenv
mkdir -p $HOME/.rbenv/plugins/
ln -s $HOME/Code/github.com/rbenv/ruby-build $HOME/.rbenv/plugins/ruby-build
cd $HOME/.rbenv && src/configure && make -C src

# Ruby install
rbenv install 2.7.1
rbenv global 2.7.1
rbenv rehash

cd $HOME/.dotfiles
stow ruby

echo "-------------------------------------------";
echo "Ruby Installation Complete";
echo "-------------------------------------------";
