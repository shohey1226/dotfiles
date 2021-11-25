#!/bin/bash

sudo apt-get -y update

# nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
. .nvm/nvm.sh
npm install yarn -g

# Neovim
sudo apt-get -y install neovim 

# dein
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein
rm installer.sh

# fzf
sudo apt-get -y install fzf

# rbenv
sudo apt-get -y install rbenv

# fish shell
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt-get -y install fish

# UI
sudo apt-get -y install jq
sudo apt-get -y install powerline
sudo apt-get -y install lolcat 
tmux source ~/.tmux.conf
# tmux prefix + I to fetch plugin
