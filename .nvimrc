call plug#begin('~/.config/nvim/plugins')
" Eager loaded general plugins
Plug 'w0rp/ale' 						   " Asynchronous linting framework
Plug 'tpope/vim-fugitive'					   " Git bindings
Plug 'joshdick/onedark.vim'					   " Atom's OneDark Colorscheme
Plug 'Raimondi/delimitMate'					   " Insert mode parens/quotes autocompletion
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
" Language Specific lazy loaded plugins
" JSX
Plug 'mxw/vim-jsx', { 'for': ['javascript', 'typescript'] }	   " JSX support
Plug 'heavenshell/vim-jsdoc', { 'for': ['javascript', 'typescript'] }                                    " Autogenerate JSDoc
" Javascript
Plug 'pangloss/vim-javascript', { 'for': 'javascript' } 	   " Javascript language syntax (also required by vim-jsx)
" TypeScript
Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }	   " TypeScript language syntax
Plug 'mhartington/nvim-typescript', { 'for': 'typescript' }	   " TypeScript completion and intellisense

Plug 'scrooloose/nerdcommenter'

Plug 'heavenshell/vim-pydocstring'
Plug 'bling/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'klen/python-mode'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi' " autocompletion source
Plug 'davidhalter/jedi-vim'



" Python 

call plug#end()
" deoplete.nvim, deoplete-jedi
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#jedi#show_docstring = 1
let g:python3_host_prog  = '/usr/bin/python'
let g:deoplete#enable_ignore_case = 1
let g:deoplete#enable_smart_case = 1
" Enable mouse support
set mouse=a
set hidden

let mapleader = " "

"set python
let g:pymode_python = 'python3'
set foldlevelstart=10
nmap <silent> <C-p> <Plug>(pydocstring)
let g:pymode_rope_lookup_project = 0

let g:onedark_terminal_italics= 1

set splitbelow splitright

syntax on
colorscheme onedark
set background=dark
set ignorecase
set undolevels=1000
set undofile
set undodir=~/.vim/bundle/undo
set nu rnu
set nowrap
set autoindent
set smartindent
set dir=~/tmp
set noswapfile
set clipboard=unnamed

set cursorline
set title
set ruler
let g:EditorConfig_exclude_patterns = ['fugitive://.*']
"Search=====================
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set ignorecase

set wrap "Wrap lines
" Linebreak on 500 characters
set lbr
set tw=500


" easier :
map ; :

" jump wrapped lines as one would expect to
map j gj
map k gk

" clear search highlighting
noremap <silent> <leader>W :noh<cr>:call clearmatches()<cr>

let g:deoplete#enable_at_startup = 1
let g:deoplete#file#enable_buffer_path = 1  " Relative path completion

let g:ale_linters = {
      \   'javascript': ['eslint'],
      \   'typescript': ['tslint', 'tsserver'],
      \}

let g:ale_fixers = {
      \   'javascript': ['eslint'],
      \   'typescript': ['tslint'],
      \}

let g:ale_sign_warning = '.'

let g:ale_set_quickfix = 1
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 1
let g:ale_lint_on_enter = 0

set inccommand=nosplit

set statusline+=%{exists('g:loaded_fugitive')?fugitive#statusline():''}

nnoremap <silent> <leader>3 :b#<CR>
map <C-n> :NERDTreeToggle<CR>

let NERDTreeShowHidden=1
nnoremap <F4> :NERDTreeFin;<CR>


tnoremap <Leader><ESC> <C-\><C-n>

