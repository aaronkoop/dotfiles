## dotfiles
My personal dotfiles for software I use on a regular basis. I highly recommend using git to host these as it makes setting up a new machine a breeze. 
## install

Grab the following dependencies if you don't have them:
```sh
# For syntastic plugin
npm -g install jshint                   

# Font I use in most of my text editors
sudo apt-get install ttf-inconsolata    
```
Copy and symlink
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
