function! OpenHaskellFile()
  let f = tr(matchstr(getline(line('.')), 'import \zs[A-Za-z0-9.]\+'), ".", "/") . ".hs"
  if f == ".hs"
     echohl ErrorMsg
     echo "Not on an import line!"
     echohl NONE
     return
  endif
  if filereadable(f)
     if (&modified)
       echohl ErrorMsg
       echo "Current buffer is modified, save it first!"
       echohl NONE
     else
       execute ':e ' . f
     endif
  else
     echohl ErrorMsg
     echo "Can't find file \"" . f . "\" in path"
     echohl NONE
  endif
endfunction
