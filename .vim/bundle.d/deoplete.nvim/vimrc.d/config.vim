if has('nvim')

  " Use deoplete.
  let g:deoplete#enable_at_startup = 1
  " Use smartcase.
  let g:deoplete#enable_smart_case = 1
  " Set minimum syntax keyword length.
  " let g:deoplete#sources#syntax#min_keyword_length = 8

  let g:deoplete#auto_completion_start_length = 0
  " let g:deoplete#manual_completion_start_length = 1

  " Define keyword.
  if !exists('g:deoplete#keyword_patterns')
    let g:deoplete#keyword_patterns = {}
  endif
  let g:deoplete#keyword_patterns['default'] = '\h\w*'

  " <TAB>: completion.
  au CmdwinEnter * iunmap <buffer> <Tab>
  au CmdwinEnter * nunmap <buffer> <Tab>

  " returns true if character before cursor is ' ' or '\t'
  function! NoComplete()
    let s:str = strpart(getline('.'), col('.')-2, 1)
    return s:str =~ '\( \|\t\)' || strlen(s:str) == 0
  endfunction

  inoremap <expr><TAB> pumvisible() ? "\<C-n>" :
        \ (NoComplete() ? "\<Tab>" : deoplete#start_manual_complete())
  inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
  inoremap <expr><BS> deoplete#smart_close_popup() . "\<C-h>"

  " Enable omni completion.
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

  " Enable heavy omni completion.
  if !exists('g:deoplete#sources#omni#input_patterns')
    let g:deoplete#sources#omni#input_patterns = {}
  endif
  let g:deoplete#sources#omni#input_patterns.php =
        \ '[^. \t]->\h\w*\|\h\w*::'
  let g:deoplete#sources#omni#input_patterns.c =
        \ '[^.[:digit:] *\t]\%(\.\|->\)'
  let g:deoplete#sources#omni#input_patterns.cpp =
        \ '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

  if !exists('g:deoplete#force_omni_input_patterns')
    let g:deoplete#force_omni_input_patterns = {}
  endif
  let g:deoplete#force_overwrite_completefunc = 1
  let g:deoplete#force_omni_input_patterns.c =
        \ '[^.[:digit:] *\t]\%(\.\|->\)'
  let g:deoplete#force_omni_input_patterns.cpp =
        \ '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
  let g:deoplete#force_omni_input_patterns.objc =
        \ '[^.[:digit:] *\t]\%(\.\|->\)'
  let g:deoplete#force_omni_input_patterns.objcpp =
        \ '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

  autocmd FileType python setlocal omnifunc=jedi#complete
  let g:jedi#auto_vim_configuration = 0
  let g:deoplete#force_omni_input_patterns.python = '[^. \t]\.\w*'

endif " has('nvim')
