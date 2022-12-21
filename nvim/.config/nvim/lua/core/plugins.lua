-- Plugin definition and loading
-- local execute = vim.api.nvim_command
local fn = vim.fn
local cmd = vim.cmd
-- Boostrap Packer
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
local packer_bootstrap
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({ 'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path })
end

-- setted color for quick scope plugin
vim.api.nvim_create_augroup('packer_user_config', { clear = true })
vim.api.nvim_create_autocmd('BufWritePost', {
  group = 'packer_user_config',
  pattern = 'plugins.lua',
  command = "source <afile> | PackerCompile"
})




-- Load Packer
cmd([[packadd packer.nvim]])

-- Initialize pluggins
return require('packer').startup(function(use)
  -- Let Packer manage itself
  use({ 'wbthomason/packer.nvim', opt = true })
  use 'RishabhRD/popfix'
  use 'RishabhRD/nvim-lsputils'
  -- Autocomplete
  use "L3MON4D3/LuaSnip"
  -- " Default snippets
  use({
    "hrsh7th/nvim-cmp",
    -- Sources for nvim-cmp
    requires = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-nvim-lua",
      "f3fora/cmp-spell",
      "saadparwaiz1/cmp_luasnip",
      "uga-rosa/cmp-dictionary",
      "hrsh7th/cmp-nvim-lsp-signature-help",
      -- 'windwp/nvim-autopairs'
    },
    config = function() require('plugins.cmp') end,
  })
  use { 'tzachar/cmp-tabnine', run = './install.sh', requires = 'hrsh7th/nvim-cmp' }
  -- Telescope
  use({ 'yardnsm/vim-import-cost', run = 'npm install --production' })
  use({
    'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/plenary.nvim' } },
    config = function() require('plugins.telescope') end,
  })
  use({ 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' })
  use('sbdchd/neoformat')
  use 'sudoerwx/vim-gitcommit-issue-id'
  -- "" Enable repeating supported plugin maps with '.'
  use 'tpope/vim-repeat'
  -- "" Brings physics-based smooth scrolling.
  use 'yuttie/comfortable-motion.vim'
  use 'tpope/vim-abolish'
  -- ""A Git wrapper
  use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim', config = function() require('plugins.neogit') end }
  -- "" Fake data generator
  use({
    "tkhren/vim-fake",
    config = function() require('plugins.fake') end,
  })
  -- "" Buffers close menu
  use 'Asheq/close-buffers.vim'
  -- " " Screenshot maker
  use 'sudoerwx/vim-ray-so-beautiful'
  -- " Fuzzy file, buffer, mru, tag, etc finder
  use 'ctrlpvim/ctrlp.vim'
  use {
    'nvim-lualine/lualine.nvim',
    config = function() require('plugins.lualine') end,
  }
  -- " File extensions icons
  use 'ryanoasis/vim-devicons'
  -- " The undo history visualizer for VIM
  use 'mbbill/undotree'
  -- " Changes Vim working directory to project root (identified by presence of known directory or file).
  use 'airblade/vim-rooter'
  -- " Have Vim automatically reload a file that has changed externally
  use 'djoshea/vim-autoread'
  -- " " use that adds a 'cut' operation separate from 'delete'
  use 'svermeulen/vim-cutlass'
  -- " " Vim plugin that provides additional text objects
  use 'wellle/targets.vim'
  -- " Color scheme
  use 'sainnhe/gruvbox-material'
  -- "emmet-vim is a vim plug-in which provides support for expanding abbreviations similar to emmet.
  use 'mattn/emmet-vim'
  -- "An always-on highlight for a unique character in every word on a line to help you use f, F and family.
  use 'unblevable/quick-scope'
  -- "sandwich.vim is a set of operator and textobject plugins to add/delete/replace surroundings of a sandwiched textobject, like (foo), 'bar'.
  use 'machakann/vim-sandwich'
  -- "Treesitter configurations and abstraction layer for Neovim.
  use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate', config = function() require('plugins.treesitter') end })
  -- "EditorConfig plugin for Vim
  use 'gpanders/editorconfig.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'hood/popui.nvim'
  use 'arcticicestudio/nord-vim'
  use { 'lewis6991/gitsigns.nvim', config = function() require('plugins.gitsigns') end, }
  use 'kyazdani42/nvim-web-devicons'
  use {
    'nvim-neo-tree/neo-tree.nvim',
    branch = "v2.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim"
    },
    config = function() require('plugins.neoTree') end,
  }
  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons',
    config = function() require('plugins.bufferline') end,
  }
-- Smart and powerful comment plugin for neovim. Supports treesitter, dot repeat, left-right/up-down motions, hooks, and more
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }
  use {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
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
  }
  use {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup()
    end
  }
  use { 'kamykn/spelunker.vim' }
  -- use { 'stevearc/dressing.nvim',
  --   config = function()
  --     require('plugins.dressing')
  --   end
  -- }
  use { 'mfussenegger/nvim-dap',
    requires = {
      "rcarriga/nvim-dap-ui",
      "theHamsta/nvim-dap-virtual-text"
    },

    config = function()
      require('plugins.dap')
    end
  }
  use 'dbeniamine/cheat.sh-vim'
  use { 'ThePrimeagen/harpoon', requires = {
    'nvim-lua/plenary.nvim'
  }, config = function()
    require('plugins.harpoon')
  end
  }
  use { 'emmanueltouzery/agitator.nvim',
    config = function() require('plugins.agitator')
    end
  }
  use { "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    {
      "neovim/nvim-lspconfig",
      config = function()
        require('plugins.lspconfig')
      end
    }
  }
  use "WhoIsSethDaniel/mason-tool-installer.nvim"
  use 'arthurxavierx/vim-caser'
  if packer_bootstrap then
    require('packer').sync()
  end
end)
