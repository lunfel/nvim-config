local plugins = {
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = function ()
      require('nvim-ts-autotag').setup({

      })
    end,
    lazy = true,
    event = "VeryLazy"
  }
  -- {
  --   "alvan/vim-closetag",
    -- event = "InsertEnter",
    -- config = function ()
    --   vim.g.closetag_filenames = '*.html,*.xhtml,*.phtml,*.xml,*.jsx,*.tsx'
    --   vim.g.closetag_xhtml_filenames = '*.xhtml,*.xml,*.jsx,*.tsx'
    --   vim.g.closetag_filetypes = 'html,xhtml,phtml,xml,js,ts,jsx,tsx'
    --   vim.g.closetag_xhtml_filetypes = 'xhtml,js,ts,jsx,tsx'
    --   vim.g.closetag_emptyTags_caseSensitive = 1
    --   vim.g.closetag_regions = {
    --     ['typescript.tsx'] = 'jsxRegion,tsxRegion',
    --     ['javascript.jsx'] = 'jsxRegion'
    --   }
    --   vim.g.closetag_shortcut = '>'
    -- end
  -- }
}

-- vim.cmd([[
-- let g:closetag_filenames = '*.html,*.xhtml,*.jsx,*.tsx'
-- let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.tsx'
-- let g:closetag_filetypes = 'html,js'
-- let g:closetag_xhtml_filetype = 'xhtml,jsx,tsx'
-- let g:closetag_emptyTags_caseSensitive = 1
-- let g:closetag_regions = {
--   \ 'typescript.tsx': 'jsxRegion,tsxRegion',
--   \ 'javascript.jsx': 'jsxRegion',
--   \ }
-- let g:closetag_shortcut = '>'
-- ]])

return plugins
