let g:pathogen_disabled = [
                        \ ]

                        " \ , 'Command-T'
                        " \ , 'clang_complete'
                        " \ , 'errormarker.vim'
                        " \ , 'ghcmod-vim'
                        " \ , 'haskellmode-vim'
                        " \ , 'neco-ghc'
                        " \ , 'neocomplcache'
                        " \ , 'neocomplcache-clang_complete'
                        " \ , 'nerdcommenter'
                        " \ , 'nerdtree'
                        " \ , 'syntastic'
                        " \ , 'vim-align'
                        " \ , 'vim-colors-solarized'
                        " \ , 'vim-eunuch'
                        " \ , 'vim-fugitive'
                        " \ , 'vim-pathogen'
                        " \ , 'vim-repeat'
                        " \ , 'vim-showmarks'
                        " \ , 'vim-speeddating'
                        " \ , 'vim-surround'
                        " \ , 'vim-unimpaired'
                        " \ , 'vimproc'

if executable ( 'ghc-mod' )
    call add ( g:pathogen_disabled, 'haskellmode-vim' )
else
    call add ( g:pathogen_disabled, 'ghcmod-vim' )
endif

if ! executable ( 'clang' )
    call add ( g:pathogen_disabled, 'clang_complete' )
endif

runtime! submodules/vim-pathogen/autoload/pathogen.vim

call pathogen#infect('~/.vim/submodules')

Helptags
