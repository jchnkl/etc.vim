" Make p in Visual mode replace the selected text with the "" register.
vnoremap          p             <Esc>:let current_reg = @"<CR>gvdi<C-R>
                               \=current_reg<CR><Esc>

imap     <silent> <S-Insert>    <MiddleMouse>
nnoremap <silent> <S-Insert>    "*p
nnoremap <silent> <F2>          :wa<Bar>exe "mksession! " . v:this_session<CR>
nnoremap <silent> <C-n>         gt
nnoremap <silent> <C-p>         gT
nnoremap <silent> <C-F12>       :!ctags -R --languages=c++ --c++-kinds=+p
                                \--fields=+iaS --extra=+q .<CR>
nnoremap <silent> <Leader>as    :AS<CR>
nnoremap <silent> <Leader>a     :b#<CR>
nnoremap <silent> <Leader>w     :w!<CR>
nnoremap <silent> <Leader>wa    :wa!<CR>
nnoremap <silent> <Leader>x     :x!<CR>
nnoremap <silent> <Leader>xa    :xa!<CR>
nnoremap <silent> <Leader>q     :q!<CR>
nnoremap <silent> <Leader>qa    :qa!<CR>
nnoremap <silent> <Leader>bd    :bd!<CR>
nnoremap <silent> <Leader>nh    :noh<CR>
nnoremap <silent> <Leader>gs    :silent! :w!<CR>:Gstatus<CR>
nnoremap <silent> <Leader>gc    :silent! :Gwrite<CR>:Gci<CR>
" change global directory to basename of current file
nnoremap <silent> <Leader>c     :cd %:h<CR>
" change current buffer directory to basename of current file
nnoremap <silent> <Leader>lc    :lcd %:h<CR>

nnoremap <silent> <Leader>s     :setlocal spell<CR>
                               \:setlocal spelllang=de_20,en<CR>
nnoremap <silent> <Leader>sc    :tabe<CR>:setlocal buftype=nofile<CR>
                               \:setlocal bufhidden=hide<CR>
                               \:setlocal nobuflisted<CR>
                               \:setlocal noswapfile<CR>

" http://stackoverflow.com/questions/1050745/unable-to-create-a-file-from-a-path-in-vim
nnoremap          gf            :e <cfile><CR>
nnoremap          <C-W>gf       :tabe <cfile><CR>

" center search results
nnoremap          n             nzz
nnoremap          N             Nzz
nnoremap          *             *zz
nnoremap          #             #zz
nnoremap          g*            g*zz
nnoremap          g#            g#zz

" plugins/ghf.vim
map      <silent> ghf           :call OpenHaskellFile()<CR>
