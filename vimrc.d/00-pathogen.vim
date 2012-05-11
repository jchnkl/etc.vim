let g:pathogen_disabled = [ 'haskellmode-vim'
                        \ , 'supertab'
                        \ ]
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

runtime! submodules/vim-pathogen/autoload/pathogen.vim

call pathogen#infect('~/.vim/submodules')

Helptags
