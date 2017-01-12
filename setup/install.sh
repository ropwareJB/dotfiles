#!/bin/sh
sudo pacman -S slock --noconfirm

mkdir ~/.runtime

## Arc Theme ############################
#########################################
git clone https://github.com/horst3180/arc-theme ~/.runtime/arc-theme --depth 1 && cd ~/.runtime/arc-theme 
./autogen.sh --prefix=/usr
sudo make install
git clone https://github.com/horst3180/arc-icon-theme ~/.runtime/arc-icon-theme --depth 1 && cd ~/.runtime/arc-icon-theme
./autogen.sh --prefix=/usr
sudo make install

## Nerd Font ############################
#########################################
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLo "DejaVu Sans Mono Nerd Font Complete.ttf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DejaVuSansMono/Regular/complete/DejaVu%20Sans%20Mono%20Nerd%20Font%20Complete%20Mono.ttf

## Fish Shell ###########################
#########################################
sudo pacman -S fish --noconfirm
curl -L http://get.oh-my.fish | fish
omf install bobthefish
