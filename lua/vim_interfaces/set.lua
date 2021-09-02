return function(key, val)
  if val == nil then
    vim.o[key] = true
  else
    vim.o[key] = val
  end
end
