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
"====================================================================
"coc config
"Better display of message
set cmdheight=2
"always show signcolumns
set signcolumn=yes
"Use tab for trigger completion with characters ahead and navigate.

" Use command ':verbose imap <tab>' to make sure tab is not mapped by other
" plugin.
 inoremap <silent><expr> <TAB>
       \ pumvisible() ? "\<C-n>" :
             \ <SID>check_back_space() ? "\<TAB>" :
                   \ coc#refresh()
                   inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

                   function! s:check_back_space() abort
                     let col = col('.') - 1
                       return !col || getline('.')[col - 1]  =~# '\s'
                       endfunction
" Remap keys for gotos
 nmap <silent> gd <Plug>(coc-definition)
 nmap <silent> gy <Plug>(coc-type-definition)
 nmap <silent> gi <Plug>(coc-implementation)
 nmap silent>< gr <Plug>(coc-references)>>>>>

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

