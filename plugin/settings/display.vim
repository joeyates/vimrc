set background=dark
colorscheme solarized

"" status line
set laststatus=2                  " show status bar
set statusline=
set statusline+=%t\               " filename
set statusline+=%y\               " file type
set statusline+=[%l,%c]           " file position: [line,column]

"" whitespace
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab                     " convert tabs to spaces

"" cursor
set gcr=a:blinkon0                " disable cursor blink

set number                        " show line numbers

set guioptions-=m               " no menu
set guioptions-=T               " no tool bar
set guioptions-=r               " no right scroll bar

"" long lines
set colorcolumn=85

