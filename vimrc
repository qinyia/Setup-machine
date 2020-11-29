:set nu
:syntax on
:set expandtab
:set tabstop=4
:set shiftwidth=4
:set hlsearch
:set autoindent
:set ruler
:set showcmd

au BufRead,BufNewFile *.ncl set filetype=ncl
au! Syntax newlang source $VIM/ncl.vim

:set cursorcolumn
:set cursorline
