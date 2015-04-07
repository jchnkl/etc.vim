" This option has the effect of making Vim either more Vi-compatible, or
" make Vim behave in a more useful way.
set nocompatible

" Use visual bell instead of beeping.  The terminal code to display the visual
" bell is given with 't_vb'.  When no beep or flash is wanted,
" use ":set vb t_vb=".
set visualbell t_vb=

" Enables the reading of .vimrc, .exrc and .gvimrc in the current
" directory.
set exrc

" When on, ":autocmd", shell and write commands are not allowed in
" ".vimrc" and ".exrc" in the current directory and map commands are
" displayed.
set secure

" Sets the character encoding used inside Vim.  It applies to text in
" the buffers, registers, Strings in expressions, text stored in the
" viminfo file, etc.
set encoding=utf-8

" Influences the working of <BS>, <Del>, CTRL-W and CTRL-U in Insert
" mode.
set backspace=indent,eol,start

" Copy indent from current line when starting a new line (typing <CR>
" in Insert mode or when using the "o" or "O" command).
set autoindent

" Maximum width of text that is being inserted.  A longer line will be
" broken after white space to get this width.
set textwidth=80

" This is a sequence of letters which describes how automatic formatting
" is to be done. See |fo-table|.
set formatoptions+=1

" When non-empty, the viminfo file is read upon startup and written
" when exiting Vim (see |viminfo-file|).
set viminfo='20,\"50

" A history of ":" commands, and a history of previous search patterns
" are remembered.
set history=1000

" Write the contents of the file, if it has been modified, on each
" :next, :rewind, :last, :first, :previous, :stop, :suspend, :tag, :!,
" :make, CTRL-] and CTRL-^ command; and when a :buffer, CTRL-O, CTRL-I,
" '{A-Z0-9}, or `{A-Z0-9} command takes one to another file.
set autowrite

if has("persistent_undo")
    " List of directory names for undo files, separated with commas.
    if exists ( "$XDG_CACHE_HOME" )
        let &undodir = $XDG_CACHE_HOME . '/vim/undo'
    else
        let &undodir = $HOME . '/.cache/vim/undo'
    endif

    " When on, Vim automatically saves undo history to an undo file when
    " writing a buffer to a file, and restores undo history from the same
    " file on buffer read.
    set undofile
endif

" If this many milliseconds nothing is typed the swap file will be
" written to disk (see |crash-recovery|).  Also used for the
" |CursorHold| autocommand event.
set updatetime=200

" Function keys that start with an <Esc> are recognized in Insert
" mode.  When this option is off, the cursor and function keys cannot be
" used in Insert mode if they start with an <Esc>.  The advantage of
" this is that the single <Esc> is recognized immediately, instead of
" after one second.  Instead of resetting this option, you might want to
" try changing the values for 'timeoutlen' and 'ttimeoutlen'.  Note that
" when 'esckeys' is off, you can still map anything, but the cursor keys
" won't work by default.
set esckeys

" 'timeout'    'ttimeout'    action
"  off          off          do not time out
"  on           on or off    time out on :mappings and key codes
"  off          on           time out on key codes
set notimeout
set ttimeout

" The time in milliseconds that is waited for a key code or mapped key
" sequence to complete.  Also used for CTRL-\ CTRL-N and CTRL-\ CTRL-G
set timeoutlen=625

" When on, the mouse pointer is hidden when characters are typed.
set mousehide

" Show the line and column number of the cursor position, separated by a
" comma.
set ruler

" Show (partial) command in the last line of the screen.  Set this
" option off if your terminal is slow.
set showcmd

" When there is a previous search pattern, highlight all its matches.
set hlsearch

" If on Vim will wrap long lines at a character in 'breakat' rather
" than at the last character that fits on the screen.  Unlike
set linebreak

" When on, lines longer than the width of the window will wrap and
" displaying continues on the next line.  When off lines will not wrap
" and only part of long lines will be displayed.
set nowrap

" Minimal number of screen lines to keep above and below the cursor.
set scrolloff=5

" List mode: Show tabs as CTRL-I is displayed, display $ after end of
" line.  Useful to see the difference between tabs and spaces and for
" trailing blanks.
set list

" Strings to use in 'list' mode and for the |:list| command.  It is a
" comma separated list of string settings. eol: ^Vu21B5 (unicode)
set listchars=trail:·,tab:▷·,precedes:«,extends:»,eol:↵

" String to put at the start of lines that have been wrapped.
set showbreak=↳\ 

" n	When included, the column used for 'number' and
"  	'relativenumber' will also be used for text of wrapped
"  	lines.
set cpoptions+=n

" When this option is set, the screen will not be redrawn while
" executing macros, registers and other commands that have not been
" typed.  Also, updating the window title is postponed.  To force an
" update use |:redraw|.
set lazyredraw

" The minimal number of columns to scroll horizontally.  Used only when
" the 'wrap' option is off and the cursor is moved off of the screen.
set sidescroll=5

" The minimal number of screen columns to keep to the left and to the
" right of the cursor if 'nowrap' is set.
set sidescrolloff=1

" Default height for a preview window. (Fugitive uses preview window too)
set previewheight=20

" The value of this option influences when the last window will have a
" status line:
"       0: never
"       1: only if there are at least two windows
"       2: always
set laststatus=2

" When 'wildmenu' is on, command-line completion operates in an enhanced
" mode.  On pressing 'wildchar' (usually <Tab>) to invoke completion,
" the possible matches are shown just above the command line, with the
" first match highlighted (overwriting the status line, if there is
" one).  Keys that show the previous/next match, such as <Tab> or
" CTRL-P/CTRL-N, cause the highlight to move to the appropriate match.
set wildmenu

