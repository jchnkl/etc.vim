let g:tagbar_left = 1
let g:tagbar_width = 25
let g:tagbar_autoshowtag = 1

autocmd VimEnter * nested :call tagbar#autoopen(1)
autocmd FileType * nested :call tagbar#autoopen(0)
autocmd BufEnter * nested :call tagbar#autoopen(0)

nmap <silent> <Leader>tb :TagbarToggle<CR>
