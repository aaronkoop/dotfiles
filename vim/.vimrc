" VUNDLE
filetype off
filetype plugin indent on
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'scrooloose/syntastic'
Bundle 'pangloss/vim-javascript'
Bundle 'jnurmine/Zenburn'
Bundle 'kien/ctrlp.vim'
Bundle 'bling/vim-airline'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'myusuf3/numbers.vim'

" PLUGINS SPECIFIC
map <C-n> :NERDTreeToggle<CR>               " Binding for NERDTree
nnoremap <F7> :NumbersToggle<CR>
nnoremap <F8> :NumbersOnOff<CR>
let g:EasyMotion_leader_key = '<Leader>'    " Change default from <Leader><Leader>
set laststatus=2                            " Fix airline not appearing until startup

" KEY MAPPINGS
map <F1> :set hlsearch! hlsearch?<CR>           " Toggle higlight searching
map <F2> zA                                     " F2 toggles current fold 
map <F3> zR                                     " F3 opens all folds
map <F4> zM                                     " F4 close all folds
map <F5> gg=G                                   " F5 retabs entire file
map <F6> :set paste!<CR>                        " Toggle paste mode
map <j> gj                                      " Up and down don't skip lines that wrapped
map <k> gk
map <leader>s :set spell!<CR>                   " Toggle spell check

" TABBING
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab     " Tabs are now spaces

" APPEARANCE
set number              " Line numbers visible.
set ruler               " Lower right corner numbers visible
set foldmethod=syntax   " Folding behavior
syntax enable
set t_Co=256            " For color scheme to work in terminal
colors zenburn  
set cursorline          " highlight the current line

" SEARCHING
set hlsearch        " Highlight search terms
set incsearch       " Incremental searching
set ignorecase      " Searches are case insensitive
set smartcase       " Don't ignore case if there is a capital letter

" MISC
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
set nocompatible            " Behave like vim, not vi
set autochdir               " Automatically change the current directory to current file

" FONTS
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ Medium\ 12
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

if &term =~ '256color'
  " Disable Background Color Erase (BCE) so that color schemes
  " work properly when Vim is used inside tmux and GNU screen.
  " See also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif
