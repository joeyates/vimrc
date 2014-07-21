set background=dark
colorscheme solarized

if has('gui_running')
  set guifont=Monospace\ 11
endif

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

set nonumber                      " show line numbers

set guioptions-=m               " no menu
set guioptions-=T               " no tool bar
set guioptions-=r               " no right scroll bar

if !has('gui_running')
  colorscheme jgy-256
end

"" color options
set cursorline                    " highlight the line containing the cursor
set colorcolumn=85                " show a ruler to limit long lines
