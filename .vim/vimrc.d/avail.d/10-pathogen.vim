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

runtime! bundle/vim-pathogen/autoload/pathogen.vim

execute pathogen#infect()

Helptags
