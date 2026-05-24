return {
    "mfussenegger/nvim-dap",
    dependencies = {
        "rcarriga/nvim-dap-ui",
    },
    config = function()
        require "config.nvim-dap"
    end,
    event = "VeryLazy",
}
