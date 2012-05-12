" Configuration file for vim
" for os specific settings; strip newline
let os = substitute(system('uname -s'),"\n","","")

let v:fcs_choice = "ask"

let g:netrw_liststyle=3
let g:netrw_sort_sequence = '[\/]$,\<core\%(\.\d\+\)\=,\.[a-np-z]$,\.hs$
            \ ,\.x10$,\.h$,\.c$,\.cpp$,*,\.o$,\.class$,\.obj$,\.info$,\.swp$
            \ ,\.bak$,\~$'
