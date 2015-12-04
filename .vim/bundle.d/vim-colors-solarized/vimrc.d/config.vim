" https://github.com/altercation/vim-colors-solarized/issues/40
call togglebg#map("")

set background=light

silent! colorscheme solarized

highlight Comment cterm=italic
highlight OverLength ctermfg=5
match OverLength /\%81v.\+/
