local noremap = require("vim_interfaces/map").map("n")
local inoremap = require("vim_interfaces/map").map("i")

noremap("ù", ":tabe~/.config/nvim/<enter>")
noremap("+", "A<esc>")
noremap("è", "I<esc>")
inoremap("<c-d>", "<esc>ddi")
noremap("<c-s>", ":w<enter>")
noremap("<c-z>", "u")
inoremap("<c-z>", "<esc>ui")
noremap("ò", ":tabp<enter>")
noremap("à", ":tabn<enter>")
noremap("<c-d>", "ld0h")
noremap("<c-p>", ":w !tee ~/tempvimfile.txt<enter>")
noremap("<c-n>", ":tabe ~/tempvimfile.txt<enter>")
noremap("<c-f>", ":set invnumber<enter>:set invrelativenumber<enter>")
noremap("<tab>", ":NERDTreeToggle<enter>")
noremap("ff", "<plug>NERDCommenterComment")

vim.cmd([[
:command Fix ALEFix

:command LiveServer   Bracey
:command StopServer   BraceyStop
:command ReloadServer BraceyReload
]])
