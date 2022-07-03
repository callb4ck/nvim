local language_server_list = require("language_server_list")


local saga = require "lspsaga"
local cmp = require "cmp"

local LSPs = language_server_list.lsp
local nvim_lsp = require "lspconfig"
--local coq = require("coq")
local let = require("vim_interfaces/vars").let

saga.init_lsp_saga()

cmp.setup({
    snippet = {
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
      end
    },

    mapping = {
      ['<C-d>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<Tab>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
      ['<C-j>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
      ['<C-k>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.close(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
      ['('] = cmp.mapping.confirm({ select = true }),
    },

    sources = {
      {name = "nvim_lsp"},
      {name = "vsnip"},
    }
  })


let.g("completion_matching_strategy_list", {"exact", "substring", "fuzzy"})

local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())

for _, lsp in ipairs(LSPs) do
  nvim_lsp[lsp].setup {
    flags = {
      debounce_text_changes = 150,
    },
    capabilities = capabilities
  }
end


