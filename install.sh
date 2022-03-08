#!/bin/sh

rm -rf ~/.config/nvim.bk
mv -f ~/.config/nvim ~/.config/nvim.bk
mkdir ~/.config/nvim
cp -rv ./ ~/.config/nvim
