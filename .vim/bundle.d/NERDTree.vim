let g:NERDTreeQuitOnOpen = 1

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

autocmd BufLeave * if &ft == 'nerdtree' | :close | endif

nnoremap <silent> <Leader>nt :NERDTreeToggle<CR>
