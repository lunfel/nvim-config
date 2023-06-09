
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local rename_file = require("custom.commands").rename_file

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
  opts = function ()
    -- https://github.com/typescript-language-server/typescript-language-server
    return {
      preferences = {
        importModuleSpecifierPreference = "non-relative"
      }
    }
  end
  --filetypes = {"typescriptreact"},
  --root_dir = lspconfig.util.root_pattern("package.json"),
  --cmd = {'typescript-language-server', '--stdio'},
  -- commands = {
  --   RenameFile = {
  --     rename_file,
  --     description = "Lsp Rename File"
  --   }
  -- }
})

lspconfig.html.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  -- filetypes = {"typescriptreact"}
})

lspconfig.phpactor.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  -- formatting = {
  --   enable = false,
  --   tabSize = 4
  -- },
})

-- lspconfig.intelephense.setup({
--   on_attach = on_attach,
--   capabilities = capabilities,
--   formatting = {
--     enable = false,
--     tabSize = 4
--   },
--   settings = {
--     intelephense = {
--       formatting = {
--         tabSize = 4
--       }
--     }
--   }
-- })
