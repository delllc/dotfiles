local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {
  "html",
  "cssls",
  "emmet_ls",
  "eslint",
  "tailwindcss",
}
capabilities.textDocument.completion.completionItem.snippetSupported = true
lspconfig.emmet_ls.setup({
  capabilities = capabilities,
  filetypes = {
    "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less"
  },
})
lspconfig.cssmodules_ls.setup{
  filetypes = {
    "javascript", "javascriptreact", "typescript", "typescriptreact"
  }
}
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
