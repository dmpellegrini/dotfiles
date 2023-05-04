return{
  {
    "lukas-reineke/indent-blankline.nvim",
  },
  {
    'echasnovski/mini.indentscope',
    version = false,
    opts = {
      symbol = "│",
      options = { try_as_border = true },
      draw = {
        delay = 100,
      },
    },
    config = function(_, opts)
      require('mini.indentscope').setup(opts)
    end,
  }
}
