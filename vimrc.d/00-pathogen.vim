let g:pathogen_disabled =
\ [ 'vim-easymotion'
\ , 'vim-eunuch'
\ , 'vim-speeddating'
\ , 'vim-surround'
\ , 'vim-unimpaired'
\ ]

" \ [ 'clang_complete'
" \ , 'ctrlp.vim'
" \ , 'errormarker.vim'
" \ , 'ghcmod-vim'
" \ , 'git-rebase-helper'
" \ , 'haskellmode-vim'
" \ , 'neco-ghc'
" \ , 'neocomplcache'
" \ , 'neocomplcache-clang_complete'
" \ , 'nerdcommenter'
" \ , 'nerdtree'
" \ , 'syntastic'
" \ , 'tagbar'
" \ , 'ultisnips'
" \ , 'undotree'
" \ , 'vim-align'
" \ , 'vim-autoformat'
" \ , 'vim-colors-solarized'
" \ , 'vim-easymotion'
" \ , 'vim-eunuch'
" \ , 'vim-fugitive'
" \ , 'vim-haskellFold'
" \ , 'vim-indent-guides'
" \ , 'vim-numbertoggle'
" \ , 'vim-pathogen'
" \ , 'vim-powerline'
" \ , 'vimproc'
" \ , 'vim-repeat'
" \ , 'vim-showmarks'
" \ , 'vim-speeddating'
" \ , 'vim-surround'
" \ , 'vim-textobj-indent'
" \ , 'vim-textobj-user'
" \ , 'vim-unimpaired'
" \ ]


" if ! executable ( 'ghc-mod' )
    " call add ( g:pathogen_disabled, 'ghcmod-vim' )
" endif

" if ! executable ( 'clang' )
    " call add ( g:pathogen_disabled, 'clang_complete' )
" endif

runtime! submodules/vim-pathogen/autoload/pathogen.vim

call pathogen#infect('~/.vim/submodules')

Helptags
