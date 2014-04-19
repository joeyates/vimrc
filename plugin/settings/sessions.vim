"" Save and reload session in current directory
fu! RestoreSess()
  if $VIM_NO_SESSION == 1
    return
  end
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

fu! SaveSess()
  if $VIM_NO_SESSION == 1
    return
  end
  execute 'mksession! ' . getcwd() . '/.session.vim'
endfunction

autocmd VimEnter * nested call RestoreSess()
autocmd VimLeave * call SaveSess()

set sessionoptions+=winpos   " Restore window position
set sessionoptions+=resize   " Restore window size
set sessionoptions-=options  " Don't save options
set sessionoptions-=help     " Don't reload help buffers
set sessionoptions-=blank    " Don't reload blank buffers
