local fn = vim.fn
require('nvim-autopairs').setup()
-- local Utils = require('utils')
local luasnip = require('luasnip')
local cmp = require('cmp')

-- local exprinoremap = Utils.exprinoremap



cmp.setup({
  -- Don't autocomplete, otherwise there is too much clutter
  -- completion = {autocomplete = { false },},

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
    -- open/close autocomplete
    ['<C-Space>'] = function(fallback)
      if cmp.visible() then
        cmp.close()
      else
        cmp.complete()
      end
    end,

    ['<C-c>'] = cmp.mapping.close(),

    -- select completion
    ['<CR>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    }),

    ['<Tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end,

    ['<S-Tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end,

    -- Scroll documentation
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
  },

  -- Complete options from the LSP servers and the snippet engine
  sources = {
    { name = 'luasnip' },
    { name = 'path' },
    { name = 'cmp_tabnine' },
    { name = 'spell' },
    { name = 'nvim_lsp' },
    { name = 'nvim_lua' },
    { name = 'buffer' },
    { name = 'nvim_lsp_signature_help' },
    {
      name = "dictionary",
      keyword_length = 2,
    }
    -- {name = 'calc'},
  },
})

-- nvim-pairs config

-- If you want insert `(` after select function or method item
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done({ map_char = { tex = '' } }))

local tabnine = require('cmp_tabnine.config')
tabnine:setup({
  max_lines = 1000;
  max_num_results = 20;
  sort = true;
  run_on_every_keystroke = true;
  snippet_placeholder = '..';
  ignored_file_types = { -- default is not to ignore
    -- uncomment to ignore in lua:
    -- lua = true
  };
  show_prediction_strength = true;
})
require("luasnip").filetype_extend("all", { "_" })

require("luasnip.loaders.from_snipmate").lazy_load()
require("luasnip.loaders.from_vscode").lazy_load()
