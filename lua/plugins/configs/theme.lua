local set = require("vim_interfaces/set")
local let = require("vim_interfaces/vars").let

let.g("gruvbox_transparent_bg", 1)
set("background", "dark")
set("termguicolors", true)

vim.api.nvim_exec("colorscheme gruvbox-material", false)

let.g("airline_theme", "gruvbox_material")
