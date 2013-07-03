cp sublimetext2/* $HOME/.config/sublime-text-2/Packages/User/
cp vim/.vimrc $HOME/

# For vim plugin management
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

# Let Vundle clone all plugins
vim +BundleInstall +qall
