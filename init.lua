require("vim-options")
require("use-pwsh")
require("config.lazy")
require("oil").setup()
require("whichkey-keys")
require("bufferline").setup()
require("neotest").setup({
  adapters = {
    require("neotest-vstest")
  }
})
