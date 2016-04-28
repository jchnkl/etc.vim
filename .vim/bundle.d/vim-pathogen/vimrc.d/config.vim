let g:pathogen_disabled = ['vim-gtrans']

if has('nvim')
  let g:pathogen_disabled += ['neocomplete']
else
  let g:pathogen_disabled += ['deoplete.nvim']
endif
