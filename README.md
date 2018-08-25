# dotfiles
My dotfiles!  

```
git clone --recursive https://github.com/Montycarlo/dotfiles.git
```


## Installation

```
sudo pacman -S slock --noconfirm
```

#### Arc Theme
Install the arc theme as follows;  

```bash
git clone https://github.com/horst3180/arc-theme ~/.runtime/arc-theme --depth 1 && cd ~/.runtime/arc-theme 
./autogen.sh --prefix=/usr
sudo make install
git clone https://github.com/horst3180/arc-icon-theme ~/.runtime/arc-icon-theme --depth 1 && cd ~/.runtime/arc-icon-theme
./autogen.sh --prefix=/usr
sudo make install
```  

#### Fish shell

```
sudo pacman -S fish --noconfirm
curl -L http://get.oh-my.fish | fish
omf install bobthefish
```
