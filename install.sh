#!/bin/sh

# A POSIX variable
OPTIND=1         # Reset in case getopts has been used previously in the shell.

while getopts "hsvzt" opt; do
  case "$opt" in
    h)echo "Specify which dotfiles to symlink." 
      echo "    You will need to backup and move existing files yourself otherwise symlinking will fail."
      echo "    Dependencies are noted below each option if any exist.\n"
      echo "-s for sublime text2"
      echo "-v for vim" 
      echo "    install inconsolata font. 'sudo apt-get install ttf-inconsolata' or grab the .otf file from http://www.levien.com/type/myfonts/inconsolata.html"
      echo "    install jshint for syntastic plugin. 'npm -g install jshint'"
      echo "-z for zsh & prezto"
      echo "    install zsh and prezto. Visit https://github.com/sorin-ionescu/prezto for instructions."
      echo "-t for tmux"
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
