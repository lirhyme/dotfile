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
let g:github="git@github.com:"
call plug#begin()

Plug 'git@github.com:preservim/nerdtree.git',{ 'on': 'NERDTreeToggle' }
Plug 'git@github.com:907th/vim-auto-save.git'
Plug 'git@github.com:easymotion/vim-easymotion.git'
Plug 'git@github.com:tomasr/molokai.git'

Plug 'git@github.com:junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'git@github.com:junegunn/fzf.vim'

Plug 'git@github.com:vim-airline/vim-airline'
Plug 'git@github.com:vim-airline/vim-airline-themes'

Plug 'git@github.com:neoclide/coc.nvim', {'branch': 'release'}
Plug 'git@github.com:SirVer/ultisnips' 
Plug 'git@github.com:honza/vim-snippets'

call plug#end()

"*** nerdtree ***
nnoremap <silent><leader>e :NERDTreeToggle<CR>
nnoremap <silent><leader>n :NERDTreeFocus<CR>
" 

" *** vim-auto-save ***
let g:auto_save=1
let g:auto_save_silent=1
let g:auto_save_events = ["InsertLeave", "TextChanged"]


" *** fzf ***
let g:fzf_preview_window = ['hidden,right,50%,<70(up,40%)', 'ctrl-/']

" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-l> <plug>(fzf-complete-line)

" ************* airline ****************************
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" *************** coc ********

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                               \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" ******** ultisnips *****
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
