require("config.lsp.diagnostics")

local attach = require("config.lsp.attach")
local capabilities = require('blink.cmp').get_lsp_capabilities()

local servers = {
  lua_ls = require("config.lsp.servers.lua_ls"),
  clangd = require("config.lsp.servers.clangd"),
  pyright = require("config.lsp.servers.pyright"),
}

for name, config in pairs(servers) do
  config.on_attach = attach
  config.capabilities = capabilities

  vim.lsp.config(name, config)
  vim.lsp.enable(name)
end
