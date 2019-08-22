#!/bin/bash
cd `dirname $0`

sudo apt update && sudo apt install zsh git

# setup neobundle
mkdir ~/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

# setup zsh
./init.zsh

# install dotfiles
./install.sh