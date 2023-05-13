
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

lspconfig.rust_analyzer.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"rust"},
  root_dir = lspconfig.util.root_pattern("Cargo.toml"),
})

lspconfig.tsserver.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"typescriptreact"},
  root_dir = lspconfig.util.root_pattern("package.json"),
  cmd = {'typescript-language-server', '--stdio'},
})

--[[
lspconfig.intelephense.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  formatting = {
    enable = false,
    tabSize = 4
  },
  settings = {
    intelephense = {
      formatting = {
        tabSize = 4
      }
    }
  },
  filetypes = {"php"},
  root_dir = lspconfig.util.root_pattern("composer.json"),
})
]]--
