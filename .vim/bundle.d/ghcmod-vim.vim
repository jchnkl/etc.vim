let g:ghcmod_ghc_options = ['-i${HOME}/.xmonad/lib', '-ilib']

" autocmd BufWritePost *.hs GhcModCheckAndLintAsync
autocmd BufWritePost *.hs GhcModCheckAsync

nmap _e :GhcModExpand<CR>
nmap _t :GhcModType<CR>
nmap _T :GhcModTypeClear<CR>

function! GhcModQuickFix()
    let minh = 10
    let maxh = 35
    let fraction = 4
    let height = max([minh, min([maxh, winheight(0) / fraction])])
    :execute "cwindow " . height
endfunction

let g:ghcmod_open_quickfix_function = 'GhcModQuickFix'
