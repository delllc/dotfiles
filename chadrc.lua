local M = {}


M.ui = {
   theme = "onedark",
   theme_toggle = {
     "chadracula",
     "tokyodark"
   }
}
M.plugins = {
  user = require "custom.plugins",
  options = {
    lspconfig = {
      setup_lspconf = "custom.configs.lsp-setup"
    }
  }
}

return M
