" Make p in Visual mode replace the selected text with the "" register.
vnoremap          p             <Esc>:let current_reg = @"<CR>gvdi<C-R>
                               \=current_reg<CR><Esc>

" [32~ (F18) is bound to C-Tab for urxvt in .Xresources
set <F18>=[32~
" [34~ (F20) is bound to C-BackSpace for urxvt in .Xresources
set      <F20>=[34~
inoremap <silent> <F20>         <C-W>
lnoremap <silent> <F20>         <C-W>
cnoremap <silent> <F20>         <C-W>
" imap     <silent> <S-Insert>    <MiddleMouse>
" http://stackoverflow.com/questions/2555559/vim-pasting-from-clipboard-and-automatically-toggling-set-paste
" inoremap <silent> <S-Insert>    <ESC>"+p`]a
" nnoremap <silent> <S-Insert>    "*p
" inoremap <S-Insert> :set paste<Enter>+:set nopaste<Enter>
nnoremap <silent> <F2>          :wa<Bar>exe "mksession! " . v:this_session<CR>
nnoremap <silent> <C-n>         gt
nnoremap <silent> <C-p>         gT
nnoremap <silent> <C-F12>       :!ctags -R --c++-kinds=+p --fields=+iaS
                                    \--extra=+q .<CR>

nnoremap <silent> <Leader>a     :b#<CR>
nnoremap <silent> <Leader>w     :w!<CR>
nnoremap <silent> <Leader>wa    :wa!<CR>
nnoremap <silent> <Leader>x     :x!<CR>
nnoremap <silent> <Leader>xa    :xa!<CR>
nnoremap <silent> <Leader>q     :q!<CR>
nnoremap <silent> <Leader>qa    :qa!<CR>
nnoremap <silent> <Leader>nh    :noh<CR>

" change global directory to basename of current file
nnoremap <silent> <Leader>c     :cd %:h<CR>
" change current buffer directory to basename of current file
nnoremap <silent> <Leader>lc    :lcd %:h<CR>

" useful when line wrapping is enabled
nnoremap          j             gj
nnoremap          k             gk

" Easy window navigation
map               <C-h>         <C-w>h
map               <C-j>         <C-w>j
map               <C-k>         <C-w>k
map               <C-l>         <C-w>l

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
