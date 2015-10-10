set encoding=utf-8
set fileencodings=utf-8,sjis,iso-2022-jp

let &t_ti.="\e[1 q" "カーソルを調整
let &t_SI.="\e[5 q" "カーソルを調整
let &t_EI.="\e[1 q" "カーソルを調整
let &t_te.="\e[0 q" "カーソルを調整
set backspace=indent,eol,start "Backspaceを調整

syntax on
filetype on
filetype plugin on
filetype indent on

set tabstop=2
set shiftwidth=2
set expandtab
set smartindent

set number
set list
set fileencodings=utf-8,euc-jp,cp932,iso-2022-jp,default
set showmatch
set hidden

"python's option
filetype plugin on
autocmd FileType python setl autoindent
autocmd FileType python setl expandtab tabstop=4 shiftwidth=4 softtabstop=4

"configuration of highlight
hi Comment ctermfg=lightblue


