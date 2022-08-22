return {
  ["Pocco81/AutoSave.nvim"] = {
    config = [[require("custom.configs.autosave")]]
  },
  ["rcarriga/nvim-notify"] = {
  },
  ["andweeb/presence.nvim"] = {
    config = [[require("custom.configs.presence")]]
  },
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  ["williamboman/mason.nvim"] = {
      ensure_installed = {
        -- lua stuff
        "lua-language-server",
        "stylua",

        -- web dev
        "css-lsp",
        "html-lsp",
        "typescript-language-server",
        "deno",
        "emmet-ls",
        "json-lsp",

        -- shell
        "shfmt",
        "shellcheck",
      },
    },
}

