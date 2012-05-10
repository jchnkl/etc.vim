let g:pathogen_disabled = []

call add ( g:pathogen_disabled, 'haskellmode-vim' )
call add ( g:pathogen_disabled, '50-haskellmode.vim' )

runtime! submodules/vim-pathogen/autoload/pathogen.vim

call pathogen#infect('~/.vim/submodules')

Helptags
