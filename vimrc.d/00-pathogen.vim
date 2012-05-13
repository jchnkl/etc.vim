let g:pathogen_disabled = [
                        \ ]
                        " \ , 'haskellmode-vim'
                        " \ , 'buftabs'
                        " \ , 'nerdcommenter'
                        " \ , 'nerdtree'
                        " \ , 'syntastic'
                        " \ , 'vim-align'
                        " \ , 'vim-fugitive'
                        " \ , 'vimproc'
                        " \ , 'vim-showmarks'
                        " \ , 'neocomplcache'
                        " \ , 'neco-ghc'
                        " \ , 'errormarker.vim'
                        " \ , 'ghcmod-vim'
                        " \ , 'vim-colors-solarized'
                        " \ , 'vim-pathogen'
                        " \ , 'clang_complete'

if ! executable ( 'ghc-mod' )
    call add ( g:pathogen_disabled, 'ghcmod-vim' )
else
    call add ( g:pathogen_disabled, 'haskellmode-vim' )
endif

if ! executable ( 'clang' )
    call add ( g:pathogen_disabled, 'clang_complete' )
endif

runtime! submodules/vim-pathogen/autoload/pathogen.vim

call pathogen#infect('~/.vim/submodules')

Helptags
