-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use {'wbthomason/packer.nvim'}

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use {'sainnhe/gruvbox-material', as = 'gruvbox-material'}

    use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    use {'mbbill/undotree'}

    use {'tpope/vim-fugitive'}

    use {'tpope/vim-commentary'}

    use {'tpope/vim-surround'}

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            { 'williamboman/mason.nvim', run = function()
                pcall(vim.cmd, 'MasonUpdate')
            end
            },
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-buffer'},     -- Required
            {'hrsh7th/cmp-path'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'},     -- Required
            {'saadparwaiz1/cmp_luasnip'},     -- Required
            {'rafamadriz/friendly-snippets'},
        },
    }

    use {
        'vim-airline/vim-airline',
        'vim-airline/vim-airline-themes'
    }

    -- use{"github/copilot.vim"}

    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
        config = function()
            require("nvim-tree").setup {}
        end
    }

    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end
    }

    use {'mfussenegger/nvim-dap'}

    use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }

    use { "nvim-telescope/telescope-dap.nvim" }

    use {'mfussenegger/nvim-dap-python'}

    use {'theHamsta/nvim-dap-virtual-text'}

    use {"folke/neodev.nvim"}

    use { "mxsdev/nvim-dap-vscode-js", requires = {"mfussenegger/nvim-dap"} }

    use {
        "microsoft/vscode-js-debug",
        opt = true,
        run = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out"
    }

    use {'jbyuki/one-small-step-for-vimkind'}
end)
