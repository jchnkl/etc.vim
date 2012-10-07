"haskellmode settings
let g:haddock_indexfiledir = expand("~") . "/" . ".vim" . "/"
" set indendation to 4 blanks for haskell files
autocmd FileType haskell setlocal shiftwidth=4 softtabstop=4
autocmd FileType haskell lcd %:h
" autocmd FileType haskell let b:ghc_staticoptions = "-i" . expand("~") . "/" . ".xmonad/lib"
" autocmd FileType haskell compiler ghc

if os == 'FreeBSD'
    let g:haddock_browser="/usr/local/bin/firefox3"
    let g:haddock_docdir="/usr/local/share/doc/ghc-6.10.4"
elseif os == 'Linux'
    let g:haddock_browser="/usr/bin/firefox"
    let g:haddock_docdir="/usr/share/doc/ghc/html"
    let g:EclimEclipseHome = '/usr/share/eclipse'
endif
