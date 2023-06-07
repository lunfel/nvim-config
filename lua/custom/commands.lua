local function find_anywhere_under_directory()
  local tree_api = require("nvim-tree.api")
  local telescope = require("telescope.builtin")
  --local lfs = require("lfs")
  local node = tree_api.tree.get_node_under_cursor()

  local filepath = nil
  if node ~= nil and node.absolute_path ~= nil then
    filepath = node.absolute_path
  end

  if filepath then
    -- local isDirectory = lfs.attributes(filepath, "mode") == "directory"
    local isDirectory = true
    if isDirectory then
      telescope.live_grep({ cwd = filepath })
    else
      print("Not implemented yet for files. Only directories.")
    end
  else
    print("Could not initialize with current node")
  end
end

local function rename_file()
  local source_file, target_file;

  vim.ui.input({
    prompt = "Source : ",
    completion = "file",
    default = vim.api.nvim_buf_get_name(0)
  }, function (input)
    source_file = input
  end)

  vim.ui.input({
    prompt = "Target : ",
    completion = "file",
    default = source_file
  }, function (input)
      target_file = input
    end
  )

  local params = {
    command = "_typescript.applyRenamFile",
    arguments = {
      {
        sourceUri = source_file,
        targetUri = target_file
      },
    },
    title = ""
  }

  vim.lsp.util.rename(source_file, target_file)
  vim.lsp.buf.execute_command(params)
end

M = {
  find_anywhere_under_directory = find_anywhere_under_directory
  -- rename_file = rename_file
}

return M
