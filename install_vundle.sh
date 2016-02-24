#!/usr/bin/env bash

# install if it doesn't already exist
if [ ! -d "${HOME}/.vim/bundle/Vundle.vim" ]; then
	echo "";
	echo -n "installing vundle ...";
	mkdir -p ~/.vim/bundle > /dev/null 2>&1;
	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim > /dev/null 2>&1;
	echo " done";
else
	echo "vundle is already installed."
fi