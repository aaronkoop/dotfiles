## install

At some point I need to redo this properly with symlinking. For the time being, this script will simply copy the dotfiles into their respective directories. This overwrites everything with no backup (except zsh) D:

```sh
git clone https://github.com/aakoop/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
sh install.sh
```
I also use the inconsolata font in most of my text editors

```sh
sudo apt-get install ttf-inconsolata
```

## components

### sublimetext2 
* I use the following plugins managed by [Sublime Package Control](http://wbond.net/sublime_packages/package_control)
  * emmit
  * bracket highligher
  * docblockr
  * sublimecodeintel
  * sublimelinter

### vim
* just .vimrc for now, I need to add the plugins here soon.

### zsh 
* Just my .zshrc file for oh-my-zsh
