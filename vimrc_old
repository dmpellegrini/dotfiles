"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""               
"               
"               ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"               ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"               ██║   ██║██║██╔████╔██║██████╔╝██║     
"               ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     
"                ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"                 ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"               
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
	
set nocompatible

"PLUGINS

"All plugins loaded below this line"
call plug#begin('~/.vim/plugged')

"Basic features of a vimrc"
Plug 'tpope/vim-sensible'

"Easy commenting
Plug 'tpope/vim-commentary'

"Easy git hub commands
Plug 'tpope/vim-fugitive'

"Plugin for brackets and delimiters
Plug 'tpope/vim-surround'

"Color scheme
Plug 'morhetz/gruvbox' 

"Additional Syntax Highlighting
Plug 'sheerun/vim-polyglot'

"Cool status bar setting
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Gives me a way to copy out of Vim
Plug 'christoomey/vim-system-copy'

"Provides a way to sort items in your file
Plug 'christoomey/vim-sort-motion'

"Gives you a way to looks at a graphic file directory
Plug 'scrooloose/nerdtree'

"Gives you a way to preview your Markdown file
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

call plug#end()


"VISUAL STUFF

"Sets the cursor to line in insert mode
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

"Gives additional syntax highlighting
syntax on

"Gruvbox color setting
set bg=dark
let g:gruvbox_contrast_light = 'medium'
let g:gruvbox_contrast_dark = 'hard'

"Gruvbox color options
colorscheme gruvbox

"Airline Theme Stuff
"let g:airline_base16_gruvbox_dark_hard=1

"Adjusts tabs to display 4 spaces
set tabstop=2 
set softtabstop=2
set shiftwidth=2
set expandtab
set smarttab

"Adjusts indent settings
set autoindent
set smartindent
filetype plugin on
filetype indent on

"Settings for relative row numbers
set number relativenumber
set nu rnu
set signcolumn=yes

"Takes away redundant statusline bar
set noshowmode

"Displays cursor crossair
set cursorline cursorcolumn

"Page starts scrolling at 8 spaces
set scrolloff=8

"Puts new splits below and right
set splitbelow splitright


"TECHNICAL STUFF

"Looks for custom .vimrc file associated with directory of open file
set exrc

"Saves opened files into your buffer in the background w/o writing
set hidden

"Highlights all items you are searching while typing
set incsearch
set nohlsearch
"set hlsearch

"Ignores capitalization when searching
set ignorecase 

"Use capitalization if included in search
set smartcase 

"Makes it so that there is no swp file lurking
set noswapfile

"Autocomplete settings
"set complete+=kspell
"set wildmenu

"REMAPS

"Sets leader key to spacebar
let mapleader = " "

"Remaps write file and quite file commands
nnoremap <leader>q :q<cr>
nnoremap <leader>w :w<cr>

"Remaps window tabing keys
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

inoremap <C-h> <C-c><C-w>h
inoremap <C-j> <C-c><C-w>j
inoremap <C-k> <C-c><C-w>k
inoremap <C-l> <C-c><C-w>l


