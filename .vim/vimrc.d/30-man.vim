" http://nilisnotnull.blogspot.de/2011/10/browsing-man-pages-in-vim.html

augroup Man
autocmd Man FileType man :setlocal listchars=
autocmd Man FileType man :setlocal wrap

let $MANWIDTH=80
let $GROFF_NO_SGR=1
runtime ftplugin/man.vim

function ManWrapper(n, w)
  if a:n > 0
    let cnt = a:n-line(".")+1
    execute "Man" cnt a:w
  else
    execute "Man" a:w
  endif
endfunction

com -count=0 -nargs=+ CMan :call ManWrapper(<count>, <f-args>)

" nmap K :Man <cword><CR>
nmap K :CMan <cword><cr>
