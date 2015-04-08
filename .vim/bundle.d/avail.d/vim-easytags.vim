" When enabled, Exuberant Ctags will be instructed to include struct/class members
" using the '--extra=+q' command line argument
let g:easytags_include_members = 1

" let g:easytags_auto_update = 0
" let g:easytags_on_cursorhold = 0
let g:easytags_auto_highlight = 1

let g:easytags_python_enabled = 1

let g:easytags_events = ['BufWritePost']

set tags=./tags;
let g:easytags_dynamic_files = 2

highlight cMember ctermfg=13

" if executable('fast-tags')
"     let g:easytags_languages = {
"                 \   'haskell': {
"                 \       'cmd': 'fast-tags',
"                 \       'args': [],
"                 \       'fileoutput_opt': '-o',
"                 \       'stdout_opt': '-o -',
"                 \       'recurse_flag': ''
"                 \   }
"                 \}
" endif
