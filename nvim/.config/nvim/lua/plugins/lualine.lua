local new_auto = require 'lualine.themes.auto'

new_auto.normal.c.bg = 'transparent'
new_auto.inactive.c.bg = 'transparent'
new_auto.insert.c.bg = 'transparent'
new_auto.visual.c.bg = 'transparent'
new_auto.replace.c.bg = 'transparent'



require('lualine').setup {
  options = {
    globalstatus = true,
    theme = new_auto,
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = { { 'mode', separator = { left = '', --[[ right = '' ]] }, right_padding = 2 } },
    lualine_b = { 'branch', 'diff' },
    lualine_c = { 'filename' },
    lualine_x = { 'filetype' },
    lualine_y = { 'fileformat', 'encoding' },
    lualine_z = {
      { 'diagnostics', separator = { right = '' } }, { 'location', separator = { right = '' } }
    },

  },
  extensions = { 'quickfix', 'neo-tree', 'nvim-dap-ui' }
}
