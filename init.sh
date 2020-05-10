#!/bin/bash
cd `dirname $0`

sudo apt update && sudo apt install zsh git

# setup zsh
./init.zsh

# install dotfiles
./install.sh
