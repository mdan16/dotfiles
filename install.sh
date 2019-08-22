#!/bin/bash
cd `dirname $0`
DOTFILES=$(cd $(dirname $0); pwd)

for f in .??*
do
    if [ "$f" = ".git" ]; then
        continue
    fi
    
    ln -snfv "$DOTFILES/$f" "$HOME/$f"
done