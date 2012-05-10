autocmd FileType *tex setlocal spell
autocmd FileType *tex set grepprg=grep\ -nH\ $*
autocmd FileType *tex let g:tex_flavor = "latex"

" vimlatex
let g:Tex_SmartKeyQuote=0
