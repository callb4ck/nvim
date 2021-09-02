local set = require("vim_interfaces/set")

set("number")
set("relativenumber")
set("wrap", false)
set("expandtab")
set("tabstop", 4)
set("softtabstop", 4)
set("expandtab")
set("mouse", "a")
set("updatetime", 300)

require "plugins"
require "mappings"
require "autocmds"

vim.cmd("retab")
