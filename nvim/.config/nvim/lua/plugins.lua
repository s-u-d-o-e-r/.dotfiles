-- Plugin definition and loading
-- local execute = vim.api.nvim_command
local fn = vim.fn
local cmd = vim.cmd



-- Boostrap Packer
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
local packer_bootstrap
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone','https://github.com/wbthomason/packer.nvim', install_path})
end

-- Rerun PackerCompile everytime pluggins.lua is updated
cmd([[
augroup packer_user_config
autocmd!
autocmd BufWritePost plugins.lua source <afile> | PackerCompile
augroup end
]])

-- Load Packer
cmd([[packadd packer.nvim]])

-- Initialize pluggins
return require('packer').startup(function(use)
  -- Let Packer manage itself
  use({'wbthomason/packer.nvim', opt = true})
  -- LSP server
  use({
    'neovim/nvim-lspconfig',
    config = function() require('plugins.lspconfig') end
  })
  use 'williamboman/nvim-lsp-installer'  -- Helper for installing most language servers
  use 'RishabhRD/popfix'
  use 'RishabhRD/nvim-lsputils'
  use {'windwp/nvim-autopairs',config = function ()
    require('nvim-autopairs').setup{}
  end}
  -- Autocomplete
  use "L3MON4D3/LuaSnip"  -- Snippet engine
  use "hood/popui.nvim"
  use({
    "hrsh7th/nvim-cmp",
    -- Sources for nvim-cmp
    requires = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-nvim-lua",
      "saadparwaiz1/cmp_luasnip",
      "hrsh7th/cmp-nvim-lsp-signature-help",
      "notomo/cmp-neosnippet"
    },
    config = function() require('plugins.cmp') end,
  })
  use {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'}
  -- Telescope
  use({
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/plenary.nvim'}},
    config = function() require('plugins.telescope') end,
  })




  use({'nvim-telescope/telescope-fzf-native.nvim', run ='make'})

  use('sbdchd/neoformat')

  use('jose-elias-alvarez/null-ls.nvim')

  use 's-u-d-o-e-r/vim-gitcommit-issue-id'
  use 'ekalinin/Dockerfile.vim'
  -- "" Enable repeating supported plugin maps with '.'
  use 'tpope/vim-repeat'
  -- "" Repeat command extended to visual mode.
  use 'inkarkat/vim-visualrepeat'
  -- "" Brings physics-based smooth scrolling.
  use 'yuttie/comfortable-motion.vim'
  -- "" A dark colorscheme with vibrant colors.
  -- " use 'flrnprz/candid.vim'
  -- ""use 'mileszs/ack.vim'
  use 'tpope/vim-abolish'
  -- ""A Git wrapper
  use 'tpope/vim-fugitive'
  -- "" Fake data generator
  use 'tkhren/vim-fake'
  -- "" Buffers close menu
  use 'Asheq/close-buffers.vim'
  -- "" Switch between single-line and multiline forms of code gS - spit / gJ - join
  use 'AndrewRadev/splitjoin.vim'
  -- " Include source for coc.nvim
  -- use 'Shougo/neoinclude.vim'
  -- " " Include source for coc.nvim
  -- use 'jsfaint/coc-neoinclude'
  --  use({
  --     'neoclide/coc.nvim', branch = 'release'
  --   })
  -- " Color scheme
  -- " use 'haishanh/night-owl.vim'
  -- " " Screenshot maker
  use 'kristijanhusak/vim-carbon-now-sh'
  -- " A lightweight and powerful git branch viewer for vim.
  -- " use 'rbong/vim-flog'
  -- " A solid language pack for Vim.
  -- " use 'sheerun/vim-polyglot'
  -- " Fuzzy file, buffer, mru, tag, etc finder
  use 'ctrlpvim/ctrlp.vim'
  -- " " Lean & mean status/tabline for vim that's light as air.
  use 'bling/vim-airline'
  -- " " Themes for airline
  use 'vim-airline/vim-airline-themes'
  -- " Snippets support
  use 'Shougo/neosnippet.vim'
  -- use 'github/copilot.vim'
  -- " Default snippets
  use 'Shougo/neosnippet-snippets'
  -- " Print documents in echo area.
  use 'Shougo/echodoc.vim'
  -- " " Extended session management for Vim.
  use 'xolox/vim-session'
  -- " " Session
  -- " " Required for vim-session
  use 'xolox/vim-misc'
  -- " File extensions icons
  use 'ryanoasis/vim-devicons'
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = function() require'nvim-tree'.setup {
      hijack_cursor = false,
      view = {
        mappings = {
          custom_only = false,
          list = {
            { key = {"<CR>", "o","l" }, action = "edit", mode = "n"},
            { key = {"<BS>","h"},  action = "close_node",mode ="n" },
          },
        },
      },


    } end
  }-- " (Do)cumentation (Ge)nerator 15+ languages  Generate proper code documentation skeletons with a single keypress.
  -- " use 'kkoomen/vim-doge', { 'do': { -> doge#install() } }
  -- " Vim bundle for styled-components based javascript files.
  use({
    'styled-components/vim-styled-components', branch = 'main'
  })

  -- " A Vim plugin that provides GraphQL file detection, syntax highlighting, and indentation.
  -- " use 'jparise/vim-graphql'
  -- " Modern performant generic finder and dispatcher for Vim and NeoVim
  -- use({
  --   'liuchengxu/vim-clap',
  --   run = ':Clap install-binary!'
  -- })

  -- " Color scheme
  -- " use 'drewtempelmeyer/palenight.vim'
  -- " The undo history visualizer for VIM
  use 'mbbill/undotree'
  -- " Commentary.vim: comment stuff out 
  use 'tpope/vim-commentary'
  -- " The fancy start screen for Vim.
  -- " use 'mhinz/vim-startify'
  -- " Vim dashboard
  use 'glepnir/dashboard-nvim'
  -- " The open source plugin for productivity metrics, goals, leaderboards, and automatic time tracking.
  -- " use 'wakatime/vim-wakatime'
  -- " A Vim plugin which shows git diff markers in the sign column
  -- use 'airblade/vim-gitgutter'
  -- " Use RipGrep in Vim and display results in a quickfix list
  -- " use 'jremmen/vim-ripgrep'
  -- " Changes Vim working directory to project root (identified by presence of known directory or file).
  use 'airblade/vim-rooter'
  -- " Vim motions on speed!
  use 'easymotion/vim-easymotion'
  -- " Have Vim automatically reload a file that has changed externally
  use 'djoshea/vim-autoread'
  -- " Color scheme
  use 'joshdick/onedark.vim'
  -- " Motions to and inside git conflict markers
  use 'rhysd/conflict-marker.vim'
  -- " Vim plugin to automate replacing expressions with assigned variables in any programming language
  use 'da-x/name-assign.vim'
  -- " " VimL competition
  -- " use 'Shougo/neco-vim'
  -- " use 'neoclide/coc-neco'
  -- " " use that adds a 'cut' operation separate from 'delete'
  use 'svermeulen/vim-cutlass'
  -- " " Vim plugin that provides additional text objects
  use 'wellle/targets.vim'
  -- " Color scheme
  use 'sainnhe/gruvbox-material'
  -- "Git branch search using ctrlp.vim.
  use 'imkmf/ctrlp-branches'
  -- "emmet-vim is a vim plug-in which provides support for expanding abbreviations similar to emmet.
  use 'mattn/emmet-vim'
  -- "An always-on highlight for a unique character in every word on a line to help you use f, F and family.
  use 'unblevable/quick-scope'
  -- "sandwich.vim is a set of operator and textobject plugins to add/delete/replace surroundings of a sandwiched textobject, like (foo), 'bar'.
  use 'machakann/vim-sandwich'
  -- "Hardtime helps you break that annoying habit vimmers have of scrolling up and down the page using jjjjj and kkkkk but without compromising the rest of our vim experience.
  use 'takac/vim-hardtime'
  -- "Treesitter configurations and abstraction layer for Neovim.
  use({
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  })

  -- " We recommend updating the parsers on update
  -- "Blazing fast minimap for vim, powered by üõ∞ code-minimap written in Rust
  -- " use 'wfxr/minimap.vim'
  -- "EditorConfig plugin for Vim
  use 'editorconfig/editorconfig-vim'
  use 'haya14busa/incsearch.vim'
  use 'haya14busa/incsearch-easymotion.vim'
  use 'haya14busa/incsearch-fuzzy.vim'
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'

  -- " use 'Cybolic/palenight.vim'
  use 'arthurxavierx/vim-caser'
  -- " use 'jiangmiao/auto-pairs'
  use 'christoomey/vim-conflicted'
  use 'preservim/tagbar'
  use 'arcticicestudio/nord-vim'
  use 'rcarriga/nvim-notify'

  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup {
        current_line_blame = true,
        signs = {
          add          = {hl = 'GitSignsAdd'   , text = '▎', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
          change       = {hl = 'GitSignsChange', text = '▎', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
          delete       = {hl = 'GitSignsDelete', text = '_', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
          topdelete    = {hl = 'GitSignsDelete', text = '‾', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
          changedelete = {hl = 'GitSignsChange', text = '▎', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
        },
      }
    end
  }




  if packer_bootstrap then
    require('packer').sync()
  end
end)



