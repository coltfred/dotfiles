set nocompatible
filetype off                   " required!

set nohls
set nobackup
set nowritebackup
set smartindent
set expandtab
set sw=4
set notagbsearch
"set tags=/nfs/users/ma/cfrederickson/tags
"set tags=/nfs/users/ma/cfrederickson/src/trunk/rnw/tags
set statusline=\[%02n\]%*%<\ %f\ %h%m%r%*%=%-14.(%l,%c%)%P
set laststatus=2 " Always show a status line.
" Dear self, please never remove this again. You'll miss the way it tells you
" the number of visually selected lines. Affectionately, self.
set showcmd

" " I like to set this to slightly more so that if a command prints two lines,
" I don't have to scroll through it.
set cmdheight=2
syn on
syn sync minlines=5000
color elflord

map <F5> :buffers<CR>:e #

au BufNewFile,BufRead *.phph            setf php
au BufReadPre xmlin*.txt     silent call PrettyPrintXml()
au BufReadPre xmlout*.txt    silent call PrettyPrintXml()

fun! PrettyPrintXml()
    set buftype=nowrite ro ft=
     !cp % %.bak && xmlpp % > %.pp && mv %.pp %
     set ft=xml
endfun



set laststatus=2
set winminheight=0
set ts=4 sw=4 expandtab
set winminheight=0
set nobackup
set backspace=indent,eol,start " allow backspacing over everything in insert mode


