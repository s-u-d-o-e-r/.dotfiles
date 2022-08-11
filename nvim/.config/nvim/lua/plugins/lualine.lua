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
    component_separators = '',
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = { { 'mode', separator = { left = '' }, right_padding = 2 } },
    lualine_b = { 'branch', 'diff' },
    lualine_c = { 'filename' },
    lualine_x = { 'filetype' },
    lualine_y = { { 'diagnostics', colored = false,
      separator = '|',
      symbols = { error = " ", warn = " ", hint = " ", info = " "

      },

    }, 'fileformat', 'encoding' },
    lualine_z = {
      { 'location', separator = { right = '' } }
    },

  },
  extensions = { 'quickfix', 'neo-tree', 'nvim-dap-ui' }
}
