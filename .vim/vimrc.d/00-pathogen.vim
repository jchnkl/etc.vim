let g:pathogen_disabled =
\ [ 'vim-easymotion'
\ , 'vim-eunuch'
\ , 'vim-speeddating'
\ , 'vim-surround'
\ , 'vim-unimpaired'
\ , 'delimitMate'
\ , 'vim-matchit'
\ , 'vim-textobj-indent'
\ , 'vim-textobj-user'
\ , 'ultisnips'
\ , 'powerline'
\ , 'Smart-Tabs'
\ , 'neocomplcache-clang_complete'
\ , 'nerdtree'
\ , 'nerdcommenter'
\ , 'syntastic'
\ , 'vim-gitgutter'
\ , 'errormarker.vim'
\ , 'Mark--Karkat'
\ , 'vim-align'
\ , 'vim-indent-guides'
\ , 'vim-numbertoggle'
\ ]
\
\ + [ 'neocomplcache' ]
\ + [ 'vim-obssesion' ]
\ + [ 'vim-signify' ]
\ + [ 'tabular' ]
\ + [ 'vim-reunions' ]
\ + [ 'vim-marching' ]
\ + [ 'vim-autoformat' ]
\ + [ 'YouCompleteMe' ]
\ + [ 'vim-gtrans' ]
" \ + [ 'neocomplete.vim' ]
" \ + [ 'neco-ghc' ]

" \ + [ 'lushtags' ]
" \ + [ 'haskellmode-vim' ]
" \ + [ 'vim-haskellFold' ]

" \ + [ 'clang_complete' ]

" \ + [ 'vim-signature' ]
" \ + [ 'vim-showmarks' ]
" \ + [ 'vim-easytags' ]


" \ [ 'ctrlp.vim'
" \ , 'delimitMate'
" \ , 'errormarker.vim'
" \ , 'ghcmod-vim'
" \ , 'git-rebase-helper'
" \ , 'nerdcommenter'
" \ , 'nerdtree'
" \ , 'powerline'
" \ , 'Smart-Tabs'
" \ , 'syntastic'
" \ , 'tagbar'
" \ , 'ultisnips'
" \ , 'undotree'
" \ , 'vim-align'
" \ , 'vim-colors-solarized'
" \ , 'vim-easymotion'
" \ , 'vim-easytags'
" \ , 'vim-eunuch'
" \ , 'vim-fugitive'
" \ , 'vim-gitgutter'
" \ , 'vim-indent-guides'
" \ , 'vim-matchit'
" \ , 'vim-pathogen'
" \ , 'vim-powerline'
" \ , 'vimproc'
" \ , 'vim-repeat'
" \ , 'vim-showmarks'
" \ , 'vim-solarized-powerline'
" \ , 'vim-speeddating'
" \ , 'vim-surround'
" \ , 'vim-textobj-indent'
" \ , 'vim-textobj-user'
" \ , 'vim-unimpaired'
" \ , 'YouCompleteMe'
" \ , 'YouCompleteMe.old'
" \ , 'YouCompleteMe.install.sh'
" \ ]

" \ , 'clang_complete'
" \ , 'neocomplcache'
" \ , 'neocomplcache-clang_complete'


" \ , 'YouCompleteMe'
" \ , 'vim-easytags'
" \ , 'vim-powerline'
" \ , 'vim-solarized-powerline'

" if ! executable ( 'ghc-mod' )
    " call add ( g:pathogen_disabled, 'ghcmod-vim' )
" endif

" if ! executable ( 'clang' )
    " call add ( g:pathogen_disabled, 'clang_complete' )
" endif

runtime! bundle/vim-pathogen/autoload/pathogen.vim

execute pathogen#infect()

Helptags
