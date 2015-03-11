#!/bin/sh

# A POSIX variable
OPTIND=1         # Reset in case getopts has been used previously in the shell.

while getopts "hsvzt" opt; do
  case "$opt" in
    h)echo "Specify which dotfiles to symlink." 
      echo "    Dependencies are noted below each option if any exist.\n"
      echo "-s for sublime text2"
      echo "-v for vim" 
      echo "    install inconsolata font. 'sudo apt-get install ttf-inconsolata' or grab the .otf file from http://www.levien.com/type/myfonts/inconsolata.html"
      echo "    install jshint for syntastic plugin. 'npm -g install jshint'"
      echo "-z for zsh & prezto"
      echo "    install iterm2 solarized theme"
      echo "    install zsh and zsh-completions via homebrew"
      echo "    install prezto. Visit https://github.com/sorin-ionescu/prezto for instructions."
      echo "-t for tmux"
      exit 0
      ;;
    s)ln -svin ~/.dotfiles/sublimetext2/* ~/.config/sublime-text-2/Packages/User/
      ;;
    v)ln -svin ~/.dotfiles/vim/.vimrc ~/.vimrc
      # For vim plugin management
      git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
      ;;
    z)ln -svin ~/.dotfiles/zsh/.zshrc ~/.zshrc
      ln -svin ~/.dotfiles/zsh/.zpreztorc ~/.zpreztorc
      ;;
    t)ln -svin ~/.dotfiles/tmux/.tmux.conf ~/.tmux.conf
      ;;
  esac
done

shift $((OPTIND-1))
[ "$1" = "--" ] && shift
