" If equal to 0, nothing is selected.
" If equal to 1, automatically select the first entry in the popup menu, but
" without inserting it into the code.
" If equal to 2, automatically select the first entry in the popup menu, and
" insert it into the code.
let g:clang_auto_select = 1

" If equal to 1, it will do some snippets magic after a ( or a , inside function
" call. Not currently fully working.
let g:clang_snippets = 1

" The snippets engine (clang_complete, snipmate, ultisnips... see the snippets
" subdirectory).
let g:clang_snippets_engine = 'ultisnips'

" If equal to 1, the preview window will be close automatically after a
" completion.
let g:clang_close_preview = 1

" If clang should complete preprocessor macros and constants.
let g:clang_complete_macros = 1

" If clang should complete code patterns, i.e loop constructs etc.
let g:clang_complete_patterns = 1

" Instead of calling the clang/clang++ tool use libclang directly. This gives
" access to many more clang features. Furthermore it automatically caches all
" includes in memory. Updates after changes in the same file will therefore be a
" lot faster.
let g:clang_use_library = 1
