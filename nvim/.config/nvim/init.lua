require('viml')
require('options')
require('keymaps')
require('plugins')
require('themes')

local saga = require 'lspsaga'
saga.init_lsp_saga()


require'nvim-treesitter.configs'.setup {
  ensure_installed ="maintained",
  highlight = {
    enable = true, 
    additional_vim_regex_highlighting=true,
  }
}
vim.notify = require("notify")
vim.cmd [[autocmd! CursorHold * lua vim.diagnostic.open_float(nil, {focus=false, scope="cursor"})]]
local signs = { Error = "", Warn = "", Hint = "", Info = "" }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

