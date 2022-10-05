# dotfiles
My dotfiles!

```
git clone --recursive https://github.com/ropwareJB/dotfiles.git
```

## Installation

```bash
mkdir -p ~/config/nvim
ln -s $(pwd)/config/nvim/init.vim ~/.config/nvim/init.vim
ln -s $(pwd)/config/nvim/init-linux.vim ~/.config/nvim/init-linux.vim
ln -s $(pwd)/config/nvim/init-osx.vim ~/.config/nvim/init-osx.vim
ln -s $(pwd)/config/nvim/init-win.vim ~/.config/nvim/init-win.vim
ln -s $(pwd)/config/nvim/ginit.vim ~/.config/nvim/ginit.vim
ln -s $(pwd)/src/vim/bundle ~/.config/nvim/bundle
```

### Arch Linux

#### Fira Code
https://github.com/tonsky/FiraCode/wiki/Installing

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

```bash
sudo pacman -S fish --noconfirm
curl -L http://get.oh-my.fish | fish
omf install bobthefish
```

#### Slock
```bash
sudo pacman -S slock --noconfirm
```

### MacOSX

#### Fira Code
https://github.com/tonsky/FiraCode/wiki/Installing

```bash
brew tap homebrew/cask-fonts
brew install --cask font-fira-code
```

#### MacVim
https://github.com/macvim-dev/macvim

```bash
brew install macvim
mkdir ~/.vim
ln -s $(pwd)/config/nvim/init.vim ~/.vimrc
ln -s $(pwd)/config/nvim/bundle ~/.vim/bundle
ln -s $(pwd)/config/nvim/autoload ~/.vim/autoload
```

