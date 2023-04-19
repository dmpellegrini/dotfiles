local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
	lsp.default_keymaps({buffer = bufnr})
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())
require("luasnip.loaders.from_vscode").lazy_load()

lsp.setup()

-- Make sure you setup `cmp` after lsp-zero

local luasnip = require("luasnip")
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
	sources = {
		{name = 'nvim_lsp', keyword_length = 2},
		{name = 'luasnip', keyword_length = 2},
		{name = 'nvim_lua'},
		{name = 'buffer'},
		{name = 'path'},
	},
	mapping = {
		-- `Enter` key to confirm completion
		['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Insert,
            select = true,
        }),
		['<Tab>'] = cmp_action.luasnip_supertab(),
        ['<S-Tab>'] = cmp_action.luasnip_shift_supertab(),
        -- ["<Tab>"] = cmp.mapping(function(fallback)
        --     if cmp.visible() then
        --         cmp.select_next_item()
        --         -- You could replace the expand_or_jumpable() calls with expand_or_locally_jumpable() 
        --         -- they way you will only jump inside the snippet region
        --     elseif luasnip.expand_or_jumpable() then
        --         luasnip.expand_or_jump()
        --     elseif has_words_before() then
        --         cmp.complete()
        --     else
        --         fallback()
        --     end
        -- end, { "i", "s" }),

        -- ["<S-Tab>"] = cmp.mapping(function(fallback)
        --     if cmp.visible() then
        --         cmp.select_prev_item()
        --     elseif luasnip.jumpable(-1) then
        --         luasnip.jump(-1)
        --     else
        --         fallback()
        --     end
        -- end, { "i", "s" }),
    },
    snippet = {
      expand = function(args)
        require('luasnip').lsp_expand(args.body)
        -- require('nvim_lsp').lsp_expand(args.body)
        -- require('path').lsp_expand(args.body)
      end,
    },
    experimental = {
        ghost_text = true
    }

})

require('cmp_nvim_lsp').default_capabilities()
