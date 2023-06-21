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
  },
  {
    "aaronhallaert/advanced-git-search.nvim",
    version = "ah/fix_diff_branch_file_quotes",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      -- to show diff splits and open commits in browser
      "tpope/vim-fugitive",
      -- to open commits in browser with fugitive
      "tpope/vim-rhubarb",
      -- OPTIONAL: to replace the diff from fugitive with diffview.nvim
      -- (fugitive is still needed to open in browser)
      -- "sindrets/diffview.nvim",
    }
  },
  -- Removing temporarily because I am not sure it is working properly
  -- {
  --   "rmagatti/auto-session",
  --   config = function ()
  --     require("auto-session").setup {
  --       log_level = "error",
  --       auto_session_allowed_dirs = { "~/projects" }
  --     }
  --   end
  -- }
}

return plugins
