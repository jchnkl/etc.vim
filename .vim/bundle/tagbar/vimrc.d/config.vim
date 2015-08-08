let g:tagbar_left = 1
let g:tagbar_width = 45
let g:tagbar_autoshowtag = 1
let g:tagbar_autofocus = 0
let g:tagbar_indent = 1
let g:tagbar_show_visibility = 1

let $tagbar_fts = "*.{c{,pp},hs}"

" Open only if supported file/files is/are supported
" autocmd VimEnter * nested :call tagbar#autoopen(1)
" autocmd VimEnter $tagbar_fts nested :TagbarOpen

" Open Tagbar for a supported file in an already running vim
" This is no good, messes with nerdcommenter, easytags & neocomplcache
" autocmd FileType * nested :call tagbar#autoopen(0)

" Open Tagbar in current tab when switching buffers
" autocmd BufEnter * nested :call tagbar#autoopen(0)
" autocmd BufWinEnter $tagbar_fts nested :TagbarOpen
" autocmd WinEnter $tagbar_fts nested :TagbarOpen

"""""""""""""""""""""""""""""""""""""""""""""""
"autocmd BufWinEnter $tagbar_fts :TagbarOpen

" Open Tagbar in current tab when switching buffers
" autocmd TabEnter * :call tagbar#autoopen(0)
" autocmd TabEnter * :TagbarClose
"""""""""""""""""""""""""""""""""""""""""""""""
" autocmd TabEnter $tagbar_fts :TagbarOpen

function! TagbarToggleAutoWidth()
    let minw = 25
    let maxw = 35
    let g:tagbar_width = max([minw, min([maxw, &columns - 2 * 80 - 15])])
    :execute "TagbarToggle"
    :execute "wincmd ="
endfunction

nnoremap <silent> <F11> :call TagbarToggleAutoWidth()<CR>
