local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "zbirenbaum/copilot.lua" },                   -- or zbirenbaum/copilot.lua
      { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
    },
    opts = {
      -- See Configuration section for options
    },
    -- See Commands section for default commands if you want to lazy load on them
  },
  -- {
  --   "zbirenbaum/copilot-cmp",
  --   config = function()
  --     require("copilot_cmp").setup()
  --   end
  -- },

  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    config = function()
      require("plugins.copilot")
    end,
  },
  -- 'github/copilot.vim',
  -- },
  -- {
  --   "zbirenbaum/copilot.lua",
  --   cmd = "Copilot",
  --   e
  --   config = function()
  --     require("plugins.copilot")
  --   end
  -- },
  'onsails/lspkind.nvim',
  'RishabhRD/popfix',
  'RishabhRD/nvim-lsputils',
  'HiPhish/rainbow-delimiters.nvim',
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},
    config = function()
      local highlight = {
        "RainbowRed",
        "RainbowYellow",
        "RainbowBlue",
        "RainbowOrange",
        "RainbowGreen",
        "RainbowViolet",
        "RainbowCyan",
      }
      local hooks = require "ibl.hooks"
      -- create the highlight groups in the highlight setup hook, so they are reset
      -- every time the colorscheme changes
      hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
        vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
        vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
        vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
        vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
        vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
        vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
        vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
      end)

      vim.g.rainbow_delimiters = { highlight = highlight }
      require("ibl").setup { scope = { highlight = highlight } }

      hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
    end
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-nvim-lua",
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
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    build =
    'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
  },
  'sbdchd/neoformat',
  'sudoerwx/vim-gitcommit-issue-id',

  'tpope/vim-repeat',

  -- 'yuttie/comfortable-motion.vim',
  'tpope/vim-abolish',
  {
    'NeogitOrg/neogit',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('plugins.neogit')
    end
  },
  { 'sindrets/diffview.nvim', dependencies = { 'nvim-lua/plenary.nvim' } },
  { 'tpope/vim-fugitive' },
  'Asheq/close-buffers.vim',
  'sudoerwx/vim-ray-so-beautiful',
  {
    'nvim-lualine/lualine.nvim',
    config = function() require('plugins.lualine') end,
  },
  'ryanoasis/vim-devicons',
  'mbbill/undotree',
  'airblade/vim-rooter',
  {
    "gbprod/cutlass.nvim",
    opts = {
      -- your configuration comes here
      -- or don't set opts to use the default settings
      -- refer to the configuration section below
    }
  },

  'wellle/targets.vim',


  'unblevable/quick-scope',

  'machakann/vim-sandwich',
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
      require(
        'plugins.treesitter')
    end,
  },
  {
    "danymat/neogen",
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = true,
    -- Uncomment next line if you want to follow only stable versions
    -- version = "*"
  },
  'gpanders/editorconfig.nvim',
  'nvim-lua/plenary.nvim',
  'hood/popui.nvim',
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
  -- Colorschemes
  --


  -- 'sainnhe/gruvbox-material',


  {
    'rebelot/kanagawa.nvim',
    priority = 1000,
    lazy = false,
    config = function()
      require('kanagawa').setup({
        compile = true,   -- enable compiling the colorscheme
        undercurl = true, -- enable undercurls
        commentStyle = { italic = true },
        functionStyle = {},
        keywordStyle = { italic = true },
        statementStyle = { bold = true },
        typeStyle = {},
        transparent = true,    -- do not set background color
        dimInactive = false,   -- dim inactive window `:h hl-NormalNC`
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
      -- vim.cmd([[colorscheme kanagawa]])
    end
  },

  -- 'shaunsingh/nord.nvim',

  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        transparent_background = true, -- disables setting the background color.
      })
    end
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      require("tokyonight").setup({
        transparent = true, -- Enable this to disable setting the background color
        terminal_colors = true,
        styles = {
          sidebars = "transparent",
          floats = "transparent",
        },
        on_colors = function(hl, c)
          hl.LineNr = { fg = '#5eacd3', }
        end

      })
    end

  },
  --
  -- {
  --   'AlexvZyl/nordic.nvim',
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     require 'nordic'.load()
  --   end
  -- },
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "mxsdev/nvim-dap-vscode-js",
      "rcarriga/nvim-dap-ui",
      "nvim-neotest/nvim-nio",
      "theHamsta/nvim-dap-virtual-text"
    },
    config = function()
      require('plugins.dap')
    end
  },
})
