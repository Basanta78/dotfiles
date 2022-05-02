call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
Plug 'segeljakt/vim-silicon'
Plug 'morhetz/gruvbox'
Plug 'prabirshrestha/vim-lsp'
call plug#end()
"====================================================================
"NERDTREE config
map <C-n> :NERDTreeToggle<CR> 	" nerd tree toggle
autocmd vimenter * NERDTree	" open a NERDTree automatically when vim starts up
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
map <C-F9> :w <CR> :!clear && gcc % -o a.out && ./a.out <CR>

"==========================
if executable('pyls')
    " pip install python-language-server
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'allowlist': ['python'],
        \ })
endif

function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> gs <plug>(lsp-document-symbol-search)
    nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> gi <plug>(lsp-implementation)
    nmap <buffer> gt <plug>(lsp-type-definition)
    nmap <buffer> <leader>rn <plug>(lsp-rename)
    nmap <buffer> [g <plug>(lsp-previous-diagnostic)
    nmap <buffer> ]g <plug>(lsp-next-diagnostic)
    nmap <buffer> K <plug>(lsp-hover)
    nnoremap <buffer> <expr><c-f> lsp#scroll(+4)
    nnoremap <buffer> <expr><c-d> lsp#scroll(-4)

    let g:lsp_format_sync_timeout = 1000
    autocmd! BufWritePre *.rs,*.go call execute('LspDocumentFormatSync')
    
    " refer to doc to add more commands
endfunction

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END
