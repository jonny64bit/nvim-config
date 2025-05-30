return {
  "neovim/nvim-lspconfig",
  config = function()
    vim.lsp.enable "ts_ls"
    vim.lsp.enable "bashls"
    vim.lsp.enable "lua_ls"
    vim.lsp.enable "yamlls"
    vim.lsp.enable "powershell_es"

    local capabilities = require("blink.cmp").get_lsp_capabilities()
    vim.lsp.config("*", {
      capabilities = capabilities,
    })
    vim.lsp.config("yamlls", {
      on_attach = function(client, _)
        client.server_capabilities.documentFormattingProvider = true
      end,
      settings = {
        yaml = {
          schemas = {
            ["https://json.schemastore.org/github-workflow.json"] = "/.github/workflows/*",
            ["https://json.schemastore.org/github-action.json"] = "/.github/actions/*",
            ["https://json.schemastore.org/github-issue-forms.json"] = "/.github/ISSUE_TEMPLATE/*",
          },
          trace = {
            server = "verbose",
          },
          format = {
            enable = true,
          },
        },
      },
    })
  end,
}
