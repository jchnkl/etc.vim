"haskellmode settings
let g:haddock_indexfiledir = expand("~") . "/" . ".vim" . "/"
" set indendation to 4 blanks for haskell files
autocmd FileType haskell setlocal shiftwidth=4 softtabstop=4
" autocmd FileType haskell lcd %:h
" autocmd FileType haskell let b:ghc_staticoptions = "-i" . expand("~") . "/" . ".xmonad/lib"
" autocmd FileType haskell compiler ghc
