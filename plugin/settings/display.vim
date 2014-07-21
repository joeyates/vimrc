if has('gui_running')
  set guifont=Monospace\ 11
  "" cursor
  set guicursor=a:blinkon0        " disable cursor blink

  set guioptions-=m               " no menu
  set guioptions-=T               " no tool bar
  set guioptions-=r               " no right scroll bar
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

set nonumber                      " don't show line numbers

"" colors
if has('gui_running')
  colorscheme solarized
  set background=dark
end

if !has('gui_running')
  colorscheme jgy-256
end

"" color options
set cursorline                    " highlight the line containing the cursor
set colorcolumn=85                " show a ruler to limit long lines
