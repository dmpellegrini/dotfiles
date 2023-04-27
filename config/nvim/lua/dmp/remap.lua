-- Sets Leader
vim.g.mapleader = " "

-- Short Cut For Netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Sets Write and Quit ShortCut Settings
vim.keymap.set("n", "<leader>w", vim.cmd.w)
vim.keymap.set("n", "<leader>q", vim.cmd.q)

-- Sets Window Pane Jumping
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

--Sets Window Pane Resizing
vim.keymap.set("n", "<S-Up>", "<C-w>+")
vim.keymap.set("n", "<S-Down>", "<C-w>-")
vim.keymap.set("n", "<S-Left>", "<C-w><")
vim.keymap.set("n", "<S-Right>", "<C-w>>")

--Allows you to move block of text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--Save pasted text to buffer
vim.keymap.set("x", "<leader>p", "\"_dp")

--Remaps leader y to Yank to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

--Per Primagen's Advice
vim.keymap.set("n", "Q", "<nop>")

--Remaps For Buffers
vim.keymap.set("n", "<leader>bn", ":bnext<CR>")
-- vim.keymap.set("n", "<leader>bp", ":bprevious<CR>")
