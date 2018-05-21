#!/usr/bin/env bash

# install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install packages
brew install nvim python2 python node zsh stow tmux rbenv ctags \
    reattach-to-user-namespace docker rg fzf grip

# iTerm
brew cask install iterm2

# Virtualbox & Vagrant install
brew cask install virtualbox
brew cask install vagrant
vagrant plugin install vagrant-vbguest

# Install a relevant ruby
rbenv install 2.5.1
rbenv global 2.5.1

# Install tmuxinator
gem install tmuxinator

# Upgrade pip3
pip3 install --upgrade pip setuptools wheel

# Install Pygments
pip install pygments

# TPM
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Install NeoVim deps
pip3 install neovim
pip install neovim
npm install -g neovim
gem install neovim

# Install base16-shell
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

# Install nerdfonts
git clone https://github.com/ryanoasis/nerd-fonts.git ~/.nerdfonts
cd ~/.nerdfonts
./install.sh
cd

# Install Oh-My-ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s /bin/zsh
