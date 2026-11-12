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
      -- Cores do arco-íris das guias de indentação (paleta do Dracula).
      -- Antes vinham do gruvbox; agora são fixas para não depender do tema.
      local rainbow = {
        RainbowRed = "#FF5555",
        RainbowYellow = "#F1FA8C",
        RainbowBlue = "#8BE9FD",
        RainbowGreen = "#50FA7B",
        RainbowViolet = "#BD93F9",
        RainbowCyan = "#A4FFFF",
      }

      local function setup_highlights()
        for group, color in pairs(rainbow) do
          vim.api.nvim_set_hl(0, group, { fg = color })
        end
      end

      setup_highlights()
      vim.api.nvim_create_autocmd("ColorScheme", {
        callback = setup_highlights,
      })

      require("ibl").setup(opts)
    end,
  },
}