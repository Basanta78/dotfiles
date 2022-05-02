call plug#begin('~/.config/nvim/plugins')

Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
Plug 'segeljakt/vim-silicon'
Plug 'morhetz/gruvbox'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
call plug#end()

"====================================================================
"NERDTREE config
map <C-n> :NERDTreeToggle<CR> 	
"====================================================================

"====================================================================
"Auto pairs config
"Vim Fugitive config - vim git plugin
"Vim airline - vim tabline plugin
"Ctrlp - full path fuzzy finder
"Gitgutter - git diff for vim
"Vim silicon - code screenshot
"====================================================================

"====================================================================
"Gruvbox config
autocmd vimenter * colorscheme gruvbox
"====================================================================

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

"General Settings
"====================================================================================
syntax on
set number  "set number
set relativenumber  "set relative number
set pastetoggle=<F2>
set ruler
set cursorline
set title
set encoding=utf-8 "set encoding to utf-8
set wildmenu " visual autocomplete for command menu
set mouse=a
set noswapfile

"TAB setting=======================================
"user spaces instead of tab
set expandtab
set softtabstop=4
" Be smart when using tabs ;)
set smarttab
" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

" Make Vim to handle long lines nicely.
set wrap
set textwidth=79


"Search=====================
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set ignorecase

set ai "Auto indent
set si "Smart indent
set autoread   "detect when file is changed"

" C program compile
map <F9> :w <CR> :!clear && gcc % <CR>
map <C-F9> :w <CR> :!clear && gcc % -o  a.out && ./a.out <CR>


"=========================================
lua require('lsp-config')

