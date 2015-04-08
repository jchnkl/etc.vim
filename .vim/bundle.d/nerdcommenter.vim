let g:NERDSpaceDelims = 1
" Does not work, hence the CustomDelimiters workaround
let g:NERD_c_alt_style = 1
let g:NERDCustomDelimiters = {
  \ 'c': { 'leftAlt': '/*','rightAlt': '*/', 'left': '//', 'right': '' },
  \ 'haskell': { 'leftAlt': '{-','rightAlt': '-}', 'left': '--', 'right': '' },
  \ }
