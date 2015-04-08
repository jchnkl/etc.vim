let g:UseNumberToggleTrigger = 0

" tabbar opens automatically on VimEnter, causing a WinLeave event which sets
" g:focus to 0, effectively disabling number toggling
" autocmd VimEnter * nested :call FocusGained()
