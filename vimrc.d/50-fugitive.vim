" https://github.com/tpope/vim-fugitive/issues/126
command -bar -bang -nargs=* Gci :Gcommit<bang> -v <args>

nnoremap <silent> <Leader>gs    :silent! :w!<CR>:Gstatus<CR>
nnoremap <silent> <Leader>gc    :silent! :Gwrite<CR>:Gci<CR>
