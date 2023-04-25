require("telescope").load_extension('harpoon')

local nnoremap = require("utils.keymap").nnoremap

local silent = { silent = true }

nnoremap("<M-a>", function() require("harpoon.mark").add_file() end, silent)
-- nnoremap("<C-e>", function() require("harpoon.cmd-ui").toggle_quick_menu() end, silent)
nnoremap("<M-c>", function() require("harpoon.ui").toggle_quick_menu() end, silent)

nnoremap("<M-h>", function() require("harpoon.ui").nav_file(1) end, silent)
nnoremap("<M-t>", function() require("harpoon.ui").nav_file(2) end, silent)
nnoremap("<M-n>", function() require("harpoon.ui").nav_file(3) end, silent)
nnoremap("<M-s>", function() require("harpoon.ui").nav_file(4) end, silent)
