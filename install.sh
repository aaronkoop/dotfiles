cp sublimetext2/* $HOME/.config/sublime-text-2/Packages/User/
cp vim/.vimrc $HOME/

# Let Vundle clone all plugins
vim +BundleInstall +qall
