local fn = vim.fn
local luasnip = require('luasnip')
local cmp = require('cmp')
local lspkind = require("lspkind")

cmp.setup({
  -- Don't preselect an option
  preselect = cmp.PreselectMode.None,
  window = {
    documentation = cmp.config.window.bordered(),
    completion = cmp.config.window.bordered({
      winhighlight = 'Normal:CmpPmenu,CursorLine:PmenuSel,Search:None'
    }),
  },
  -- Snippet engine, required
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  -- Mappings
  mapping = {
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ["<C-u>"] = cmp.mapping.scroll_docs(-4),
    ["<C-d>"] = cmp.mapping.scroll_docs(4),
    ["<C-Space>"] = cmp.mapping.complete(),
    ['<C-n>'] = cmp.mapping.select_next_item({ behavior = require "cmp.types.cmp".SelectBehavior.Select }),
    ['<C-S-n>'] = cmp.mapping.select_prev_item({ behavior = require "cmp.types.cmp".SelectBehavior.Select }),
    ['<CR>'] = cmp.mapping.confirm({ select = false })
  },
  -- Complete options from the LSP servers and the snippet engine
  sources = {
    { name = 'nvim_lsp', },
    -- { name = 'nvim_lsp_signature_help' },
    { name = 'luasnip',},
    { name = 'path' ,},
  },
  formatting = {
    format = lspkind.cmp_format({
      mode = 'symbol_text', -- show only symbol annotations
      maxwidth = 50,        -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
      -- can also be a function to dynamically calculate max width such as
      -- maxwidth = function() return math.floor(0.45 * vim.o.columns) end,
      ellipsis_char = '...',    -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)
      show_labelDetails = true, -- show labelDetails in menu. Disabled by default
      symbol_map = {
        Copilot = "",
        Text = "󰉿",
        Method = "󰆧",
        Function = "󰊕",
        Constructor = "",
        Field = "󰜢",
        Variable = "󰀫",
        Class = "󰠱",
        Interface = "",
        Module = "",
        Property = "󰜢",
        Unit = "󰑭",
        Value = "󰎠",
        Enum = "",
        Keyword = "󰌋",
        Snippet = "",
        Color = "󰏘",
        File = "󰈙",
        Reference = "󰈇",
        Folder = "󰉋",
        EnumMember = "",
        Constant = "󰏿",
        Struct = "󰙅",
        Event = "",
        Operator = "󰆕",
        TypeParameter = "",
      },

      -- The function below will be called before any actual modifications from lspkind
      -- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
      before = function(entry, vim_item)
        return vim_item
      end
    })
  }
})

require("luasnip.loaders.from_vscode").lazy_load()
require("luasnip.loaders.from_snipmate").lazy_load()
