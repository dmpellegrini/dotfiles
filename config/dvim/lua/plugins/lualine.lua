return{
  "nvim-lualine/lualine.nvim",
  config = function()

    local custom_gruvbox = require'lualine.themes.gruvbox'

    require('lualine').setup({
      options = { 
        theme  = custom_gruvbox,
        section_separators = { left = '', right = '' },
        component_separators = { left = '', right = '' },
      }
    })
  end,
}
