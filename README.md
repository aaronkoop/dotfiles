## install

Grab the following dependencies if you don't have them:
```sh
# For syntastic plugin
npm -g install jshint                   

# Font I use in most of my text editors
sudo apt-get install ttf-inconsolata    
```
Copy the dot files. At some point I need to redo this properly with symlinking. For the time being, this script will simply copy the dotfiles into their respective directories and install any dependencies. The copying of files will overwrite everything, so please read what this script is doing before you run it!
```sh
git clone https://github.com/aaronkoop/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
sh install.sh
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
* Plugins are managed through Vundle. Install script will grab all of mine.

### tmux
* .tmux.conf

### zsh 
* .zshrc file for oh-my-zsh
