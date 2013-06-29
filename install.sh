# Install jshint for syntastic plugin
npm -g install jshint

# Font I use in most of my text editors
sudo apt-get install ttf-inconsolata

# Copy files
cp sublimetext2/* $HOME/.config/sublime-text-2/Packages/User/
cp vim/.vimrc $HOME/

# Get Vundle
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

# Let Vundle clone all plugins
vim +BundleInstall +qall
