return{
  {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    config = function ()
      -- disable netrw at the very start of your init.lua (strongly advised)
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1

      require("nvim-tree").setup({
        sort_by = "case_sensitive",
        view = {
          width = 30,
        },
        renderer = {
          group_empty = true,
        },
        filters = {
          dotfiles = true,
        },
      })

    end
  },
  {
    "nvim-tree/nvim-web-devicons",
    lazy = true,
  },
}
