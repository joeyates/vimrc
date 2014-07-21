"" System
set nocompatible                  " no vi compatability

"" Syntax
syntax enable
filetype plugin indent on

"" Text
set encoding=utf-8

call pathogen#infect()

let mapleader=" "
let maplocalleader = "\\"

"This allows for change paste motion cp{motion}
function! ChangePaste(type, ...)
    silent exe "normal! `[v`]\"_c"
    silent exe "normal! p"
endfunction
nmap <silent> cp :set opfunc=ChangePaste<CR>g@
