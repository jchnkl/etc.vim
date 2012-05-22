let g:myscripts  = [ '00-pathogen.vim'
                 \ , '10-common-let.vim'
                 \ , '10-common-set.vim'
                 \ , '20-common-autocmd.vim'
                 \ , '20-common-function.vim'
                 \ , '20-common-map.vim'
                 \ , '50-CommandT.vim'
                 \ , '50-NERDCommenter.vim'
                 \ , '50-NERDTree.vim'
                 \ , '50-a.vim'
                 \ , '50-colors-solarized.vim'
                 \ , '50-colorscheme.vim'
                 \ , '50-fugitive.vim'
                 \ , '50-neocomplcache-clang.vim'
                 \ , '50-neocomplcache-clang_complete.vim'
                 \ , '50-neocomplcache.vim'
                 \ , '50-surround.vim'
                 \ , '50-syntastic.vim'
                 \ , '50-vimlatex.vim'
                 \ ]

               " \ , '50-buftabs.vim'
               " \ , '50-vala.vim'

if executable ( 'ghc-mod' )
    call add ( g:myscripts, '50-ghcmod.vim' )
else
    call add ( g:myscripts, '50-haskellmode.vim' )
endif

let myscriptdir = 'vimrc.d'

for myscript in g:myscripts
    execute 'runtime!' myscriptdir . '/' . g:myscript
endfor
