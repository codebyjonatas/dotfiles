return {
  {
    "Mofiqul/dracula.nvim",
    priority = 1000,
    config = function()
      require("dracula").setup({
        -- Fundo transparente (equivale ao transparent_mode do gruvbox)
        transparent_bg = true,
        -- Comentários em itálico
        italic_comment = true,
        -- Mostra o "~" no fim do buffer
        show_end_of_buffer = true,
        -- Sobrescreve highlight groups específicos aqui
        overrides = {
          -- Barra da coluna 100 bem visível.
          -- O padrão do Dracula (#44475A) é igual ao da CursorLine e quase
          -- invisível sobre o fundo, principalmente com transparent_bg.
          ColorColumn = { bg = "#6272A4" },
        },
      })

      -- Define o colorscheme após a configuração
      vim.cmd("colorscheme dracula")
    end,
  },
  {
    -- Impede o LazyVim de carregar o tokyonight no startup.
    -- O tema ativo é aplicado pelo plugin acima.
    "LazyVim/LazyVim",
    opts = {
      colorscheme = function() end,
    },
  },
}
