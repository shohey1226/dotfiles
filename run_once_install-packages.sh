#!/bin/bash

sudo apt-get -y update

# Neovim
sudo apt-get -y install neovim 

# dein
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein

# fzf
sudo apt-get -y install fzf

# nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
nvm install --lts

# rbenv
sudo apt-get -y install rbenv

# fish shell
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt-get -y install fish
