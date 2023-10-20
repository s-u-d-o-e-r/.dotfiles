local fn = vim.fn
local luasnip = require('luasnip')
local cmp = require('cmp')

cmp.setup({
  -- Don't preselect an option
  preselect = cmp.PreselectMode.None,
  -- Snippet engine, required
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  -- Mappings
  mapping = {
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ["<C-u>"] = cmp.mapping.scroll_docs( -4),
    ["<C-d>"] = cmp.mapping.scroll_docs(4),
    ["<C-Space>"] = cmp.mapping.complete(),
    ['<C-n>'] = cmp.mapping.select_next_item({ behavior = require "cmp.types.cmp".SelectBehavior.Select }),
    ['<C-S-n>'] = cmp.mapping.select_prev_item({ behavior = require "cmp.types.cmp".SelectBehavior.Select }),
    ['<CR>'] = cmp.mapping.confirm({ select = false })
  },
  -- Complete options from the LSP servers and the snippet engine
  sources = {
    { name = 'nvim_lsp' },
    { name = 'nvim_lsp_signature_help' },
    { name = 'luasnip' },
    { name = 'path' },
  },
})

require("luasnip.loaders.from_vscode").lazy_load()
require("luasnip.loaders.from_snipmate").lazy_load()
