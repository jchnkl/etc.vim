let g:pathogen_disabled = []

"   [ 'Command-T'
" \ , 'errormarker.vim'
" \ , 'ghcmod-vim'
" \ , 'haskellmode-vim'
" \ , 'neco-ghc'
" \ , 'neocomplcache'
" \ , 'neocomplcache-clang_complete'
" \ , 'nerdcommenter'
" \ , 'nerdtree'
" \ , 'syntastic'
" \ , 'tagbar'
" \ , 'vim2hs'
" \ , 'vim-align'
" \ , 'vim-colors-solarized'
" \ , 'vim-eunuch'
" \ , 'vim-fugitive'
" \ , 'vim-haskellFold'
" \ , 'vim-indent-guides'
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
