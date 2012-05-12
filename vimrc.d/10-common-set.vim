" This option has the effect of making Vim either more Vi-compatible, or
" make Vim behave in a more useful way.
set nocompatible

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

" When non-empty, the viminfo file is read upon startup and written
" when exiting Vim (see |viminfo-file|).
set viminfo='20,\"50

" A history of ":" commands, and a history of previous search patterns
" are remembered.
set history=50

" Write the contents of the file, if it has been modified, on each
" :next, :rewind, :last, :first, :previous, :stop, :suspend, :tag, :!,
" :make, CTRL-] and CTRL-^ command; and when a :buffer, CTRL-O, CTRL-I,
" '{A-Z0-9}, or `{A-Z0-9} command takes one to another file.
set autowrite

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
" comma separated list of string settings.
set listchars=trail:·,tab:▷·,precedes:«,extends:»

" The minimal number of columns to scroll horizontally.  Used only when
" the 'wrap' option is off and the cursor is moved off of the screen.
set sidescroll=5

" The minimal number of screen columns to keep to the left and to the
" right of the cursor if 'nowrap' is set.
set sidescrolloff=5

" Default height for a preview window. (Fugitive uses preview window too)
set previewheight=20

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

" Number of spaces to use for each step of (auto)indent.
set shiftwidth=4

" Number of spaces that a <Tab> counts for while performing editing
" operations, like inserting a <Tab> or using <BS>.
set softtabstop=4

" When on, the title of the window will be set to the value of
" 'titlestring' (if it is not empty)
set title titlestring=vi:%t

" Print the line number in front of each line.
set number

" The kind of folding used for the current window.
set foldmethod=syntax

" When non-zero, a column with the specified width is shown at the side
" of the window which indicates open and closed folds.
set foldcolumn=2

if version >= 703
    " 'colorcolumn' is a comma separated list of screen columns that are
    " highlighted with ColorColumn |hl-ColorColumn|.  Useful to align
    " text.  Will make screen redrawing slower.
    set colorcolumn=80
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
set completeopt-=preview

" If you start editing a new file, and the 'modeline' option is on, a
" number of lines at the beginning and end of the file are checked for
" modelines.
set modeline

" A comma separated list of word list names.  When the 'spell' option is
" on spellchecking will be done for these languages.
set spelllang=de_20,en

" The name of the printer to be used for |:hardcopy|.
set printdevice=hplj4l

if has("gui_gtk2")
    " This is a list of fonts which will be used for the GUI version of Vim.
    set guifont=Terminus\ 12

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

" The ":syntax enable" command will keep your current color settings.  This
" allows using ":highlight" commands to set your preferred colors before or
" after using this command.  If you want Vim to overrule your settings with the
" defaults, use: >
"         :syntax on
syntax enable
