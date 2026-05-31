require("vim-options")
require("use-pwsh")
require("config.lazy")
require("whichkey-keys")
require("neotest").setup({
  adapters = {
    require("neotest-vstest")
  }
})
