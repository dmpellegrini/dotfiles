-- AIRLINE PLUGIN CONFIG
vim.cmd('let g:airline_theme="gruvbox_material"')
vim.cmd('let g:airline_powerline_fonts = 1')

-- Main Line Formatting and Symbols
vim.cmd("let g:airline_left_sep = ''")
vim.cmd('let g:airline_left_alt_sep = ""')
vim.cmd('let g:airline_right_sep = ""')
vim.cmd('let g:airline_right_alt_sep = ""')

-- Tab line formatting and symbols
vim.cmd('let g:airline#extensions#tabline#enabled = 1')
vim.cmd('let g:airline#extensions#tabline#formatter = "default"')
vim.cmd("let g:airline#extensions#tabline#left_sep = ''")
vim.cmd('let g:airline#extensions#tabline#left_alt_sep = ""')
vim.cmd('let g:airline#extensions#tabline#right_sep = ""')
vim.cmd('let g:airline#extensions#tabline#right_alt_sep = ""')

