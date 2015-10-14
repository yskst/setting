syntax on
filetype on
filetype plugin on
filetype indent on
set backup

noremap  
noremap!  
noremap <BS> 
noremap! <BS> 

set nocompatible
set backspace=indent,eol,start
set ruler
set showcmd
set list " show invisibility character
set listchars=tab:>^
set laststatus=2

set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set showmatch
set number

set incsearch
set hlsearch

set fileencodings=utf-8,euc-jp,cp932,iso-2022-jp,default


"python's option
filetype plugin on
autocmd FileType python setl autoindent
autocmd FileType python setl expandtab tabstop=4 shiftwidth=4 softtabstop=4

"configuration of highlight
hi Comment ctermfg=lightblue
