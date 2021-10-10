local language_server_list = require("language_server_list")
local cocLSPs = language_server_list.coc

local isStandard = true
for _, x in ipairs(cocLSPs) do
  if vim.o.filetype == x then
    isStandard = false
  end
end

if isStandard then
  local LSPs = language_server_list.nvimlsp
  local nvim_lsp = require('lspconfig')
  local let = require("vim_interfaces/vars").let

  let.g("completion_matching_strategy_list", {"exact", "substring", "fuzzy"})

  for _, lsp in ipairs(LSPs) do
    nvim_lsp[lsp].setup {
      on_attach = require("completion").on_attach,
      flags = {
        debounce_text_changes = 150,
      }
    }
  end
end
