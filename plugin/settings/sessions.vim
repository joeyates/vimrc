"" Save and reload session in current directory
fu! SaveSess()
  execute 'mksession! ' . getcwd() . '/.session.vim'
endfunction

fu! RestoreSess()
  if filereadable(getcwd() . '/.session.vim')
    execute 'so ' . getcwd() . '/.session.vim'
    if bufexists(1)
      for l in range(1, bufnr('$'))
        if bufwinnr(l) == -1
          exec 'sbuffer ' . l
        endif
      endfor
    endif
  endif
endfunction

if has('gui_running')
  autocmd VimLeave * call SaveSess()
  autocmd VimEnter * nested call RestoreSess()

  set sessionoptions-=options  " Don't save options
  set sessionoptions-=winpos   " Restore window position
  set sessionoptions-=resize   " Restore window size
  set sessionoptions-=help     " Don't reload help buffers
  set sessionoptions-=blank    " Don't reload blank buffers
endif

