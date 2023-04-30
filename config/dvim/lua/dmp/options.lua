local options = {
	number = true,
	relativenumber = true,

	tabstop = 2,
	softtabstop = 2,
	shiftwidth = 2,
	expandtab = true,
	smartindent = true,

	wrap = true,
	linebreak = true,
	joinspaces = false,

	swapfile = false,
	backup = false,
	undodir = os.getenv("HOME") .. "/.vim/undodir",
	undofile = true,

	hlsearch = false,
	incsearch = true,
	ignorecase = true,
	smartcase = true,

	termguicolors = true,

	scrolloff = 8,
	signcolumn = "yes",

	updatetime = 50,

	colorcolumn = "80",
	cursorline = true,
	cursorcolumn = true,

	splitright = true,
	splitbelow = true,
	hidden = true,

	history = 1000,

	wildmenu = true,
	showmode = false,

	wildignorecase = true,

  timeoutlen = 300,
  updatetime = 300,

  fileencoding = "utf-8"
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.opt.formatoptions:remove({"c", "r", "o"})
vim.opt.runtimepath:remove("/usr/share/vim/vimfiles")
