local wk = require("which-key")

-- ICONS https://www.nerdfonts.com/cheat-sheet

wk.add({
    {
        "<leader>f",
        group = "Telescope",
        icon = ""
    },
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files", icon = "" },
    { "<leader>fg", "<cmd>Telescope git_files<cr>", desc = "Find Files Git", icon = "" },
    { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Find Buffers", icon = "" },
    { "<leader>ft", "<cmd>Telescope live_grep<cr>", desc = "Find Text", icon = "󰦨" },
    { "<leader>fo", "<cmd>Telescope oldfiles<cr>", desc = "Find Old Files", icon = "" },
    { "<leader>fc", "<cmd>Telescope commands<cr>", desc = "Find Commands", icon = "" },
    { "<leader>fy", "<cmd>Telescope registers<cr>", desc = "Find Registers", icon = "󰳴" },
    { "<leader>fr", "<cmd>Telescope lsp_references<cr>", desc = "Find References", icon = "" },
    { "<leader>fi", "<cmd>Telescope lsp_implementations<cr>", desc = "Find Implementations", icon = "" },
    { "<leader>fd", "<cmd>Telescope lsp_definitions<cr>", desc = "Find Definitions", icon = "" },
    { "<leader>fr", "<cmd>Telescope lsp_type_definitions<cr>", desc = "Find Types", icon = "󰛦" },
    { "<leader>fp", ":lua require'telescope'.extensions.project.project{}<CR>", desc = "Find Projects", icon = "" },
    {
        "<leader>p",
        group = "Launch",
        icon = ""
    },
    { "<leader>pv", "<cmd>Oil --float<cr>", desc = "Oil", icon = "󰉋" },
    {
        "<leader>g",
        group = "Goto",
        icon = ""
    },
    { "<leader>gg", '<cmd>lua vim.lsp.buf.hover()<cr>', desc = "Details", icon = "" },
    { "<leader>gd", '<cmd>lua vim.lsp.buf.definition()<cr>', desc = "Definition", icon = "󱛉" },
    { "<leader>go", '<cmd>lua vim.lsp.buf.declaration()<cr>', desc = "Declaration", icon = "󰺄" },
    { "<leader>gi", '<cmd>Telescope lsp_implementations<cr>', desc = "Implementations", icon = "󰭤" },
    { "<leader>gy", '<cmd>lua vim.lsp.buf.type_definition()<cr>', desc = "Type Definition", icon = "󱙼" },
    { "<leader>gr", '<cmd>Telescope lsp_references<cr>', desc = "References", icon = "" },
    { "<leader>gs", '<cmd>lua vim.lsp.buf.signature_help()<cr>', desc = "Signature Help", icon = "󰞋" },
    {
        "<leader>r",
        group = "Refactor",
        icon = "󱍷"
    },
    { "<leader>rr", '<cmd>lua vim.lsp.buf.format({async = true})<cr>', desc = "Format", icon = "󰉼" },
    { "<leader>rn", '<cmd>lua vim.lsp.buf.rename()<cr>', desc = "Rename", icon = "󰑕" },
    { "<leader>rp", '<cmd>lua vim.lsp.buf.code_action()<cr>', desc = "Code Action", icon = "" },
    { "<C-h>", '<cmd>:bprevious<cr>', desc = "Last Buffer", icon = "" },
    { "<C-l>", '<cmd>:bnext<cr>', desc = "Next Buffer", icon = "" },
    { "<leader>q", '<cmd>:bd<cr>', desc = "Close Buffer", icon = "󰅗" },
    {
        "<leader>s",
        function() require("flash").jump() end,
        mode = { "n", "x", "o" },
        desc = "Flash",
        icon = ""
    },
    {
        "<leader>t",
        group = "Test",
        icon = "󰙨"
    },
    { "<leader>ta", '<cmd>lua require("neotest").run.run({ suite = true })<cr>', desc = "All Tests", icon = "" },
    { "<leader>tf", '<cmd>lua require("neotest").run.run(vim.fn.expand("%"))<cr>', desc = "File Tests", icon = "" },
    { "<leader>tt", '<cmd>lua require("neotest").run.run()<cr>', desc = "Closest", icon = "󰮭" },
    { "<leader>td", '<cmd>lua require("neotest").run.run({strategy = "dap"})<cr>', desc = "Closest", icon = "󰃤" },
    {
        "<leader>d",
        group = "Debug/Run",
        icon = ""
    },
    { "<leader>dd", '<cmd>lua require("dap").continue()<cr>', desc = "Debug", icon = "" },
    { "<leader>dt", '<cmd>lua require("dap").toggle_breakpoint()<cr>', desc = "Toggle Breakpoint", icon = "" },
    { "<leader>dv", '<cmd>:DapViewToggle<cr>', desc = "View", icon = "󰈈" },
});

wk.add({
    mode = { "n", "v", "i" },
    {
        { "<C-c>", '"+y',  desc = "Copy Clipboard" },
        { "<C-x>", '"+d',  desc = "Cut Clipboard" },
        { "<C-v>", '"+p"', desc = "Paste Clipboard" },
    }
});
