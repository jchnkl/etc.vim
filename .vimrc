runtime! bundle.d/vim-pathogen/vimrc.d/config.vim
runtime! bundle.d/vim-pathogen/autoload/pathogen.vim

execute pathogen#infect('~/.vim/bundle.d/{}')

runtime! vimrc.d/[[:digit:]][[:digit:]]*.vim
runtime! bundle.d/*/vimrc.d/*.vim

Helptags