" Completion mode that is used for the character specified with
" 'wildchar'.  It is a comma separated list of up to four parts.  Each
" part specifies what to do for each consecutive use of 'wildchar'.
set wildmode=list:full

" A list of file patterns.  A file that matches with one of these
" patterns is ignored when completing file or directory names, and
" influences the result of |expand()|, |glob()| and |globpath()| unless
" a flag is passed to disable this.
set wildignore=*.o,*.obj,*.hi,*.class,.git,submodules/**

" Suffixes that get lower priority when doing tab completion for filenames.
" These are files we are not likely to want to edit or read.
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf
            \,.cb,.ind,.idx,.ilg,.inx,.out,.toc

" When a bracket is inserted, briefly jump to the matching one.  The
" jump is only done if the match can be seen on the screen.  The time to
" show the match can be set with 'matchtime'.
set showmatch

" Ignore case in search patterns.
set ignorecase

" Override the 'ignorecase' option if the search pattern contains upper
" case characters.  Only used when the search pattern is typed and
" 'ignorecase' option is on.
set smartcase

" While typing a search command, show where the pattern, as it was typed
" so far, matches.
set incsearch

" In Insert mode: Use the appropriate number of spaces to insert a
" <Tab>.  Spaces are used in indents with the '>' and '<' commands and
" when 'autoindent' is on.  To insert a real tab when 'expandtab' is
" on, use CTRL-V<Tab>.
set expandtab

" Number of spaces that a <Tab> in the file counts for.
set tabstop=2

" Number of spaces to use for each step of (auto)indent.
" shiftwidth = 0 should automatically use tabstop. However, this break
" the vim-indent-guides plugin. This is a workaround.
let &shiftwidth=&tabstop

" Number of spaces that a <Tab> counts for while performing editing
" operations, like inserting a <Tab> or using <BS>. (0 disables)
set softtabstop=2

" When on, the title of the window will be set to the value of
" 'titlestring' (if it is not empty)
set title titlestring=vi:%t

" Minimal number of columns to use for the line number.
set numberwidth=2

" Print the line number in front of each line.
set number

" Show the line number relative to the line with the cursor in front of each
" line.
set relativenumber

" This option controls the behavior when switching between buffers.
" Possible values (comma separated list): useopen, usetab, split, newtab
set switchbuf=useopen,usetab,newtab

" The kind of folding used for the current window.
set foldmethod=syntax

" When non-zero, a column with the specified width is shown at the side
" of the window which indicates open and closed folds.
set foldcolumn=2

if version >= 703
    " 'colorcolumn' is a comma separated list of screen columns that are
    " highlighted with ColorColumn |hl-ColorColumn|.  Useful to align
    " text.  Will make screen redrawing slower.
    " set colorcolumn=80
    " http://blog.hanschen.org/2012/10/24/different-background-color-in-vim-past-80-columns/
    execute "set colorcolumn=" . join(range(81,335), ',')
endif

" Highlight the screen line of the cursor with CursorLine |hl-CursorLine|.
set cursorline

" Highlight the screen column of the cursor with CursorColumn
" |hl-CursorColumn|.  Useful to align text.  Will make screen redrawing
" slower.
set cursorcolumn

" A comma separated list of options for Insert mode completion
" |ins-completion|.
" removing preview fixes popup menu disappearing problem with cursorcolumn
" set completeopt-=preview
set completeopt=menu

" If you start editing a new file, and the 'modeline' option is on, a
" number of lines at the beginning and end of the file are checked for
" modelines.
set modeline

" Changes the effect of the |:mksession| command.  It is a comma separated
" list of words.  Each word enables saving and restoring something:
" default: "blank,buffers,curdir,folds,help,options,tabpages,winsize"
set sessionoptions-=options

" Changes the effect of the |:mkview| command.  It is a comma separated
" list of words.  Each word enables saving and restoring something:
" default: "folds,options,cursor"
set viewoptions-=options

" A comma separated list of word list names.  When the 'spell' option is
" on spellchecking will be done for these languages.
set spelllang=de_20,en

" The name of the printer to be used for |:hardcopy|.
set printdevice=hplj4l

if has("gui_gtk2")
    " This is a list of fonts which will be used for the GUI version of Vim.
    set guifont=Terminus\ 8

    " This option only has an effect in the GUI version of Vim.  It is a
    " sequence of letters which describes what components and options of the
    " GUI should be used.
    set guioptions=acgirL

    " This option tells Vim what the cursor should look like in different
    " modes.
    set guicursor=n-v-c:block-Cursor/lCursor,ve:ver35-Cursor,o:hor50-Cursor
                \,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor
                \,sm:block-Cursor,a:blinkon0
endif

" help tex-slow
" If you have a slow computer, you may wish to reduce the values
syn sync maxlines=200
syn sync minlines=50

" Maximum column in which to search for syntax items.  In long lines the
" text after this column is not highlighted and following lines may not
" be highlighted correctly, because the syntax state is cleared.
" This helps to avoid very slow redrawing for an XML file that is one
" long line.
set synmaxcol=120

" The ":syntax enable" command will keep your current color settings.  This
" allows using ":highlight" commands to set your preferred colors before or
" after using this command.  If you want Vim to overrule your settings with the
" defaults, use: >
"         :syntax on
syntax enable

" Vim can detect the type of file that is edited.  This is done by checking the
" file name and sometimes by inspecting the contents of the file for specific
" text.
filetype indent plugin on
