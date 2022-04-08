local fn = vim.fn

-- local Utils = require('utils')
local cmp = require('cmp')

-- local exprinoremap = Utils.exprinoremap

local function get_snippets_rtp()
  return vim.tbl_map(function(itm)
    return fn.fnamemodify(itm, ":h")
  end, vim.api.nvim_get_runtime_file(
      "package.json", true
  ))
end

local opts = {
  paths = {
    fn.stdpath('config')..'/snips/',
    get_snippets_rtp()[1],
  },
}


cmp.setup({
  -- Don't autocomplete, otherwise there is too much clutter
  -- completion = {autocomplete = { false },},

  -- Don't preselect an option
  preselect = cmp.PreselectMode.None,

  -- Snippet engine, required
  snippet = {
    expand = function(args)
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
      else
        fallback()
      end
    end,

    ['<S-Tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
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
    {name = 'nvim_lsp'},
    {name = 'nvim_lua'},
    {name = 'path'},
    {name = 'buffer'},
    {name = 'spell'},
    -- { name = 'cmp_tabnine' },
    { name = 'nvim_lsp_signature_help' },
    {name = "neosnippet"}
    -- {name = 'calc'},
  },
})

-- nvim-pairs config

-- If you want insert `(` after select function or method item
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
cmp.event:on( 'confirm_done', cmp_autopairs.on_confirm_done({  map_char = { tex = '' } }))


-- add a lisp filetype (wrap my-function), FYI: Hardcoded = { "clojure", "clojurescript", "fennel", "janet" }
cmp_autopairs.lisp[#cmp_autopairs.lisp+1] = "racket"
