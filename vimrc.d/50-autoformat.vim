"Set the formatter name and arguments for this filetype
" http://astyle.sourceforge.net/astyle.html

let s:formatprg_cpp = "astyle"

let g:formatprg_args_expr_cpp = "--mode=c --style=attach -s2 --indent-classes"
                      \ . " " . "--indent-switches --indent-cases --indent-namespaces"
                      \ . " " . "--pad-oper --pad-paren --pad-header"
                      \ . " " . "--delete-empty-lines"
                      \ . " " . "--keep-one-line-blocks --keep-one-line-statements"
                      \ . " " . "--align-reference=middle --align-pointer=middle"
                      \ . " " . "--convert-tabs"
