return {
  {
    "mason-org/mason.nvim",
    opts = {},
  },

  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "lua_ls",
        "clangd",
        "pyright",
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("config.lsp")
    end,
  },
}
