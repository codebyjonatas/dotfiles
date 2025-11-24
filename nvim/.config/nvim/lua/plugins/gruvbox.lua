return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000,
  config = function()
    -- Habilita o modo escuro. Mude para "light" para o modo claro.
    vim.o.background = "dark"

    require("gruvbox").setup({
      terminal_colors = true, -- Adiciona cores ao terminal do Neovim
      undercurl = true,
      underline = true,
      bold = true,
      italic = {
        strings = true,
        emphasis = true,
        comments = true,
        operators = false,
        folds = true,
      },
      strikethrough = true,
      invert_selection = false,
      invert_signs = false,
      invert_tabline = false,
      inverse = true, -- Inverte o fundo para resultados de busca, diffs, etc.
      contrast = "soft", -- Pode ser "hard", "soft" ou ""
      -- Você pode sobrescrever cores da paleta aqui
      palette_overrides = {},
      -- Você pode sobrescrever highlight groups específicos aqui
      overrides = {},
      dim_inactive = false,
      transparent_mode = false,
    })

    -- Define o colorscheme após a configuração
    vim.cmd("colorscheme gruvbox")
  end,
}
