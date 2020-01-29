call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'w0rp/ale'
Plug 'bling/vim-airline'
Plug 'majutsushi/tagbar'
Plug 'heavenshell/vim-pydocstring'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'joshdick/onedark.vim'					   " Atom's OneDark Colorscheme
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'airblade/vim-gitgutter'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'segeljakt/vim-silicon'
call plug#end()

"General Settings
"====================================================================================
syntax on
colorscheme onedark "set colorscheme
set number  "set number
set relativenumber  "set relative number
"TAB setting=======================================
"user spaces instead of tab
set expandtab
set softtabstop=4
" Be smart when using tabs ;)
set smarttab
" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2
set ruler

set cursorline

set title
" Make Vim to handle long lines nicely.
set wrap
set textwidth=79

set encoding=utf-8 "set encoding to utf-8
set cursorline  " highlight current line
set wildmenu " visual autocomplete for command menu

"Search=====================
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set ignorecase

set ai "Auto indent
set si "Smart indent
set autoread   "detect when file is changed"
"====================================================================
"NERDTREE config
"nerd tree toggle
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

let g:loaded_netrw       = 1  "disable netrw plugin
let g:loaded_netrwPlugin = 1
"====================================================================
" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
let g:ale_set_quickfix = 1
let g:airline_powerline_fonts = 1


" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

