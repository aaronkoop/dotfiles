ln -s ~/.dotfiles/sublimetext2/* ~/.config/sublime-text-2/Packages/User/
ln -s ~/.dotfiles/vim/.vimrc ~/.vimrc

# For vim plugin management
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

# Let Vundle clone all plugins
vim +BundleInstall +qall
