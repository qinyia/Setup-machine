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

"set comment
func SetComment()
        call append(line(".")-1, '#=============================================================')
        call append(line("."),'#=============================================================')
endfunc

func StartComment()
        let start_comment = '#<qinyi '
        let start_comment = start_comment.strftime("%Y-%m-%d")
        call append(line(".")-1, start_comment.' #------------------')
endfunc

func EndComment()
        let start_comment = '#>qinyi '
        let start_comment = start_comment.strftime("%Y-%m-%d")
        call append(line(".")-1, start_comment.' #------------------')
endfunc

map <F6> :call SetComment()<CR>k<CR>i
map <F7> :call StartComment()<CR>k<CR>i
map <F8> :call EndComment()<CR>k<CR>i

"set file head info
func SetFileHead()
        call append(0,'#****************************************************************')
        call append(1,'#')
        call append(2,'#    Filename: '.expand("%"))
        call append(3,'#')
        call append(4,'#    Author: Yi Qin - qin4@llnl.gov')
        call append(5,'#    Description: ')
        call append(6,'#    Input: ')
        call append(7,'#    Output: ')
        call append(8,'#    Create: '.strftime("%Y-%m-%d %H:%M:%S"))
        call append(9,'#    Last Modified: '.strftime("%Y-%m-%d %H:%M:%S"))
        call append(10,'#****************************************************************')
endfunc

map <F9> :call SetFileHead()<CR>:10<CR>o

func SetSubComment()
        call append(line(".")-1, '#----------------------------------------------------------')
        call append(line("."),'#----------------------------------------------------------')
endfunc

map <F10> :call SetSubComment()<CR>k<CR>i
