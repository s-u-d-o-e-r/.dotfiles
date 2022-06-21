vim.cmd([[
filetype indent plugin on
syntax on
" If you have vim >=8.0 or Neovim >= 0.1.5
if (has('termguicolors'))
  set termguicolors
endif
set clipboard=unnamedplus
set noswapfile
set autoread
set hidden
set wildmenu
set nohlsearch
set autoindent
set ruler
set confirm
set backspace=indent,eol,start
set backup
set dir=~/.config/nvim/tmp
set t_vb=
set mouse=a
set number
set relativenumber
set tabstop=2
set shiftwidth=0
set softtabstop=2
set expandtab
set cursorline
set noshowmode
set wrap
set lbr
set bg=dark
set encoding=utf-8
set guioptions-=m
set guioptions-=M
set guioptions-=T
set guioptions-=r
set guioptions-=L
set smartcase
set noruler
set laststatus=0
set noshowcmd
set undofile
set undodir=$HOME/.vim/undo
set undolevels=3000
set undoreload=10000
set backupdir=~/.local/share/nvim/backup
set nobackup
set nowritebackup
set background=dark
set stl+=%{ConflictedVersion()}

setlocal nobackup
setlocal nowritebackup

set cmdheight=1
set updatetime=300
set shortmess+=c
" Add status line support, for integration with other plugin, checkout `:h coc-status`
" set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
set statusline+=%{get(b:,'gitsigns_status','')}

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has('patch-8.1.1564')
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif


let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25


]])









vim.g.polyglot_disabled = { 'css', 'javascript', 'typescript', 'javascriptreact', 'typescriptreact' }
vim.g.netrw_fastbrowse = 0
vim.g.mapleader = ' '
-- " screenshots
vim.g.ray_options = {
  colors='candy'
}
-- "session config
vim.g.session_autoload = 'no'
vim.g.session_autosave = 'yes'
-- " vim.g.session_autosave_to = 'default'
vim.g.session_verbose_messages = 0
-- "DoGE settings
vim.g.doge_mapping = '<leader><leader>d'
-- "airline config
vim.api.nvim_set_var('airline#extensions#tabline#enabled', 1)
vim.g.airline_powerline_fonts = 1
vim.g.airline_theme = 'gruvbox_material'
--" 'gruvbox_material' "deus  nord
vim.api.nvim_set_var('airline#extensions#tabline#formatter', 'unique_tail_improved')

vim.g.airline_left_sep = ''
vim.g.airline_left_alt_sep = ''
vim.g.airline_right_sep = ''
vim.g.airline_right_alt_sep = ''

vim.g.emmetJsx = 1
-- vim.g.nord_cursor_line_number_background = 1
vim.api.nvim_set_var('$NVIM_TUI_ENABLE_TRUE_COLOR', 1)

vim.g.ctrlp_user_command = { '.git', 'cd %s && git ls-files -co --exclude-standard' }
vim.g.ctrlp_extensions = {
  'branches'
}
vim.g.ctrlp_map = '<c-p>'
vim.g.ctrlp_cmd = 'CtrlPMRU'
vim.g.gruvbox_material_statusline_style = 'mix'
vim.g.gruvbox_material_diagnostic_virtual_text = 'colored'
vim.g.gruvbox_material_transparent_background = 1
vim.g.gruvbox_material_background = 'soft'
vim.g.gruvbox_material_palette = 'mix'
vim.g.gruvbox_material_better_performance = 1

vim.g.gitgutter_sign_added = '▎'
vim.g.gitgutter_sign_modified = '▎'
vim.g.gitgutter_sign_removed = '▎'

vim.g.diffget_local_map = 'gj'
vim.g.diffget_upstream_map = 'gf'
vim.g.neoformat_only_msg_on_error = 1

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

-- vim.g.dashboard_custom_header = {
--   '',
--   '██╗   ██╗██╗███╗   ███╗',
--   '██║   ██║██║████╗ ████║',
--   '██║   ██║██║██╔████╔██║',
--   '╚██╗ ██╔╝██║██║╚██╔╝██║',
--   ' ╚████╔╝ ██║██║ ╚═╝ ██║',
--   '  ╚═══╝  ╚═╝╚═╝     ╚═╝',
--   ''
--
-- vim.g.carbon_now_sh_options = { ln = 'false',
--   fm = 'Fira Code',
--   t = 'nord' }
--   vim.g.EasyMotion_startofline = 0
-- vim.g.EasyMotion_smartcase = 1
--
-- vim.g.hardtime_default_on = 0
-- vim.g.hardtime_ignore_buffer_patterns = { 'coc-explorer', 'NERD.*' }
-- vim.g.hardtime_ignore_quickfix = 1
-- vim.g.hardtime_allow_different_key = 1
-- vim.g.material_style = 'palenight'

-- "start page
-- " vim.g.startify_session_dir = '~/.vim/sessions'
-- """"" enable 24bit true color

