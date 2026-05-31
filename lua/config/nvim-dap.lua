local dap = require("dap")
require("telescope").load_extension("ui-select")

local mason_path = vim.fn.stdpath("data") .. "/mason/packages/netcoredbg/netcoredbg/netcoredbg.exe"

local netcoredbg_adapter = {
    type = "executable",
    command = mason_path,
    args = { "--interpreter=vscode" },
}

dap.adapters.netcoredbg = netcoredbg_adapter -- needed for normal debugging
dap.adapters.coreclr = netcoredbg_adapter    -- needed for unit test debugging

dap.configurations.cs = {
    {
        type = "coreclr",
        name = "launch - netcoredbg",
        request = "launch",
        program = function()
            return vim.fn.input("Path to DLL: ", vim.fn.getcwd() .. "/bin/Debug/", "file")
        end,
        justMyCode = false,
        stopAtEntry = false,
        env = {
            ASPNETCORE_ENVIRONMENT = "Development",
            ASPNETCORE_URLS = "https://localhost:5050",
            ASPIRE_DASHBOARD_OTLP_ENDPOINT_URL = "https://localhost:21030",
            ASPIRE_RESOURCE_SERVICE_ENDPOINT_URL = "https://localhost:22057",
        },
    },
    {
        -- If you get an "Operation not permitted" error using this, try disabling YAMA:
        --  echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope
        name = "Attach to process",
        type = 'coreclr', -- Adjust this to match your adapter name (`dap.adapters.<name>`)
        request = 'attach',
        processId = require('dap.utils').pick_process,
        args = {
        },
    },
}
