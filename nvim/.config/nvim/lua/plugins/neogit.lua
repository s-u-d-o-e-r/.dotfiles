local neogit = require('neogit')

neogit.setup {}

local nnoremap = require("utils.keymap").nnoremap

nnoremap("<leader>gn", function() neogit.open() end, { silent = true })
