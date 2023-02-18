""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"                     Danny's Scratch VIM R(un)C(ommands)                      "

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" TEST SETTINGS
"set listchars=space:_,tab:>~ list

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" VIM-PLUG PLUGIN MANAGER

call plug#begin()

" Essential File Directory Navigation Plugin
Plug 'preservim/nerdtree'

" Makes your status bar look sexy
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Fuzzy finder finder
Plug 'ctrlpvim/ctrlp.vim'

" Vim Git Wrapper
Plug 'tpope/vim-fugitive'

" Helpful plugin for surrounding syntax
Plug 'tpope/vim-surround'


call plug#end()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" AIRLINE PLUGIN CONFIG
" let g:airline_solarized_bg='dark'
let g:airline_powerline_fonts = 1

" Main Line Formatting and Symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

" Tab line formatting and symbols
let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" VIM GENERAL CONFIGS

" Eliminates Vi compatibility for enhances Vim options
set nocompatible

" Reads both .vimrc and the .exrc in the current directory
set exrc

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" STATUS AND TAB LINE SETTINGS

" Keep 1000 items in the command history
set history=1000

" Show the cursor position. (made obsolete with Airline)
" set ruler

" show incomplete commands.
"set showcmd

" shows a menu when using tab completion
set wildmenu

" keeps cursor at least n lines down when scrolling 
set scrolloff=5

" Shows the status of which mode you are in (made obsolete with Airline)
set noshowmode

" Ignores case when searching through wild menu
set wildignorecase

" sets the content of the tab line at the top of the file
" set tabline=""

" shows or hides the tabline  (0) is hidden (1) sometimes (2) always
" set showtabline=2

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" SEARCHING

" highlights all matches for search
set nohlsearch

" incrementally highlights a search word as you are typing it
set incsearch

" ingnores the case of the search pattern
set ignorecase

" only returns case with Capitalization when it's entered.
set smartcase

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" TEXT EDITING

" wraps text that's too long for the window
set wrap

" makes sure that vim doesn't line break in the middle of a word
set linebreak

" lines that wrap repeat maintain indentation
set breakindent

" takes away the joining of two spaces when combining lines.
set nojoinspaces

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" TABBING AND INDENTING

" Sets the value of the tab character
set tabstop=4

" Sets the value of the shift command
set shiftwidth=4

" Adds spaces equivalent to the tab value
set expandtab

" Sets the number of spaces that tabstop will use while editing
set softtabstop=4

" copies the indentation of the previous line to the next
set autoindent

" indents according to certain coding language standards like C
set smartindent

" uses shift width when inserting tabs (redundant with softtabstop)
" set smarttab

" preserves indentation structure when reindenting
" set preserveindent

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" COPYING AND PASTING

" uses clipboard as the unnamed register
" set clipboard

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" COLOR SCHEME

" sets vim syntax highlighting based on your terminal's background
set background=dark

" sets the colorscheme
colorscheme slate

" sets the syntax hilighting according to the terminal
set termguicolors

" COLUMN AND ROW LINES

" makes a vertical line that follows the cursor
set cursorline

" makes a horizantal line that follows the cursor
set cursorcolumn

" sets a column to highlight
set colorcolumn=80

" puts a number in front of each row
set number

" sets the columns used for line numbers
set numberwidth=5

" sets relative line numbers for optimal jumping
set relativenumber

" includes a sign column in the gutter
set signcolumn=auto

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" WINDOWS BUFFERS AND FILES

" Puts new vertical window splits to the right
set splitright

" Puts new horizantal window splits to the bottom
set splitbelow

" Allows you to navigate buffers before saving
set hidden

" creates a backup file if you have not saved the file
" set backup

" sets the file extension for vim backup files
" set backupext=_backup

" gets rid of the temporary swap files
set noswapfile

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" BELL OPTIONS

" sets the bell to not ring under cetain conditions
" set belloff	  

" esnsures the bell doesn't wring on error
set noerrorbells

" makes a visual bell instead of beeping
set visualbell

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" KEY MAPPINGS AND REMAPS

" sets the default leader key the default key is \
let mapleader=" "

" sets the write and quit commands to spacebar + w || q 
nnoremap <leader>w :w!<CR>
nnoremap <leader>q :q<CR>

" sets window pane jumping to ctrl hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" sets window pane resizing to option hjkl
nnoremap <Up> <C-w>+
nnoremap <Down> <C-w>-
nnoremap <Left> <C-w><
nnoremap <Right> <C-w>>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" OPTIONS TO EXPLORE

" complete
" foldclose
" regexengine
" statusline
" termguicolors

" PLUGINS TO EXPLORE
" jiangmiao/auto-pairs
" andymass/vim-matchup
" alvan/vim-closetag
" machakann/vim-sandwich
" tpope/vim-surround
