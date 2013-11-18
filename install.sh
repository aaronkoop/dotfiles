#!/bin/sh

# A POSIX variable
OPTIND=1         # Reset in case getopts has been used previously in the shell.

while getopts "hsvpzt" opt; do
  case "$opt" in
    h)echo "Specify which dotfiles to symlink. Also note you will need to backup and move existing files yourself otherwise symlinking will fail. I'm lazy, deal with it."
      echo "-s for sublime text2"
      echo "-v for vim" 
      echo "-z for zsh & prezto"
      echo "-t for tmux"
      echo "-a for all"
      exit 0
      ;;
    s)ln -s ~/.dotfiles/sublimetext2/* ~/.config/sublime-text-2/Packages/User/
      ;;
    v)ln -s ~/.dotfiles/vim/.vimrc ~/.vimrc
      # For vim plugin management
      git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
      ;;
    z)ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc
      ln -s ~/.dotfiles/zsh/.zpreztorc ~/.zpreztorc
      ;;
    t)ln -s ~/.dotfiles/tmux/.tmux.conf ~/.tmux.conf
      ;;
  esac
done

shift $((OPTIND-1))
[ "$1" = "--" ] && shift
