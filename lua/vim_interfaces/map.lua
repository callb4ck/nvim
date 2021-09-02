function map_function(type)
  return function(key, cmd)
    vim.api.nvim_set_keymap(type, key, cmd, {noremap = true, silent = true})
  end
end

return {map = map_function}
