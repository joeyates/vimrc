set showcmd                       " display incomplete commands
set visualbell t_vb=              " disable all bells

" handle typos
:command Q q                      " :Q for :q
:command QA qa
:command Qa qa
:command W w                      " :W for :w
:command WQ wq
:command Wq wq

" disable keys which have annoying behaviour when typed by mistake
nnoremap <F1> <nop>
nnoremap Q <nop>
nnoremap K <nop>

" Leader, p: enter 'paste mode'
nnoremap <Leader>p :set paste<CR>
" Leader, n: leave 'paste mode'
nnoremap <Leader>n :set nopaste<CR>
