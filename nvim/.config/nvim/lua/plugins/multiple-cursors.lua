local cursorline

return {
  "brenton-leighton/multiple-cursors.nvim",
  version = "*", -- usa a última release estável
  opts = {
    -- Deixa os cursores virtuais mais fáceis de enxergar:
    -- desliga a cursorline e o highlight de parênteses enquanto
    -- houver múltiplos cursores, restaurando ao sair.
    pre_hook = function()
      cursorline = vim.o.cursorline
      vim.opt.cursorline = false
      vim.cmd("NoMatchParen")
    end,
    post_hook = function()
      vim.opt.cursorline = cursorline ~= false
      vim.cmd("DoMatchParen")
    end,
  },
  keys = {
    -- Equivalente ao Ctrl+D do VS Code: adiciona um cursor na próxima
    -- ocorrência da palavra (ou da seleção) sob o cursor.
    {
      "<C-d>",
      "<Cmd>MultipleCursorsAddJumpNextMatch<CR>",
      mode = { "n", "x" },
      desc = "Adicionar cursor na próxima ocorrência",
    },
    -- Adicionar cursor acima/abaixo (como Ctrl+Alt+↑/↓ do VS Code).
    {
      "<C-Down>",
      "<Cmd>MultipleCursorsAddDown<CR>",
      mode = { "n", "i", "x" },
      desc = "Adicionar cursor abaixo",
    },
    {
      "<C-Up>",
      "<Cmd>MultipleCursorsAddUp<CR>",
      mode = { "n", "i", "x" },
      desc = "Adicionar cursor acima",
    },
    -- Adicionar/remover cursor com Ctrl + clique do mouse.
    {
      "<C-LeftMouse>",
      "<Cmd>MultipleCursorsMouseAddDelete<CR>",
      mode = { "n", "i" },
      desc = "Adicionar/remover cursor com o mouse",
    },
    -- Cursores em todas as ocorrências da palavra/seleção de uma vez.
    {
      "<leader>ma",
      "<Cmd>MultipleCursorsAddMatches<CR>",
      mode = { "n", "x" },
      desc = "Cursores em todas as ocorrências",
    },
    -- Um cursor por linha da área selecionada no modo visual.
    {
      "<leader>mv",
      "<Cmd>MultipleCursorsAddVisualArea<CR>",
      mode = "x",
      desc = "Cursores nas linhas da seleção",
    },
    -- Travar/destravar os cursores virtuais.
    {
      "<leader>ml",
      "<Cmd>MultipleCursorsLockToggle<CR>",
      mode = { "n", "x" },
      desc = "Travar/destravar cursores",
    },
  },
}
