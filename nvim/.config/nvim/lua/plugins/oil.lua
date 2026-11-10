return {
  "stevearc/oil.nvim",
  lazy = false,
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    -- Usa o Oil como explorador padrão (substitui o netrw)
    default_file_explorer = true,
    columns = { "icon" },
    -- Mostra arquivos ocultos (use "g." para alternar)
    view_options = {
      show_hidden = true,
    },
    float = {
      padding = 2,
      max_width = 90,
      max_height = 0,
    },
    keymaps = {
      ["g?"] = "actions.show_help",
      ["<CR>"] = "actions.select",
      ["<C-s>"] = { "actions.select", opts = { vertical = true }, desc = "Abrir em split vertical" },
      ["<C-h>"] = { "actions.select", opts = { horizontal = true }, desc = "Abrir em split horizontal" },
      ["<C-t>"] = { "actions.select", opts = { tab = true }, desc = "Abrir em nova aba" },
      ["<C-p>"] = "actions.preview",
      ["<C-c>"] = "actions.close",
      ["<C-l>"] = "actions.refresh",
      ["-"] = "actions.parent",
      ["_"] = "actions.open_cwd",
      ["`"] = "actions.cd",
      ["~"] = { "actions.cd", opts = { scope = "tab" }, desc = "cd nesta aba" },
      ["g."] = "actions.toggle_hidden",
      ["gs"] = "actions.change_sort",
      ["gx"] = "actions.open_external",
      ["g\\"] = "actions.toggle_trash",
    },
  },
  keys = {
    { "<leader>fo", "<cmd>Oil --float<cr>", desc = "Oil (float)" },
    { "<leader>fO", "<cmd>Oil<cr>", desc = "Oil (diretório atual)" },
  },
}
