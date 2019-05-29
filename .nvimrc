
call plug#begin('~/.config/nvim/plugins')
" Eager loaded general plugins
Plug 'w0rp/ale' 						   " Asynchronous linting framework
Plug 'tpope/vim-fugitive'					   " Git bindings
Plug 'joshdick/onedark.vim'					   " Atom's OneDark Colorscheme
Plug 'Raimondi/delimitMate'					   " Insert mode parens/quotes autocompletion
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
" Language Specific lazy loaded plugins
" JSX
" Plug 'mxw/vim-jsx', { 'for': ['javascript', 'typescript'] }	   " JSX support
Plug 'heavenshell/vim-jsdoc', { 'for': ['javascript', 'typescript'] }                                    " Autogenerate JSDoc
" Javascript
Plug 'pangloss/vim-javascript', { 'for': 'javascript' } 	   " Javascript language syntax (also required by vim-jsx)
" TypeScript
" Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }	   " TypeScript language syntax
" Plug 'mhartington/nvim-typescript', { 'for': 'typescript' }	   " TypeScript completion and intellisense

Plug 'scrooloose/nerdcommenter'
Plug 'heavenshell/vim-pydocstring'
Plug 'bling/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'klen/python-mode'
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'zchee/deoplete-jedi' " autocompletion source
Plug 'davidhalter/jedi-vim'

Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}  "Auto complete


" Python 

call plug#end()
" deoplete.nvim, deoplete-jedi

" let g:deoplete#enable_at_startup = 1
" let g:deoplete#sources#jedi#show_docstring = 1
" let g:python3_host_prog  = '/usr/bin/python'
" let g:deoplete#enable_ignore_case = 1
" let g:deoplete#enable_smart_case = 1
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

set splitbelow splitright
" Set vim default split 
set splitbelow splitright
"Copy and paste
vnoremap <C-c> "+y
map <C-v> +p
nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>

" #########################################33
" Coc config"
" "
let g:coc_global_extensions=['coc-emoji', 'coc-eslint', 'coc-prettier', 'coc-tsserver', 'coc-tslint', 'coc-tslint-plugin','coc-css', 'coc-json', 'coc-pyls', 'coc-yaml', 'coc-python']


" Better display for messages
set cmdheight=2
" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300
" don't give |ins-completion-menu| messages.
set shortmess+=c
" always show signcolumns
set signcolumn=yes

" Use `lp` and `ln` for navigate diagnostics
nmap <silent> <leader>lp <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>ln <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> <leader>ld <Plug>(coc-definition)
nmap <silent> <leader>lt <Plug>(coc-type-definition)
nmap <silent> <leader>li <Plug>(coc-implementation)
nmap <silent> <leader>lf <Plug>(coc-references)

" Remap for rename current word
nmap <leader>lr <Plug>(coc-rename)

" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')
