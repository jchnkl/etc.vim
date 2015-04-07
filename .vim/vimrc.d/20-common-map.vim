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

nmap <silent> <F12> :!find $(pwd)
      \ -name '*.py' -o -name '*.java'
      \ -o -iname '*.[CH]' -o -name '*.cpp' -o -name '*.cc' -o -name '*.hpp'
      \ > cscope.files<CR>
      \ :!cscope -q -b -i cscope.files -f cscope.out<CR>
      \ :cs reset<CR>

" Swap keys for jumping with marks; ` jumps also to the colum
nnoremap                  `     '
nnoremap                  '     `

nnoremap <silent> <Leader><Leader> q:
nnoremap <silent> <Leader>a        :b#<CR>
nnoremap <silent> <Leader>w        :w!<CR>
nnoremap <silent> <Leader>W        :wa!<CR>
nnoremap <silent> <Leader>x        :x!<CR>
nnoremap <silent> <Leader>X        :xa!<CR>
nnoremap <silent> <Leader>Q        :qa!<CR>
nnoremap <silent> <Leader><C-]>    <C-w><C-]><C-w>T
nnoremap <silent>                  <Esc><Esc> :nohlsearch<CR><Esc>

vnoremap          <Leader>y        "+y
vnoremap          <Leader>d        "+d
vnoremap          <Leader>p        "+p
vnoremap          <Leader>P        "+P
vnoremap          <Leader>p        "+p
vnoremap          <Leader>P        "+P

nnoremap <silent> <Leader><Tab>    <C-w><C-w>

nnoremap <silent> <Leader>h        <C-w>h
nnoremap <silent> <Leader>j        <C-w>j
nnoremap <silent> <Leader>k        <C-w>k
nnoremap <silent> <Leader>l        <C-w>l

nnoremap <silent> <Leader>H        <C-w>H
nnoremap <silent> <Leader>J        <C-w>J
nnoremap <silent> <Leader>K        <C-w>K
nnoremap <silent> <Leader>L        <C-w>L

" Allow saving of files as sudo when I forgot to start vim using sudo.
function! SudoWrite ()
  let save_cursor = getpos(".")
  %!sudo tee > /dev/null %
  e!
  call setpos('.', save_cursor)
endfunction

command! SudoWrite call SudoWrite()

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
