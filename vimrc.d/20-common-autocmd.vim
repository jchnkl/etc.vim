if has("autocmd")
    " Enabled file type detection
    " Use the default filetype settings. If you also want to load indent files
    " to automatically do language-dependent indenting add 'indent' as well.
    filetype indent plugin on

    autocmd BufEnter * if &buftype == 'quickfix' | setlocal wrap | endif
    " Check if any buffers were changed outside of Vim
    autocmd WinEnter * checktime
    autocmd CursorHold * checktime
    autocmd InsertEnter * checktime
    autocmd CmdwinEnter * let b:ei_save = &eventignore | set eventignore=CursorHold,InsertEnter
    autocmd CmdwinLeave * let &eventignore = b:ei_save

    " autocmd BufWinLeave *.c mkview
    " autocmd BufWinLeave *.h mkview
    " autocmd BufWinEnter *.c silent loadview
    " autocmd BufWinEnter *.h silent loadview

    "autocmd VimEnter * call LoadSession()
    autocmd VimLeave * call SaveSession()

endif " has ("autocmd")
