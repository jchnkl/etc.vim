" let g:NERDTreeQuitOnOpen = 1
let g:NERDChristmasTree = 1
let g:NERDTreeHijackNetrw = 1
let g:NERDTreeWinPos = "right"
" let g:NERDTreeChDirMode = 2

" Default: ['\/$', '*', '\.swp$',  '\.bak$', '\~$']
let g:NERDTreeSortOrder = [ '\/$'
                        \ , '\.hs$'
                        \ , '\.java$'
                        \ , '\.\(h\(\|pp\|h\)\|H\)$', '\.\(c\(\|pp\|c\)\|C\)$'
                        \ , '*'
                        \ , '\.o$'
                        \ , '\.obj$'
                        \ , '\.class$'
                        \ , '\.info$'
                        \ , '\.swp$'
                        \ , '\.bak$'
                        \ , '\~$'
                        \ ]

" autocmd BufLeave * if &ft == 'nerdtree' | :close | endif
" autocmd FileType    * if &ft == 'nerdtree' | let &winwidth = 50 | endif
" autocmd FileType    * if &ft == 'nerdtree' | exe "normal 50\<C-W>|" | endif

" nnoremap <silent> <Leader>nt :NERDTreeToggle<CR>
nnoremap <silent> <F9> :NERDTreeToggle<CR>
