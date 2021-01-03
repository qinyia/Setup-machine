# Setup-machine

## Description: this repo is used to save all kinds of files/setup for a clean machine.

### highlight keywords in NCL script
- download ncl.vim and put it in ~/.vim/syntax/ directory. If its name is not ncl.vim, replace it. [wget https://www.ncl.ucar.edu/Applications/Files/ncl3.vim]
- put two lines in .vimrc: 
```
au BufRead,BufNewFile *.ncl set filetype=ncl
au! Syntax newlang source $VIM/ncl.vim
```
- If it does not work, add 'syntax on' in .vimrc as well. '

