if has("autocmd")

    " wrap lines in quickfix buffer, so that error messages won't get lost on
    " off-screen
    autocmd BufEnter    *    if &buftype == 'quickfix' | setlocal wrap | endif
    autocmd BufWinEnter *    if &buftype == 'quickfix' | setlocal wrap | endif

    " set height of previewwindow to current winheight / 2
    autocmd WinEnter    *    let &previewheight = winheight ( 0 ) / 2
    autocmd VimEnter    *    let &previewheight = winheight ( 0 ) / 2

    " Check if any buffers were changed outside of Vim
    autocmd WinEnter    *    checktime
    autocmd CursorHold  *    checktime
    autocmd InsertEnter *    checktime

    " this prevents triggering 'checktime' in cmdwin when enter-/leaving insert
    " mode; without vim will complain
    autocmd CmdwinEnter *    let b:ei_save = &eventignore
                         \ | set eventignore=CursorHold,InsertEnter
    autocmd CmdwinLeave *    let &eventignore = b:ei_save

    " filetype gitcommit is not detected properly.
    " Git uses COMMIT_EDITMSG as temporary file for the commit message
    autocmd VimEnter COMMIT_EDITMSG setlocal filetype=gitcommit
    autocmd FileType      gitcommit setlocal spell

    autocmd FileType    *tex setlocal spell
    autocmd FileType    *tex set grepprg=grep\ -nH\ $*
    autocmd FileType    *tex let g:tex_flavor = "latex"

    autocmd FileType    mail,gitcommit,gitsendemail setlocal textwidth=72
    autocmd FileType    mail setlocal spell

    autocmd FileType    mail abbreviate mfg Mit freundlichen Grüßen
    autocmd FileType    mail abbreviate vg Viele Grüße
    autocmd FileType    mail abbreviate jr Jochen
    autocmd FileType    mail abbreviate jrk Jochen Keil

endif
