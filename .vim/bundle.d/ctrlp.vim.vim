let g:ctrlp_map = ''
nnoremap <silent> <Leader>f        :CtrlP<CR>
nnoremap <silent> <Leader>q        :CtrlPQuickfix<CR>
nnoremap <silent> <Leader>]        :CtrlPBufTag<CR>
nnoremap <silent> <Leader>b        :CtrlPBuffer<CR>
nnoremap <silent> <Leader>u        :CtrlPUndo<CR>
nnoremap <silent> <Leader>t        :CtrlPSmartTabs<CR>
nnoremap <silent> <Leader>m        :CtrlPMark<CR>

let g:ctrlp_max_height = 20
let g:ctrlp_match_window_bottom = 1

let g:ctrlp_use_caching = 1
let g:ctrlp_clear_cache_on_exit = 1

let g:ctrlp_working_path_mode = 'rc'

" \ 1: ['.git', 'cd %s && git ls-files'],
" \ 2: ['.hg', 'hg --cwd %s locate -I .'],
let g:ctrlp_user_command = {
      \ 'types': {
          \ 1: ['.git', 'cd %s && git ls-files . -co --exclude-standard'],
          \ 2: ['.hg', 'hg --cwd %s status -numac -I . $(hg root)'],
      \ },
          \ 'fallback': 'find %s -type f'
      \ }
