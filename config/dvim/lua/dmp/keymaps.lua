-- Options for keymaps
local options = { noremap = true, silent = true }

-- Shorter Keymap headers
local keymap = vim.api.nvim_set_keymap

vim.g.mapleader = " "

-- Sets Write and Quit ShortCut Settings
keymap("n", "<leader>w", ":w<CR>", options)
keymap("n", "<leader>q", ":q!<CR>", options)

-- Sets Window Pane Jumping
keymap("n", "<C-h>", "<C-w>h", options)
keymap("n", "<C-j>", "<C-w>j", options)
keymap("n", "<C-k>", "<C-w>k", options)
keymap("n", "<C-l>", "<C-w>l", options)

--Sets Window Pane Resizing
keymap("n", "<S-Up>", "<C-w>+", options)
keymap("n", "<S-Down>", "<C-w>-", options)
keymap("n", "<S-Left>", "<C-w><", options)
keymap("n", "<S-Right>", "<C-w>>", options)

--Allows you to move block of text
keymap("v", "J", ":m '>+1<CR>gv=gv", options)
keymap("v", "K", ":m '<-2<CR>gv=gv", options)

--Save pasted text to buffer
keymap("x", "<leader>p", "\"_dp", options)

--Remaps leader y to Yank to system clipboard
keymap("n", "<leader>y", "\"+y", options)
keymap("v", "<leader>y", "\"+y", options)
keymap("n", "<leader>Y", "\"+Y", options)

--Per Primagen's Advice
keymap("n", "Q", "<nop>", options)

--Remaps For Buffers
keymap("n", "<C-Tab>bn", ":bnext<CR>", options)
