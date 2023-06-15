local M = {}

local commands = require("custom.commands")
--local custom_commands = require "custom.commands"

M.general = {
  n = {
    ["gs"] = { "^", "Go to first non-blank character in line" },
    ["gl"] = { "$", "Go to last character in line" },
    ["<C-u>"] = { "<C-i>", "Previous on jumplist" },
    ["<C-i>"] = { "<C-o>", "Next on jumplist" },
    -- ["<C-l>"] = {
    --   function ()
    --     require("nvchad_ui.tabufline").tabuflineNext()
    --   end,
    --   "goto next buffer"
    -- },
    -- ["<C-h>"] = {
    --   function ()
    --     require("nvchad_ui.tabufline").tabuflinePrev()
    --   end,
    --   "goto prev buffer"
    -- }
    ["<leader>mc"] = { "<cmd> Telescope git_bcommits <CR>", "git commits (buffer)" },
    ["<leader>mb"] = { "<cmd> Telescope git_branches <CR>", "git branches" },
    ["<leader>mt"] = { "<cmd> Telescope git_branches <CR>", "git branches" },
    ["<leader>ma"] = { "<cmd> Telescope advanced_git_search diff_branch_file <CR>", "git diff buffer with branch"}
  },
  v = {
    ["gs"] = { "^", "Go to first non-blank character in line" },
    ["gl"] = { "$", "Go to last character in line" },
  }
}

M.nvimtree = {
  plugin = true,
  n = {
    ["<leader>s"] = {
      commands.find_anywhere_under_directory,
      "Find anywhere under directory"
    }
  }
}

return M
