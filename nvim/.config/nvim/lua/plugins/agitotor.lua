local ag = require('agitator')
local nnoremap = require("utils.keymap").nnoremap

nnoremap("<leader>gt", function() ag.git_time_machine() end, { silent = true })
nnoremap("<leader>gb", function() ag.git_blame() end, { silent = true })
