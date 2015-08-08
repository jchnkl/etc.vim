function! ScrollToPercent(percent)
  let movelines=winheight(0)*(50-a:percent)/100
  echo movelines
  if movelines<0
    let motion='k'
    let rmotion='j'
    let movelines=-movelines
  elseif movelines>0
    let motion='j'
    let rmotion='k'
  else
    return 0
  endif
  if has('float') && type(movelines)==type(0.0)
    let movelines=float2nr(movelines)
  endif
  execute 'normal! zz'.movelines.motion.'zz'.movelines.rmotion
endfunction

for p in range(1, 9)
  execute "nnoremap <silent> z" . p ":<C-u>call ScrollToPercent(" . p * 10 . ")<CR>"
endfor
