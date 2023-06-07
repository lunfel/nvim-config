local M = {}

function M.update_undo_join_when_autocompleting()
  if M.is_autocompleting then
    -- vim.cmd('undojoin')
    local success, result = pcall(vim.cmd, 'undojoin')

    if not success then
      print('Command failed: ' .. result)
    else
      print('all good')
    end
    -- print("In autocomplete, yay!")
  else
    print("Typing all day, yay!")
  end
end

M.is_autocompleting = false

return M
