## install

At some point I need to redo this properly with symlinking. For the time being, this script will simply copy the dotfiles into their respective directories and install any dependencies. The copying of files will overwrite everything, so please read what this script is doing before you run it!

```sh
git clone https://github.com/aakoop/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
sh install.sh
```
Optionally, install solarized palette on the terminal so vim terminal solarized works
```sh
git clone git://github.com/sigurdga/gnome-terminal-colors-solarized.git
cd gnome-terminal-colors-solarized
./solarize
```

## components

### sublimetext2 
* I use the following plugins managed by [Sublime Package Control](http://wbond.net/sublime_packages/package_control)
  * emmit
  * bracket highligher
  * docblockr
  * sublimecodeintel
  * sublimelinter
  * livereload

### vim
* Plugins are managed through Vundle. Install script will grab all of mine. Add your own to .vimrc and run :BundleInstall.

### zsh 
* Just my .zshrc file for oh-my-zsh
