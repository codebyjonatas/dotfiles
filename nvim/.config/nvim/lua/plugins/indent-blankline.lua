return {
  {
    "lukas-reineke/indent-blankline.nvim",
    opts = {
      indent = {
        highlight = {
          "RainbowRed",
          "RainbowYellow",
          "RainbowBlue",
          "RainbowGreen",
          "RainbowViolet",
          "RainbowCyan",
        },
      },
      scope = {
        enabled = false,
      },
    },
    config = function(_, opts)
      local function setup_highlights()
        local c = require("gruvbox").palette
        vim.api.nvim_set_hl(0, "RainbowRed", { fg = c.bright_red })
        vim.api.nvim_set_hl(0, "RainbowYellow", { fg = c.bright_yellow })
        vim.api.nvim_set_hl(0, "RainbowBlue", { fg = c.bright_blue })
        vim.api.nvim_set_hl(0, "RainbowGreen", { fg = c.bright_green })
        vim.api.nvim_set_hl(0, "RainbowViolet", { fg = c.bright_purple })
        vim.api.nvim_set_hl(0, "RainbowCyan", { fg = c.bright_aqua })
      end

      setup_highlights()
      vim.api.nvim_create_autocmd("ColorScheme", {
        callback = setup_highlights,
      })

      require("ibl").setup(opts)
    end,
  },
}