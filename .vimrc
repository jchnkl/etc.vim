set runtimepath+=~/.vim/vimrc.d

execute 'runtime!' 'conf.d/*.vim'

set runtimepath+=~/.vim/bundle.d

for s:bundle in map(split(&runtimepath, ","), 'fnamemodify(v:val, ":t")')
    execute 'runtime!' s:bundle . '.vim'
endfor
