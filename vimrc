"" System
set nocompatible                  " no vi compatability

"" Syntax
syntax enable
filetype plugin indent on

"" Text
set encoding=utf-8

call pathogen#infect()

"" When using ctrlp.vim, open files in a new tab
let g:ctrlp_prompt_mappings = {
  \ 'AcceptSelection("e")': [],
  \ 'AcceptSelection("t")': ['<cr>', '<c-m>'],
  \ }

