execute pathogen#infect()
syntax on

"set colorscheme 
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=0
colorscheme solarized

filetype plugin indent on
let g:pymode_python = 'python3'

set number  "set number
set relativenumber  "set relative number
"TAB setting=======================================
"user spaces instead of tab
set expandtab
" Be smart when using tabs ;)
set smarttab
" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2
set ruler

set cursorline

set title
" ========================================================================================
" Make Vim to handle long lines nicely.
set wrap
set textwidth=79

set laststatus=2
set encoding=utf-8 "set encoding to utf-8
set cursorline  " highlight current line
set wildmenu " visual autocomplete for command menu
"Search=====================
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set ignorecase

set wrap "Wrap lines
" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set autoread   "detect when file is changed"
"nerd tree toggle
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

"setup for js
let g:javascript_plugin_jsdoc = 1

"syntax highlight syntastic plugin
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"react jsx file
let g:jsx_ext_required = 0

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬
