return {
  "olrtg/emmet-ls",
  event = "InsertEnter",
  dependencies = {
    "neovim/nvim-lspconfig",
  },
  config = function()
    local lspconfig = require("lspconfig")
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities.textDocument.completion.completionItem.snippetSupport = true

    lspconfig.emmet_ls.setup({
      capabilities = capabilities,
      filetypes = {
        "html",
        "css",
        "scss",
        "sass",
        "less",
        "javascript",
        "javascriptreact",
        "typescript",
        "typescriptreact",
        "vue",
        "svelte",
        "php",
        "blade",
        "twig",
        "eruby",
      },
      init_options = {
        html = {
          options = {
            ["bem.enabled"] = true,
          },
        },
      },
    })

    -- Atalhos nativos para ERB (sem plugin extra)
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "eruby",
      callback = function()
        -- ;er -> <%=  %> (cursor no meio)
        vim.keymap.set("i", ";er", "<%=  %><Left><Left><Left>", { buffer = true, desc = "ERB output" })
        -- ;ee -> <%  %> (cursor no meio)
        vim.keymap.set("i", ";ee", "<%  %><Left><Left><Left>", { buffer = true, desc = "ERB block" })
        -- ;ec -> <%#  %> (cursor no meio)
        vim.keymap.set("i", ";ec", "<%#  %><Left><Left><Left>", { buffer = true, desc = "ERB comment" })
        -- ;ei -> <% if  %><% end %> (cursor no meio do if)
        vim.keymap.set("i", ";ei", "<% if  %><CR><% end %><Up><End><Left><Left><Left><Left>", { buffer = true, desc = "ERB if/end" })
        -- ;ef -> <% ...each do |x| %><% end %> (cursor no |x|)
        vim.keymap.set("i", ";ef", "<% .each do |x| %><CR><% end %><Up><End><Left><Left><Left><Left><Left><Left><Left>", { buffer = true, desc = "ERB each" })
      end,
    })
  end,
}