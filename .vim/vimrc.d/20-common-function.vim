function! LoadSession()
  if filereadable("Session.vim")
    source Session.vim
  endif
endfunction

function! SaveSession() "only save session if there exists one already
  if filereadable("Session.vim")
    mksession! Session.vim
  endif
endfunction

