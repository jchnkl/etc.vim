" When this setting is off (the default) the matches will appear from
" top to bottom with the topmost being selected. Turning it on causes the
" matches to be reversed so the best match is at the bottom and the
" initially selected match is the bottom most. This may be preferable if
let g:CommandTMatchWindowReverse = 1

let g:CommandTCancelMap          = '<Esc>'

" Alt-t
nnoremap <silent> t :CommandT<CR>
" Alt-b
nnoremap <silent> b :CommandTBuffer<CR>
