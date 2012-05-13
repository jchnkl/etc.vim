if has("autocmd")

    " wrap lines in quickfix buffer, so that error messages won't get lost on
    " off-screen
    autocmd BufEnter    *    if &buftype == 'quickfix' | setlocal wrap | endif
    autocmd BufWinEnter *    if &buftype == 'quickfix' | setlocal wrap | endif

    " Check if any buffers were changed outside of Vim
    autocmd WinEnter    *    checktime
    autocmd CursorHold  *    checktime
    autocmd InsertEnter *    checktime

    " this prevents triggering 'checktime' in cmdwin when enter-/leaving insert
    " mode; without vim will complain
    autocmd CmdwinEnter *    let b:ei_save = &eventignore
                          \| set eventignore=CursorHold,InsertEnter
    autocmd CmdwinLeave *    let &eventignore = b:ei_save

    autocmd FileType    *tex setlocal spell
    autocmd FileType    *tex set grepprg=grep\ -nH\ $*
    autocmd FileType    *tex let g:tex_flavor = "latex"

    autocmd FileType    mail setlocal textwidth=72
    autocmd FileType    mail setlocal spell

    autocmd FileType    mail abbreviate mfg Mit freundlichen Grüßen
    autocmd FileType    mail abbreviate vg Viele Grüße
    autocmd FileType    mail abbreviate jr Jochen
    autocmd FileType    mail abbreviate jrk Jochen Keil

endif
