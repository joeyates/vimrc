autocmd BufNewFile,BufRead Capfile,Rakefile	setf ruby

function! SubstituteInLine(linenumber, regexp, replacement)
  let line = getline(a:linenumber)
  let changed = substitute(line, a:regexp, a:replacement, 'g')
  call setline(a:linenumber, changed)
endfunction

" Converts
"     'abc' => 1
" to
"     :abc  => 1
function! RubySymbolizeKeys(line_number)
  call SubstituteInLine(a:line_number, '\(["'']\)\([a-z_]\+\)\1\(\s*\)=>\(\s*\)', ':\2\3=>\4')
endfunction

" Converts
"     :abc  => 1
" to
"     abc:     1
function! RubyJsonifyHashes(line_number)
  call SubstituteInLine(a:line_number, ':\([a-z_]\+\)\(\s*\)=>\s*', '\1:\2\3')
endfunction

function! RubyUpdateHashes() range
  for line_number in range(a:firstline, a:lastline)
    call RubySymbolizeKeys(line_number)
    call RubyJsonifyHashes(line_number)
  endfor
endfunction
command! -range RubyUpdateHashes <line1>,<line2>call RubyUpdateHashes()

" launch with '<Leader>h'
autocmd FileType ruby nnoremap <Leader>h :RubyUpdateHashes<CR>
autocmd FileType ruby vnoremap <Leader>h :RubyUpdateHashes<CR>gv
