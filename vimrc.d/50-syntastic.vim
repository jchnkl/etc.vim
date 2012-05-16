" syntastic
function SyntasticAutoCmd()
    if exists(":SyntasticCheck")
        autocmd InsertLeave * SyntasticCheck
    endif
endfunction

autocmd VimEnter * call SyntasticAutoCmd()

" Use this option to tell syntastic to automatically open and/or close the
" |location-list| (see |syntastic-error-window|).
" When set to 0 the error window will not be opened or closed automatically.
" When set to 1 the error window will be automatically opened when errors are
" detected, and closed when none are detected.
" When set to 2 the error window will be automatically closed when no errors
" are detected, but not opened automatically.
let g:syntastic_auto_loc_list=1

" undocumented variable for haskell syntax checker
" options are passed to ghc-mod, run 'ghc-mod help'
let g:syntastic_haskell_checker_args =
            \ '--hlintOpt="--language=XmlSyntax"
            \  --ghcOpt="-i${HOME}/.xmonad/lib"'
