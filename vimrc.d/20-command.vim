" https://github.com/tpope/vim-fugitive/issues/126
command -bar -bang -nargs=* Gci :Gcommit<bang> -v <args>
