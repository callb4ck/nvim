local nnoremap = require("vim_interfaces/map").map("n", true)
local inoremap = require("vim_interfaces/map").map("i", true)

local lua_nnoremap = require("vim_interfaces/map").luamap("n", false)
local lua_vnoremap = require("vim_interfaces/map").luamap("v", false)

nnoremap("ù", ":tabe~/.config/nvim/<enter>")
nnoremap("+", "A<esc>")
nnoremap("è", "I<esc>")
inoremap("<c-d>", "<esc>ddi")
nnoremap("<c-s>", ":w<enter>")
nnoremap("<c-z>", "u")
inoremap("<c-z>", "<esc>ui")
nnoremap("ò", ":tabp<enter>")
nnoremap("à", ":tabn<enter>")
nnoremap("<c-d>", "ld0h")
nnoremap("<c-p>", ":w !tee ~/tempvimfile.txt<enter>")
nnoremap("<c-n>", ":tabe ~/tempvimfile.txt<enter>")
nnoremap("<c-f>", ":set invnumber<enter>:set invrelativenumber<enter>")
nnoremap("<tab>", ":NERDTreeToggle<enter>")
nnoremap("ff", "<plug>NERDCommenterComment")

lua_nnoremap("K", "require('lspsaga.hover').render_hover_doc()")
lua_nnoremap("<c-k>", "require('lspsaga.provider').preview_definition()")

vim.cmd([[
:command Fix ALEFix

:command Rename lua require('lspsaga.rename').rename()

:command LiveServer   Bracey
:command StopServer   BraceyStop
:command ReloadServer BraceyReload
]])
