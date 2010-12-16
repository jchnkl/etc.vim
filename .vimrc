" Configuration file for vim
" for os specific settings; strip newline
let os = substitute(system('uname -s'),"\n","","")

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=indent,eol,start	" more powerful backspacing

" Now we set some defaults for the editor 
set autoindent		" always set autoindenting on
set textwidth=0		" Don't wrap words by default
"set backup		" keep a backup file
set viminfo='20,\"50	" read/write a .viminfo file, don't store more than
			" 50 lines of registers
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set hlsearch
set linebreak
set wrap
set shell=sh

" Suffixes that get lower priority when doing tab completion for filenames.
" These are files we are not likely to want to edit or read.
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc

" We know xterm is a color terminal
"if &term =~ "xterm" || &term =~ "xterm-xfree86"
"  set t_Co=16
"  set t_Sf=[3%dm
"  set t_Sb=[4%dm
"endif

" Make p in Visual mode replace the selected text with the "" register.
vnoremap p <Esc>:let current_reg = @"<CR>gvdi<C-R>=current_reg<CR><Esc>

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
syntax on

" Debian uses compressed helpfiles. We must inform vim that the main
" helpfiles is compressed. Other helpfiles are stated in the tags-file.
" set helpfile=$VIMRUNTIME/doc/help.txt.gz

if has("autocmd")
 " Enabled file type detection
 " Use the default filetype settings. If you also want to load indent files
 " to automatically do language-dependent indenting add 'indent' as well.
 filetype plugin on

endif " has ("autocmd")

" The following are commented out as they cause vim to behave a lot
" different from regular vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set incsearch		" Incremental search
set smartcase		" ignore ic when pattern contains uppercase
set autowrite		" Automatically save before commands like :next and :make

set expandtab
set shiftwidth=2
set softtabstop=2

set mousehide           " already enabled by default; just to remember

set title titlestring=vi:%t

filetype on
filetype indent on
filetype plugin on
set nu
set cul

set foldmethod=syntax
set foldcolumn=2

set guicursor=n-v-c:block-Cursor/lCursor,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor,sm:block-Cursor,a:blinkon0

"All known problems
"have been fixed, but the FreeBSD Security Team advises that VIM users
"use 'set nomodeline' in ~/.vimrc to avoid the possibility of trojaned
"text files.
set modeline

au BufWinLeave *.c mkview
au BufWinLeave *.h mkview
au BufWinEnter *.c silent loadview
au BufWinEnter *.h silent loadview

"let g:zenburn_high_Contrast = 1
colorscheme zenburn

if has("gui_gtk2")
  set gfn=Monospace\ 12
endif

scriptencoding utf-8
set encoding=utf-8

language en_US.UTF-8

let g:netrw_sort_sequence = '[\/]$,\<core\%(\.\d\+\)\=,\.[a-np-z]$,\.hs$,\.x10$,\.h$,\.c$,\.cpp$,*,\.o$,\.obj$,\.info$,\.swp$,\.bak$,\~$'

let OmniCpp_ShowPrototypeInAbbr = 1
let OmniCpp_NamespaceSearch = 2
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
set tags+=~/.vim/tags/tags

"autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
"autocmd InsertLeave * if pumvisible() == 0|pclose|endif

let alternateExtensions_cc = "hh"
let alternateExtensions_hh = "cc"

let g:bufExplorerDefaultHelp=1       " Show default help.
let g:bufExplorerDetailedHelp=1      " Show detailed help.
let g:bufExplorerShowUnlisted=1      " Show unlisted buffers.
let g:bufExplorerSortBy='name'       " Sort by the buffer's name.

let Tlist_File_Fold_Auto_Close = 1
"let Tlist_Show_Menu = 1

if os == 'FreeBSD'
  let g:haddock_browser="/usr/local/bin/firefox3"
  let g:haddock_docdir="/usr/local/share/doc/ghc-6.10.4"
elseif os == 'Linux'
  let g:haddock_browser="/usr/bin/firefox"
  let g:haddock_docdir="/usr/share/doc/ghc/html"
  let g:EclimEclipseHome = '/usr/share/eclipse'
endif

" supertab
let g:SuperTabDefaultCompletionType = 'context'

" vimlatex
let g:Tex_SmartKeyQuote=0

"haskellmode settings
au BufEnter *.hs compiler ghc

au BufEnter *.tex setlocal spell
au BufEnter *.tex setlocal spelllang=de
au BufEnter *.tex setlocal textwidth=72

autocmd BufRead *.vala set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
autocmd BufRead *.vapi set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
au BufRead,BufNewFile *.vala setfiletype vala
au BufRead,BufNewFile *.vapi setfiletype vala

" Disable valadoc syntax highlight
"let vala_ignore_valadoc = 1

" Enable comment strings
let vala_comment_strings = 1

" Highlight space errors
let vala_space_errors = 1
" Disable trailing space errors
"let vala_no_trail_space_error = 1
" Disable space-tab-space errors
let vala_no_tab_space_error = 1

" Minimum lines used for comment syncing (default 50)
"let vala_minlines = 120

set guioptions=acgirL

"local printer
set printdevice=hplj4l

function! LoadSession()
  if filereadable("Session.vim")
    source Session.vim
  endif
endfunction

function! SaveSession() "only save session if there exists one already
  if filereadable("Session.vim")
    mksession! Session.vim
  endif
endfunction

"autocmd VimEnter * call LoadSession()
autocmd VimLeave * call SaveSession()

" change global directory to basename of current file
cmap     <silent>cdg cd %:h<CR>
" change current buffer directory to basename of current file
cmap     <silent>cdl lcd %:h<CR>
imap     <silent> <S-Insert>    <MiddleMouse>
nnoremap <silent> <S-Insert>	"*p
nnoremap <silent> <F2>		:wa<Bar>exe "mksession! " . v:this_session<CR>
nnoremap <silent> <C-n>		gt
nnoremap <silent> <C-p>		gT
nnoremap <silent> <C-F12>	:!ctags -R --languages=c++ --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
nnoremap <silent> <Leader>as	:AS<CR>
nnoremap <silent> <Leader>b	:b#<CR>
nnoremap <silent> <Leader>w	:w!<CR>
nnoremap <silent> <Leader>wa	:wa!<CR>
nnoremap <silent> <Leader>x	:x!<CR>
nnoremap <silent> <Leader>xa	:xa!<CR>
nnoremap <silent> <Leader>q	:q!<CR>
nnoremap <silent> <Leader>qa	:qa!<CR>
nnoremap <silent> <Leader>bd	:bd!<CR>
nnoremap <silent> <Leader>nh	:noh<CR>
nnoremap <silent> <Leader>tl	:TlistToggle<CR>
nnoremap <silent> <Leader>s	:setlocal spell<CR>:setlocal spelllang=de_20,en<CR>
nnoremap <silent> <Leader>sc	:tabe<CR>:setlocal buftype=nofile<CR>:setlocal bufhidden=hide<CR>:setlocal nobuflisted<CR>:setlocal noswapfile<CR>

abbreviate mfg Mit freundlichen Grüßen
abbreviate vg Viele Grüße
abbreviate jr Jochen
abbreviate jrk Jochen Keil
