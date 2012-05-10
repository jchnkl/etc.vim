let g:pathogen_disabled = [ 'haskellmode-vim'
                        \ , 'supertab'
                        \ ]

runtime! submodules/vim-pathogen/autoload/pathogen.vim

call pathogen#infect('~/.vim/submodules')

Helptags
