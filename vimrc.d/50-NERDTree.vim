let g:NERDTreeQuitOnOpen = 1

autocmd BufLeave * if &ft == 'nerdtree' | :close | endif

nnoremap <silent> <Leader>nt :NERDTreeToggle<CR>
