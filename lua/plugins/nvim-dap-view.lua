return {
    "igorlfs/nvim-dap-view",
    opts = {
        winbar = {
            default_section = "scopes",
            controls = {
                enabled = true,
                position = "right",
                buttons = {
                    "play",
                    "step_into",
                    "step_over",
                    "step_out",
                    "step_back",
                    "run_last",
                    "terminate",
                    "disconnect",
                },
                custom_buttons = {},
            },
        },
        windows = {
            size = 0.5,
            position = "right",
            terminal = {
                size = 0.5,
                position = "left",
                -- List of debug adapters for which the terminal should be ALWAYS hidden
                -- Can also be set to "true" to never show the terminal
                hide = {},
            },
        },
        virtual_text = {
            -- Control with `DapViewVirtualTextToggle`
            enabled = true,
            -- Supported options include "inline", "eol", and "eol_right_align"
            position = "eol_right_align",
            format = function(variable, _, _)
                return " " .. variable.value
            end,
            -- Prepend the variable name (when using eol positioning)
            prefix = function(position, node, bufnr)
                if position == "eol" or position == "eol_right_align" then
                    local name = vim.treesitter.get_node_text(node, bufnr)

                    return name .. " ="
                end
            end,
            -- Add commas between variables (when using eol positioning)
            suffix = function(position, _, _, var_index, num_var_line)
                if position == "eol" or position == "eol_right_align" then
                    return var_index == num_var_line and "" or ","
                end
            end,
        },
        auto_toggle = true,
    }
}
