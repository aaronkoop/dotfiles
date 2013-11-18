## dotfiles
My personal dotfiles for software I use on a regular basis. I highly recommend using git to host these as it makes setting up a new machine a breeze. 
## install

Grab the following dependencies if you don't have them:
```sh
# For syntastic plugin
npm -g install jshint                   

# Font I use in most of my text editors
sudo apt-get install ttf-inconsolata    

# Visit https://github.com/sorin-ionescu/prezto for zsh and prezto setup
```
Copy and symlink
```sh
git clone https://github.com/aaronkoop/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
sh install.sh -h
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
* Plugins are managed through NeoBundle. Install script will grab all of mine.

### tmux
* .tmux.conf

### zsh 
* Configs for prezto
