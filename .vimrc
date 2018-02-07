call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdcommenter'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'leafgarland/typescript-vim'
Plug 'klen/python-mode'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'w0rp/ale'
Plug 'bling/vim-airline'
Plug 'majutsushi/tagbar'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'valloric/youcompleteme'


call plug#end()

syntax on

"set colorscheme 
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=0
colorscheme solarized

filetype plugin indent on

"set python
let g:pymode_python = 'python3'
set foldlevelstart=10
" Use deoplete.
let g:deoplete#enable_at_startup = 1
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

"Async linting ==================================================================
let g:ale_fixers = {
\   'javascript': ['eslint'],
\}
let g:ale_fix_on_save = 1 "fix file automatically on save
" Enable completion where available.
let g:ale_completion_enabled = 1
let g:ale_sign_column_always = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
let g:ale_set_quickfix = 1


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

"Toggle tagbar
nmap <F8> :TagbarToggle<CR>
