require("lazy").setup({
  {
    'rebelot/kanagawa.nvim',
    config = function()
      require('kanagawa').setup({
        compile = false, -- enable compiling the colorscheme
        undercurl = true, -- enable undercurls
        commentStyle = { italic = true },
        functionStyle = {},
        keywordStyle = { italic = true },
        statementStyle = { bold = true },
        typeStyle = {},
        transparent = true, -- do not set background color
        dimInactive = false, -- dim inactive window `:h hl-NormalNC`
        terminalColors = true, -- define vim.g.terminal_color_{0,17}
        colors = {
                           -- add/modify theme and palette colors
          palette = {},
          theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
        },
        overrides = function(colors) -- add/modify highlights
          return {}
        end,
        theme = "wave", -- Load "wave" theme when 'background' option is not set
        background = {
                       -- map the value of 'background' option to a theme
          dark = "wave", -- try "dragon" !
          light = "lotus"
        },
      })
    end
  },
  'RishabhRD/popfix',
  'RishabhRD/nvim-lsputils',
  "L3MON4D3/LuaSnip",
  {
    "rsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-nvim-lua",
      "f3fora/cmp-spell",
      "saadparwaiz1/cmp_luasnip",
      "uga-rosa/cmp-dictionary",
      "hrsh7th/cmp-nvim-lsp-signature-help",
    },
    config = function() require('plugins.cmp') end,
  },

  {
    'nvim-telescope/telescope.nvim',
    dependencies = { { 'nvim-lua/plenary.nvim' } },
    config = function() require('plugins.telescope') end,
  },
  { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
  'sbdchd/neoformat',
  'sudoerwx/vim-gitcommit-issue-id',

  'tpope/vim-repeat',

  'yuttie/comfortable-motion.vim',
  'tpope/vim-abolish',
  {
    'TimUntersberger/neogit',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require(
        'plugins.neogit')
    end
  },
  { 'sindrets/diffview.nvim',                   dependencies = { 'nvim-lua/plenary.nvim' } },
  { 'tpope/vim-fugitive' },


  {
    "tkhren/vim-fake",
    config = function() require('plugins.fake') end,
  },

  'Asheq/close-buffers.vim',

  'sudoerwx/vim-ray-so-beautiful',

  'ctrlpvim/ctrlp.vim',
  {
    'nvim-lualine/lualine.nvim',
    config = function() require('plugins.lualine') end,
  },

  'ryanoasis/vim-devicons',

  'mbbill/undotree',

  'airblade/vim-rooter',

  'djoshea/vim-autoread',

  'svermeulen/vim-cutlass',

  'wellle/targets.vim',

  'sainnhe/gruvbox-material',

  'unblevable/quick-scope',

  'machakann/vim-sandwich',
  {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
      require(
        'plugins.treesitter')
    end
  },

  'gpanders/editorconfig.nvim',
  'nvim-lua/plenary.nvim',
  'hood/popui.nvim',
  'shaunsingh/nord.nvim',
  { 'lewis6991/gitsigns.nvim', config = function() require('plugins.gitsigns') end, },
  'nvim-tree/nvim-web-devicons',
  {
    'nvim-neo-tree/neo-tree.nvim',
    branch = "v2.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim"
    },
    config = function() require('plugins.neoTree') end,
  },
  {
    'akinsho/bufferline.nvim',
    tag = "v3.*",
    config = function()
      require(
        'plugins.bufferline')
    end,
  },
  {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  },
  {
    "folke/todo-comments.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {
        colors = {
          error = { "#DB4B4B", "DiagnosticError", "ErrorMsg", "#DC2626" },
          warning = { "#E0AF68", "DiagnosticWarning", "WarningMsg", "#FBBF24" },
          info = { "#0EB9D7", "DiagnosticInfo", "#2563EB" },
          hint = { "#12B981", "DiagnosticHint", "#10B981" },
          default = { "#A387D8", "Identifier", "#7C3AED" },
        },
        keywords = {
          FIX = {
            alt = { "fixme", "bug", "fixit", "issue" },
          },
          TODO = { alt = { "todo" } },
          HACK = { alt = { "hack" } },
          WARN = { alt = { "warn", "warning", "xxx" } },
          PERF = { alt = { "perf", "optim", "performance", "optimize" } },
          NOTE = { alt = { "note", "info" } },
        },
      }
    end
  },
  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup({ '*' }, { css = true })
    end
  },
  { 'kamykn/spelunker.vim' },






  {
    'ThePrimeagen/harpoon',
    dependencies = {
      'nvim-lua/plenary.nvim'
    },
    config = function()
      require('plugins.harpoon')
    end
  },
  {
    'emmanueltouzery/agitator.nvim',
    config = function()
      require('plugins.agitator')
    end
  },
  { "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    {
      "neovim/nvim-lspconfig",
      config = function()
        require('plugins.lspconfig')
      end
    }
  },
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  'arthurxavierx/vim-caser',
  {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
})
