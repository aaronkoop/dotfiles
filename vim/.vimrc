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

" PLUGINS
" call pathogen#infect()      " For plugin management
" call pathogen#helptags()    " Call :helptags on each plugin directory
filetype on
filetype plugin on

" PLUGINS SPECIFIC
" let g:EasyMotion_leader_key = '<Leader>'    " Change default from <Leader><Leader>
" let g:ctrlp_working_path_mode = ''

" TABBING
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab     " Tabs are now spaces
filetype indent on

" APPEARANCE
set cursorline          " highlight the current line
set number              " Line numbers visible.
set ruler               " Lower right corner numbers visible
set foldmethod=syntax   " Folding behavior
" color zenburn
syntax enable
set t_Co=256            " For color scheme to work in terminal

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
" set shell=/bin/zsh\ -i      " Call alias using the :! directive

" FONTS
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ Medium\ 12
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif
