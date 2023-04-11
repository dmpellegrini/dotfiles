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

" Additional Fuzzy Finder Based On Terminal FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Vim Git Wrapper
Plug 'tpope/vim-fugitive'

" Shows github status in the programs gutter
Plug 'airblade/vim-gitgutter'

" Helpful plugin for surrounding syntax and delimiters
Plug 'tpope/vim-surround'
"
" Standard plugin for commenting
Plug 'tpope/vim-commentary'

" Additional Syntax Hilighting
Plug 'sheerun/vim-polyglot'

" Syntax Error Checking
Plug 'vim-syntastic/syntastic'

" Autocompletion and LSP integration
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Allows access to the system clipboard
Plug 'christoomey/vim-system-copy'

" Beautiful pastelle style colorscheme
Plug 'morhetz/gruvbox'

call plug#end()


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
nnoremap <S-Up> <C-w>+
nnoremap <S-Down> <C-w>-
nnoremap <S-Left> <C-w><
nnoremap <S-Right> <C-w>>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" COMMAND ON COMPLETE CONFIG

" May need for Vim (not Neovim) since coc.nvim calculates byte offset by count
" utf-8 byte sequence
set encoding=utf-8
" Some servers have issues with backup files, see #649
" set nobackup (taken care of below)
" set nowritebackup (taken care of below)

" Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
" delays and poor user experience
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved
" set signcolumn=yes (taken care of below)

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s)
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying code actions to the selected code block
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying code actions at the cursor position
nmap <leader>ac  <Plug>(coc-codeaction-cursor)
" Remap keys for apply code actions affect whole buffer
nmap <leader>as  <Plug>(coc-codeaction-source)
" Apply the most preferred quickfix action to fix diagnostic on the current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Remap keys for applying refactor code actions
nmap <silent> <leader>re <Plug>(coc-codeaction-refactor)
xmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)
nmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)

" Run the Code Lens action on the current line
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> to scroll float windows/popups
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges
" Requires 'textDocument/selectionRange' support of language server
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"FZF CONFIG
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)

nnoremap <leader>f :Files<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>g :GFiles<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"NERD TREE CONFIG SETTINGS
nnoremap <leader>e :NERDTreeToggle<CR>

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

let g:NERDTreeHijackNetrw=0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" VIM GENERAL CONFIGS

" Eliminates Vi compatibility for enhances Vim options
set nocompatible

" Reads both .vimrc and the .exrc in the current directory
set exrc

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" STATUS AND TABLINE SETTINGS

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

" sets the cursor to thin while in insert mode
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

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
set smarttab

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

" allows vim to access the colorscheme of terminal
set termguicolors

" sets the colorscheme
" colorscheme slate

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" GRUVBOX COLORSCHEME CONFIG

" sets the syntax hilighting according to the terminal
let g:gruvbox_contrast_dark="medium"
colorscheme gruvbox

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" AIRLINE PLUGIN CONFIG
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts = 1

" Main Line Formatting and Symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

" Tab line formatting and symbols
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''


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
set signcolumn=yes

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" WINDOWS BUFFERS AND FILES

" Puts new vertical window splits to the right
set splitright

" Puts new horizantal window splits to the bottom
set splitbelow

" Allows you to navigate buffers before saving
set hidden

" creates a backup file if you have not saved the file
set nobackup

" writes to backup file
set nowritebackup

" sets the file extension for vim backup files
" set backupext=_backup

" gets rid of the temporary swap files
set noswapfile

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" BELL OPTIONS

" sets the bell to not ring under cetain conditions
" set belloff (options)	  

" esnsures the bell doesn't wring on error
set noerrorbells

" makes a visual bell instead of beeping
set visualbell



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" OPTIONS TO EXPLORE

" complete
" foldclose
" regexengine

" PLUGINS TO EXPLORE
" jiangmiao/auto-pairs
" andymass/vim-matchup
" alvan/vim-closetag
" machakann/vim-sandwich
