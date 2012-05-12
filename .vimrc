let myscripts  = [ '00-pathogen.vim'
               \ , '10-common-set.vim'
               \ , '10-common-let.vim'
               \ , '20-common-autocmd.vim'
               \ , '20-command.vim'
               \ , '20-functions.vim'
               \ , '20-common-map.vim'
               \ , '50-CommandT.vim'
               \ , '50-NERDCommenter.vim'
               \ , '50-a.vim'
               \ , '50-bufexplorer.vim'
               \ , '50-colorscheme.vim'
               \ , '50-latex.vim'
               \ , '50-mail.vim'
               \ , '50-neocomplcache.vim'
               \ , '50-syntastic.vim'
               \ ]

               " \ , '50-haskellmode.vim'
               " \ , '50-vala.vim'
               " \ , '50-taglist.vim'
               " \ , '50-supertab.vim'
               " \ , '50-omnicpp.vim'

let myscriptdir = 'vimrc.d'

for myscript in myscripts
    execute 'runtime!' myscriptdir . '/' . myscript
endfor
