let g:pathogen_disabled = ['vim-gtrans']

runtime! bundle/vim-pathogen/autoload/pathogen.vim

execute pathogen#infect('~/.vim/bundle.d/{}')

Helptags
