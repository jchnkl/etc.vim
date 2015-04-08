" Configuration file for vim
" for os specific settings; strip newline
let os = substitute(system('uname -s'),"\n","","")

let mapleader = "\<Space>"

let v:fcs_choice = "ask"

let g:netrw_liststyle=3
let g:netrw_sort_sequence = '[\/]$,\<core\%(\.\d\+\)\=,\.[a-np-z]$,\.hs$
            \ ,\.x10$,\.h$,\.c$,\.cpp$,\.java$
            \ ,*,\.o$,\.class$,\.obj$,\.info$,\.swp$
            \ ,\.bak$,\~$'

" help tex-slow
" Finally, if syntax highlighting is still too slow, you may set
let g:tex_fast= ""
let g:tex_fold_enabled=1
