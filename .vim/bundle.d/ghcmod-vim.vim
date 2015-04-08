let g:ghcmod_ghc_options = ['-i${HOME}/.xmonad/lib', '-ilib']

" autocmd BufWritePost *.hs GhcModCheckAndLintAsync
autocmd BufWritePost *.hs GhcModCheckAsync

nmap _e :GhcModExpand<CR>
nmap _t :GhcModType<CR>
nmap _T :GhcModTypeClear<CR>
