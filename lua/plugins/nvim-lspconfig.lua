return {
    "neovim/nvim-lspconfig",
    config = function()
        local capabilities = require("blink.cmp").get_lsp_capabilities()

        vim.lsp.config("*", {
            capabilities = capabilities,
        })

        vim.lsp.config('lua_ls', {
            settings = {
                Lua = {
                    runtime = { version = 'Lua 5.1' },
                    diagnostics = {
                        globals = { 'bit', 'vim', 'it', 'describe', 'before_each', 'after_each' },
                    },
                },
            },
        })

        local vue_language_server_path = vim.fn.expand '$MASON/packages' ..
            '/vue-language-server' .. '/node_modules/@vue/language-server'

        vim.lsp.config('ts_ls', {
            init_options = {
                plugins = {
                    {
                        name = '@vue/typescript-plugin',
                        location = vue_language_server_path,
                        languages = { 'vue' },
                        configNamespace = 'typescript',
                    },
                },
            },
            filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue' },
        })

        vim.lsp.enable('ts_ls')
        vim.lsp.enable('lua_ls')
        vim.lsp.enable('rust_analyzer')
    end,
}
