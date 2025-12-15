return {
  "neanias/everforest-nvim",
  version = false,
  lazy = false,
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    -- For more configurations, see: https://github.com/neanias/everforest-nvim
    vim.g.everforest_background = "hard"
    vim.cmd.colorscheme("everforest")

    require("everforest").setup({
      -- Your config here. See the github page for options.
    })
  end,
}
