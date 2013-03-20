" http://stackoverflow.com/questions/9403098/is-it-possible-to-jump-to-closed-folds-in-vim
nnoremap <silent> zJ :call NextClosedFold('j')<cr>
nnoremap <silent> zK :call NextClosedFold('k')<cr>

function! NextClosedFold(dir)
  let cmd = 'norm!z' . a:dir
  let view = winsaveview()
  let [l0, l, open] = [0, view.lnum, 1]
  while l != l0 && open
    exe cmd
    let [l0, l] = [l, line('.')]
    let open = foldclosed(l) < 0
  endwhile
  if open
    call winrestview(view)
  endif
endfunction

nnoremap <silent> ( :call SkipClosedFold('(', 'u')<CR>
nnoremap <silent> ) :call SkipClosedFold(')', 'd')<CR>

nnoremap <silent> { :call SkipClosedFold('{', 'u')<CR>
nnoremap <silent> } :call SkipClosedFold('}', 'd')<CR>

function! SkipClosedFold(move, ud)
  let closed = foldclosed(line('.'))
  if closed != -1
    exe 'normal!' . ( a:ud == 'u' ? closed : foldclosedend(line('.')) ) . 'G'
  endif
  exe 'normal!' . a:move
endfunction
