let s:scripts =
\ [ '00-pathogen.vim'
\ , '10-common-let.vim'
\ , '10-common-set.vim'
\ , '20-common-autocmd.vim'
\ , '20-common-function.vim'
\ , '20-common-map.vim'
\ , '30-GitQuickCommit.vim'
\ , '30-NextClosedFold.vim'
\ , '30-ScrollToPercent.vim'
\ , '30-TabLine.vim'
\ , '30-cscope_maps.vim'
\ , '30-man.vim'
\ , '30-vsearch.vim'
\ , 'colorscheme.vim'
\ ]

set runtimepath+=~/.vim/vimrc.d

for s:script in s:scripts
    execute 'runtime!' s:script
endfor

set runtimepath+=~/.vim/bundle.d

for s:bundle in map(split(&runtimepath, ","), 'fnamemodify(v:val, ":t")')
    execute 'runtime!' s:bundle . '.vim'
endfor
