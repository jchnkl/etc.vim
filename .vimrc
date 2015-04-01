let s:myscripts =
\ [ '00-pathogen.vim'
\ , '10-common-let.vim'
\ , '10-common-set.vim'
\ , '20-common-autocmd.vim'
\ , '20-common-function.vim'
\ , '20-common-map.vim'
\ , '30-NextClosedFold.vim'
\ ]

" 50-buftabs.vim
" 50-CommandT.vim
" 50-vala.vim

let myscriptdir = 'vimrc.d'

for s:myscript in s:myscripts
    execute 'runtime!' myscriptdir . '/' . s:myscript
endfor
