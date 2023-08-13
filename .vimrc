set digraph
set nocompatible
set backspace=indent,eol,start
set fileencodings=utf-8
set termencoding=utf-8
set encoding=utf-8
set number
set relativenumber
set background=dark

set cursorline
"set cursorcolumn
set mouse=a
set selection=exclusive
set selectmode=mouse,key
set showmatch
set clipboard=unnamedplus

set shiftwidth=4
set tabstop=4
set softtabstop=4
set smarttab
set expandtab
set autoindent
set cindent
set t_Co=256
set ignorecase
" set paste
set list
set listchars=precedes:«,extends:»,multispace:···,trail:.
set laststatus=2
set ruler
set nowrap
set ff=unix
set showcmd
set history=1000
set nobackup
set noswapfile
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
syntax enable
syntax on

" autocmd BufWritePost $MYVIMRC source $MYVIMRC
" *** molokai  
" let g:molokai_original = 1
let g:rehash256 = 1
colorscheme molokai

let mapleader="\<Space>"
inoremap jk <ESC> 

" ****************************
" plugin manager
" vim-plug install packages
" ***************************
call plug#begin()

Plug 'git@github.com:preservim/nerdtree.git',{ 'on': 'NERDTreeToggle' }
Plug 'git@github.com:907th/vim-auto-save.git'
Plug 'git@github.com:easymotion/vim-easymotion.git'
Plug 'git@github.com:tomasr/molokai.git'

call plug#end()

"*** nerdtree ***
nnoremap <silent><leader>e :NERDTreeToggle<CR>
nnoremap <silent><leader>n :NERDTreeFocus<CR>
" 

"*** vim-auto-save ***
let g:auto_save=1
let g:auto_save_silent=1
let g:auto_save_events = ["InsertLeave", "TextChanged"]

