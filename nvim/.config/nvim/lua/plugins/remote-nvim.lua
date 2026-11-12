return {
  "amitds1997/remote-nvim.nvim",
  opts = {
    -- Configurações padrão (ajuste conforme necessidade)
    host = "127.0.0.1", -- IP do Termux
    port = 2222, -- Porta SSH do Termux
    user = "jotaene", -- Usuário do Termux (geralmente o mesmo do PC)
    -- ssh_config = true,    -- Usa ~/.ssh/config se preferir
  },
  config = function(_, opts)
    require("remote-nvim").setup(opts)
  end,
  keys = {
    { "<leader>cr", "<cmd>RemoteStart<cr>", desc = "Remote: Iniciar sessão" },
    { "<leader>cR", "<cmd>RemoteStop<cr>", desc = "Remote: Parar sessão" },
  },
}
