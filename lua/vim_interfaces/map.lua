function map_function(type, silent)
  return function(key, cmd)
    vim.api.nvim_set_keymap(type, key, cmd, {noremap = true, silent = silent})
  end
end

function lua_map_function(type, silent)
  return function(key, cmd)
    vim.api.nvim_set_keymap(type, key, "<cmd>lua "..cmd.."<CR>", {noremap = true, silent = silent})
  end

  --[[
  local silent_key = ""
  if silent then
    silent_key = "<silent>"
  end

  return function(key, cmd)
    --vim.cmd(type.."noremap "..silent_key..key.." <cmd>lua "..cmd.."<CR>")
    return type.."noremap "..silent_key..key.." <cmd>lua "..cmd.."<CR>"
  end
  ]]--
end

return {map = map_function, luamap = lua_map_function}
