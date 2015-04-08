let g:tcommentMaps = 0
let g:tcommentLineC = tcomment#GetCommentDef('cpp')
call tcomment#DefineType('c', g:tcommentLineC, {}, 1)

let g:tcommentMapLeaderOp1 = 'gc'
let g:tcommentMapLeaderOp2 = 'gC'
let g:tcommentTextObjectInlineComment = 'ic'

if g:tcommentMapLeaderOp1 != ''
    exec 'nmap <silent> '. g:tcommentMapLeaderOp1 .' <Plug>TComment-gc'
    for s:i in range(1, 9)
        exec 'nmap <silent> '. g:tcommentMapLeaderOp1 . s:i .' <Plug>TComment-gc'.s:i
    endfor
    unlet s:i
    exec 'nmap <silent> '. g:tcommentMapLeaderOp1 .'c <Plug>TComment-gcc'
    exec 'nmap <silent> '. g:tcommentMapLeaderOp1 .'b <Plug>TComment-gcb'
    exec 'xmap '. g:tcommentMapLeaderOp1 .' <Plug>TComment-gc'
endif
if g:tcommentMapLeaderOp2 != ''
    exec 'nmap <silent> '. g:tcommentMapLeaderOp2 .' <Plug>TComment-gC'
    exec 'nmap <silent> '. g:tcommentMapLeaderOp2 .'c <Plug>TComment-gCc'
    exec 'nmap <silent> '. g:tcommentMapLeaderOp2 .'b <Plug>TComment-gCb'
    exec 'xmap '. g:tcommentMapLeaderOp2 .' <Plug>TComment-gC'
endif
if g:tcommentTextObjectInlineComment != ''
    exec 'vmap' g:tcommentTextObjectInlineComment ' <Plug>TComment-ic'
    exec 'omap' g:tcommentTextObjectInlineComment ' <Plug>TComment-ic'
endif
