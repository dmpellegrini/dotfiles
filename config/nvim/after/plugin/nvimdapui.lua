-- Initialize Dap UI
require("dapui").setup()

-- For Type Checking
require("neodev").setup({
  library = { plugins = { "nvim-dap-ui" }, types = true }
})

-- Keymaps
vim.keymap.set('n', '<leader>db', function() require('dapui').toggle() end)
