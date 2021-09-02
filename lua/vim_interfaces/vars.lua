local let_var = {
  g = vim.api.nvim_set_var,
  b = vim.api.nvim_buf_set_var,
  w = vim.api.nvim_win_set_var,
  t = vim.api.nvim_tabpage_set_var,
  v = vim.api.nvim_set_vvar
}

local get_var = {
  g = vim.api.nvim_get_var,
  b = vim.api.nvim_buf_get_var,
  w = vim.api.nvim_win_get_var,
  t = vim.api.nvim_tabpage_get_var,
  v = vim.api.nvim_get_vvar
}

local del_var = {
  g = vim.api.nvim_del_var,
  b = vim.api.nvim_buf_del_var,
  w = vim.api.nvim_win_del_var,
  t = vim.api.nvim_tabpage_del_var,
}

return {let = let_var, get = get_var, del = del_var}
