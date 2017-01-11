#!/bin/sh
pacman -S slock

mkdir ~/.runtime

# Arc theme
git clone https://github.com/horst3180/arc-theme ~/.runtime/arc-theme --depth 1 && cd ~/.runtime/arc-theme 
./autogen.sh --prefix=/usr
sudo make install

git clone https://github.com/horst3180/arc-icon-theme ~/.runtime/arc-icon-theme --depth 1 && cd ~/.runtime/arc-icon-theme
./autogen.sh --prefix=/usr
sudo make install

