-----------------------------------------------------------
-- General Neovim settings and configuration
-----------------------------------------------------------

-- Default options are not included
-- See: https://neovim.io/doc/user/vim_diff.html
-- [2] Defaults - *nvim-defaults*

local g = vim.g -- Global variables
local opt = vim.opt -- Set options (global/buffer/windows-scoped)

-----------------------------------------------------------
-- General
-----------------------------------------------------------
opt.mouse = 'a' -- Enable mouse support
opt.clipboard = 'unnamedplus' -- Copy/paste to system clipboard
opt.swapfile = false -- Don't use swapfile
opt.completeopt = 'menuone,noinsert,noselect' -- Autocomplete options

-----------------------------------------------------------
-- Neovim UI
-----------------------------------------------------------
opt.number = true -- Show line number
opt.showmatch = true -- Highlight matching parenthesis
opt.foldmethod = 'marker' -- Enable folding (default 'foldmarker')
opt.colorcolumn = '80' -- Line lenght marker at 80 columns
opt.splitright = true -- Vertical split to the right
opt.splitbelow = true -- Horizontal split to the bottom
opt.ignorecase = true -- Ignore case letters when search
opt.smartcase = true -- Ignore lowercase for the whole pattern
opt.linebreak = true -- Wrap on word boundary
opt.termguicolors = true -- Enable 24-bit RGB colors
opt.laststatus = 0 -- Set global statusline
opt.wrap = true
opt.relativenumber = true
opt.cursorline = true
opt.bg = "dark"
opt.ruler = false
-----------------------------------------------------------
-- Tabs, indent
-----------------------------------------------------------
opt.expandtab = true -- Use spaces instead of tabs
opt.shiftwidth = 0 -- Shift 4 spaces when tab
opt.tabstop = 2 -- 1 tab == 4 spaces
opt.softtabstop = 2 -- 1 tab == 4 spaces
opt.smartindent = true -- Autoindent new lines
opt.smartcase = true
opt.ignorecase = true
-----------------------------------------------------------
-- Memory, CPU
-----------------------------------------------------------
opt.hidden = true -- Enable background buffers
opt.history = 100 -- Remember N lines in history
opt.lazyredraw = true -- Faster scrolling
opt.synmaxcol = 240 -- Max column for syntax highlight
opt.updatetime = 300 -- ms to wait for trigger an event

-----------------------------------------------------------
-- Startup
-----------------------------------------------------------
opt.shortmess:append({ c = true })

-------

opt.wildmenu = true
opt.hlsearch = false
opt.confirm = true
opt.showmode = false
opt.showcmd = false
opt.undofile = true
opt.backup = false
opt.writebackup = false
opt.undolevels = 3000
opt.undoreload = 10000
opt.background = "dark"
opt.cmdheight = 1





g.mapleader = ' '
-- " screenshots
g.ray_options = {
  colors = 'candy'
}
-- "session config
-- g.session_autoload = 'no'
-- g.session_autosave = 'yes'
-- " g.session_autosave_to = 'default'
-- g.session_verbose_messages = 0
-- "DoGE settings
-- g.doge_mapping = '<leader><leader>d'
-- "airline config
g.airline_powerline_fonts = 1
g.airline_theme = 'gruvbox_material'
--" 'gruvbox_material' "deus  nord

-- g.airline_left_sep = ''
-- g.airline_left_alt_sep = ''
-- g.airline_right_sep = ''
-- g.airline_right_alt_sep = ''

g.emmetJsx = 1
-- g.nord_cursor_line_number_background = 1
vim.api.nvim_set_var('$NVIM_TUI_ENABLE_TRUE_COLOR', 1)

g.ctrlp_user_command = { '.git', 'cd %s && git ls-files -co --exclude-standard' }
g.ctrlp_extensions = {
  'branches'
}
g.ctrlp_map = '<c-p>'
g.ctrlp_cmd = 'CtrlPMRU'
g.gruvbox_material_statusline_style = 'mix'
g.gruvbox_material_diagnostic_virtual_text = 'colored'
g.gruvbox_material_transparent_background = 1
g.gruvbox_material_background = 'soft'
g.gruvbox_material_palette = 'mix'
g.gruvbox_material_better_performance = 1

g.gitgutter_sign_added = '▎'
g.gitgutter_sign_modified = '▎'
g.gitgutter_sign_removed = '▎'

g.diffget_local_map = 'gj'
g.diffget_upstream_map = 'gf'
g.neoformat_only_msg_on_error = 1

vim.diagnostic.config({
  virtual_text = {
    severity = { vim.diagnostic.severity.ERROR, vim.diagnostic.severity.WARN },
    source = "always", -- Or "if_many"
  },
  signs = true,
  underline = true,
  update_in_insert = true,
  severity_sort = true,
  float = {
    source = "always", -- Or "if_many"
  },
})

-- vim.ui.select = require"popui.ui-overrider"
-- vim.ui.input = require"popui.input-overrider"
-- vim.notify = require("notify")
--

-- g.dashboard_custom_header = {
--   '',
--   '██╗   ██╗██╗███╗   ███╗',
--   '██║   ██║██║████╗ ████║',
--   '██║   ██║██║██╔████╔██║',
--   '╚██╗ ██╔╝██║██║╚██╔╝██║',
--   ' ╚████╔╝ ██║██║ ╚═╝ ██║',
--   '  ╚═══╝  ╚═╝╚═╝     ╚═╝',
--   ''
--
-- g.carbon_now_sh_options = { ln = 'false',
--   fm = 'Fira Code',
--   t = 'nord' }
--   g.EasyMotion_startofline = 0
-- g.EasyMotion_smartcase = 1
--
-- g.hardtime_default_on = 0
-- g.hardtime_ignore_buffer_patterns = { 'coc-explorer', 'NERD.*' }
-- g.hardtime_ignore_quickfix = 1
-- g.hardtime_allow_different_key = 1
-- g.material_style = 'palenight'

-- "start page
-- " g.startify_session_dir = '~/.vim/sessions'
-- """"" enable 24bit true color
-- g.polyglot_disabled = { 'css', 'javascript', 'typescript', 'javascriptreact', 'typescriptreact' }
