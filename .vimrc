let ignored  = [ '50-haskellmode.vim'
             \ , '50-vala.vim'
             \ , '50-taglist.vim'
             \ ]

let vimrcdir = '~/.vim/vimrc.d'
let scripts = split ( globpath ( vimrcdir,"*.vim" ), "\n" )

for i in ignored
    let scripts = filter ( scripts, "v:val !~ i" )
endfor

for s in scripts
    exe 'source' s
endfor
