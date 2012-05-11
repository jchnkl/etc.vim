let ignored  = [ '50-haskellmode.vim'
             \ , '50-vala.vim'
             \ , '50-taglist.vim'
             \ , '50-supertab.vim'
             \ , '50-omnicpp.vim'
             \ ]
             " \ , '50-neocomplcache.vim'
             " \ , '50-autocmd.vim'
             " \ , '50-a.vim'
             " \ , '50-bufexplorer.vim'
             " \ , '50-functions.vim'
             " \ , '50-latex.vim'
             " \ , '50-mail.vim'
             " \ , '50-omnicpp.vim'
             " \ , '50-syntastic.vim'
             " \ , '10-set.vim'
             " \ , '10-variables.vim'
             " \ , '50-keymap.vim'
             " \ , '50-syntax.vim'
             " \ , '50-colorscheme.vim'
             " \ , '00-pathogen.vim'
'
let vimrcdir = '~/.vim/vimrc.d'
let scripts = split ( globpath ( vimrcdir,"*.vim" ), "\n" )

for i in ignored
    let scripts = filter ( scripts, "v:val !~ i" )
endfor

for s in scripts
    exe 'source' s
endfor
