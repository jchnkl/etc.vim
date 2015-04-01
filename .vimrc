let s:scripts =
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

let s:scriptdir = 'vimrc.d'

for s:script in s:scripts
    execute 'runtime!' s:scriptdir . '/' . s:script
endfor

let s:bundledir = 'bundle.d'

for s:bundle in map(split(&runtimepath, ","), 'fnamemodify(v:val, ":t")')
    let s:cfgfile = s:bundledir . '/' . s:bundle
    if filereadable(s:cfgfile)
        execute 'runtime!' s:cfgfile
    endif
endfor
