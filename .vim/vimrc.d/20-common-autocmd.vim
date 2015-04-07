if has("autocmd")

    " wrap lines in quickfix buffer, so that error messages won't get lost on
    " off-screen
    autocmd BufEnter    *    if &buftype == 'quickfix' | setlocal wrap | endif
    autocmd BufWinEnter *    if &buftype == 'quickfix' | setlocal wrap | endif

    autocmd VimResized  *    wincmd =

    " set height of previewwindow to current winheight / 2
    autocmd WinEnter    *    let &previewheight = winheight ( 0 ) / 2
    autocmd VimEnter    *    let &previewheight = winheight ( 0 ) / 2

    " Check if any buffers were changed outside of Vim
    autocmd WinEnter    *    checktime
    autocmd CursorHold  *    checktime
    autocmd InsertEnter *    checktime

    " Another fix for the disappearing popup menu problem
    " http://code.google.com/p/vim/issues/detail?id=3
    autocmd CompleteDone * set noruler
    autocmd CursorMoved  * set ruler

    " this prevents triggering 'checktime' in cmdwin when enter-/leaving insert
    " mode; without vim will complain
    autocmd CmdwinEnter *    let b:ei_save = &eventignore
                         \ | set eventignore=CursorHold,InsertEnter
    autocmd CmdwinLeave *    let &eventignore = b:ei_save

    " autocmd BufWritePre *    :execute ":Autoformat"
    "                      \ | :call feedkeys("\<CR>", 'n')

    " autocmd BufWinLeave *           mkview
    " autocmd BufWinEnter *    silent loadview

    " Don't screw up folds when inserting text that might affect them, until
    " leaving insert mode. Foldmethod is local to the window.
    " autocmd InsertEnter * let w:last_fdm=&foldmethod | setlocal foldmethod=manual
    " autocmd InsertLeave * let &l:foldmethod=w:last_fdm

    " Don't screw up folds when inserting text that might affect them, until
    " leaving insert mode. Foldmethod is local to the window. Protect against
    " screwing up folding when switching between windows.
    autocmd InsertEnter * if !exists('w:last_fdm') | let w:last_fdm=&foldmethod | setlocal foldmethod=manual | endif
    autocmd InsertLeave,WinLeave * if exists('w:last_fdm') | let &l:foldmethod=w:last_fdm | unlet w:last_fdm | endif

    " filetype gitcommit is not detected properly.
    " Git uses COMMIT_EDITMSG as temporary file for the commit message
    autocmd VimEnter COMMIT_EDITMSG setlocal filetype=gitcommit
    autocmd FileType      gitcommit setlocal spell

    autocmd BufNewFile, BufRead *.cl set filetype=opencl

    autocmd FileType    python setlocal foldmethod=indent
    autocmd FileType    python setlocal foldlevel=99

    autocmd FileType    *tex setlocal spell
    autocmd FileType    *tex set grepprg=grep\ -nH\ $*
    autocmd FileType    *tex let g:tex_flavor = "latex"

    autocmd FileType    mail,gitcommit,gitsendemail setlocal textwidth=72
    autocmd FileType    mail setlocal spell

    autocmd FileType    mail abbreviate mfg Mit freundlichen Grüßen
    autocmd FileType    mail abbreviate vg Viele Grüße
    autocmd FileType    mail abbreviate jr Jochen
    autocmd FileType    mail abbreviate jrk Jochen Keil

    if executable('pointfree')
        autocmd BufEnter *.hs set formatprg=xargs\ -0\ pointfree
    endif
endif
