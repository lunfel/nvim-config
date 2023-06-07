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
