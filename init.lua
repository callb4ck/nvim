local set = require("vim_interfaces/set")
local let = require("vim_interfaces/vars").let

set("number")
set("relativenumber")
set("wrap", false)
set("expandtab")
set("tabstop", 4)
set("softtabstop", 4)
set("expandtab")
set("shell", "/bin/sh")
set("mouse", "a")
set("updatetime", 300)

require "plugins"
require "mappings"

vim.cmd("retab")
