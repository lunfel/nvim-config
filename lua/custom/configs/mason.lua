# Pick from the right column: https://github.com/williamboman/mason-lspconfig.nvim/blob/main/doc/server-mapping.md
local extra_lsp = {
  "typescript-language-server",
  "rust-analyzer",
  "bash-language-server",
  "dockerfile-language-server",
  "docker-compose-language-service",
  "eslint-lsp",
  "html-lsp",
  "json-lsp",
  "spectral-language-server", -- open api
  "psalm", -- php
  "phpactor",
  "vetur-vls",
  "lemminx", -- xml
  "yaml-language-server"
}

return extra_lsp
