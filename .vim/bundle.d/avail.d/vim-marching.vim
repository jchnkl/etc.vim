" path to clang command
" let g:marching_clang_command = "C:/clang.exe"

" directory paths to include
" let g:marching_include_paths = [
" \        "C:/MinGW/lib/gcc/mingw32/4.6.2/include/c++"
" \        "C:/cpp/boost"
" \]

" cooperate with neocomplete.vim
let g:marching_enable_neocomplete = 1

" if !exists('g:neocomplete#force_omni_input_patterns')
"     let g:neocomplete#force_omni_input_patterns = {}
" endif

" let g:neocomplete#force_omni_input_patterns.cpp =
"         \ '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'
