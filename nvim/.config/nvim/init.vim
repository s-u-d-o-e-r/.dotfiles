call plug#begin('~/.vim/plugged')
    Plug 's-u-d-o-e-r/vim-gitcommit-issue-id'
    Plug 'ekalinin/Dockerfile.vim'
    "" Enable repeating supported plugin maps with '.'
    Plug 'tpope/vim-repeat'
    "" Repeat command extended to visual mode.
    Plug 'inkarkat/vim-visualrepeat'
    "" Brings physics-based smooth scrolling
    Plug 'yuttie/comfortable-motion.vim'
    "" A dark colorscheme with vibrant colors
    " Plug 'flrnprz/candid.vim'
    ""Plug 'mileszs/ack.vim'
    Plug 'tpope/vim-abolish'
    ""A Git wrapper
    Plug 'tpope/vim-fugitive'
    "" Fake data generator
    Plug 'tkhren/vim-fake'
    "" Buffers close menu
    Plug 'Asheq/close-buffers.vim'
    "" Switch between single-line and multiline forms of code gS - spit / gJ - join
    Plug 'AndrewRadev/splitjoin.vim'
    Plug 'junegunn/fzf' , { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    " Include source for coc.nvim
    Plug 'Shougo/neoinclude.vim'
    " " Include source for coc.nvim
    Plug 'jsfaint/coc-neoinclude'
    Plug 'neoclide/coc.nvim',   {'branch': 'release'}
    " Color scheme
    " Plug 'haishanh/night-owl.vim'
    " " Screenshot maker
    Plug 'kristijanhusak/vim-carbon-now-sh'
    " A lightweight and powerful git branch viewer for vim.
    " Plug 'rbong/vim-flog'
    " A solid language pack for Vim.
    " Plug 'sheerun/vim-polyglot'
    " Fuzzy file, buffer, mru, tag, etc finder
    Plug 'ctrlpvim/ctrlp.vim'
    " " Lean & mean status/tabline for vim that's light as air
    Plug 'bling/vim-airline'
    " " Themes for airline
    Plug 'vim-airline/vim-airline-themes'
    " Snippets support
    Plug 'Shougo/neosnippet.vim'
    " Plug 'github/copilot.vim'
    " Default snippets
    Plug 'Shougo/neosnippet-snippets'
    " Print documents in echo area.
    Plug 'Shougo/echodoc.vim'
    " " Extended session management for Vim
    Plug 'xolox/vim-session'
    " " Session
    " " Required for vim-session
    Plug 'xolox/vim-misc'
    " File extensions icons
    Plug 'ryanoasis/vim-devicons'
    " (Do)cumentation (Ge)nerator 15+ languages  Generate proper code documentation skeletons with a single keypress.
    " Plug 'kkoomen/vim-doge', { 'do': { -> doge#install() } }
    " Vim bundle for styled-components based javascript files.
    Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
    " A Vim plugin that provides GraphQL file detection, syntax highlighting, and indentation.
    " Plug 'jparise/vim-graphql'
    " Modern performant generic finder and dispatcher for Vim and NeoVim
    Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' } "{ 'do': { -> clap#installer#force_download() } }
    " Color scheme
    " Plug 'drewtempelmeyer/palenight.vim'
    " The undo history visualizer for VIM
    Plug 'mbbill/undotree'
    " Commentary.vim: comment stuff out 
    Plug 'tpope/vim-commentary'
    " The fancy start screen for Vim.
    " Plug 'mhinz/vim-startify'
    " Vim dashboard
    Plug 'glepnir/dashboard-nvim'
    " The open source plugin for productivity metrics, goals, leaderboards, and automatic time tracking.
    " Plug 'wakatime/vim-wakatime'
    " A Vim plugin which shows git diff markers in the sign column
    Plug 'airblade/vim-gitgutter'
    " Use RipGrep in Vim and display results in a quickfix list
    " Plug 'jremmen/vim-ripgrep'
    " Changes Vim working directory to project root (i dentified by presence of known directory or file).
    Plug 'airblade/vim-rooter'
    " Vim motions on speed!
    Plug 'easymotion/vim-easymotion'
    " Have Vim automatically reload a file that has changed externally
    Plug 'djoshea/vim-autoread'
    " Plugin manager for coc
    Plug 'theoldmoon0602/coc-plug'
    " Color scheme
    Plug 'joshdick/onedark.vim'
    " Motions to and inside git conflict markers
    Plug 'rhysd/conflict-marker.vim'
    " Vim plugin to automate replacing expressions with assigned variables in any programming language
    Plug 'da-x/name-assign.vim'
    " " VimL competition
    " Plug 'Shougo/neco-vim'
    " Plug 'neoclide/coc-neco'
    " " Plugin that adds a 'cut' operation separate from 'delete'
    Plug 'svermeulen/vim-cutlass'
    " " Vim plugin that provides additional text objects
    Plug 'wellle/targets.vim'
    " Color scheme
    Plug 'sainnhe/gruvbox-material'
    "Git branch search using ctrlp.vim.
    Plug 'imkmf/ctrlp-branches'
    "emmet-vim is a vim plug-in which provides support for expanding abbreviations similar to emmet.
    Plug 'mattn/emmet-vim'
    "An always-on highlight for a unique character in every word on a line to help you use f, F and family.
    Plug 'unblevable/quick-scope'
    "sandwich.vim is a set of operator and textobject plugins to add/delete/replace surroundings of a sandwiched textobject, like (foo), 'bar'.
    Plug 'machakann/vim-sandwich'
    "Hardtime helps you break that annoying habit vimmers have of scrolling up and down the page using jjjjj and kkkkk but without compromising the rest of our vim experience.
    Plug 'takac/vim-hardtime'
    "Treesitter configurations and abstraction layer for Neovim.
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
    "Blazing fast minimap for vim, powered by 🛰 code-minimap written in Rust
    " Plug 'wfxr/minimap.vim'
    "EditorConfig plugin for Vim
    Plug 'editorconfig/editorconfig-vim'
    Plug 'haya14busa/incsearch.vim'
    Plug 'haya14busa/incsearch-easymotion.vim'
    Plug 'haya14busa/incsearch-fuzzy.vim'
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    " Plug 'nvim-telescope/telescope.nvim'
    Plug 'yaegassy/coc-jsdoc', {'do': 'yarn install --frozen-lockfile'}
    " Plug 'Cybolic/palenight.vim'
    Plug 'arthurxavierx/vim-caser'
    " Plug 'jiangmiao/auto-pairs'
    Plug 'christoomey/vim-conflicted'
    Plug 'preservim/tagbar'
    Plug 'arcticicestudio/nord-vim'
    " Plug 'rcarriga/nvim-notify'
    " Plug 'nvim-treesitter/playground'
call plug#end()

 call coc_plug#begin()
    CocPlug 'coc-yank'
    CocPlug 'coc-word'
    CocPlug 'coc-spell-checker'
    CocPlug 'coc-snippets'
    CocPlug 'coc-prettier'
    CocPlug 'coc-neosnippet'
    CocPlug 'coc-marketplace'
    CocPlug 'coc-lists'
    CocPlug 'coc-jest'
    CocPlug 'coc-java'
    CocPlug 'coc-highlight'
    CocPlug 'coc-git'
    CocPlug 'coc-explorer'
    CocPlug 'coc-eslint'
    CocPlug 'coc-emoji'
    CocPlug 'coc-emmet'
    CocPlug 'coc-diagnostic'
    CocPlug 'coc-calc'
    CocPlug 'coc-actions'
    CocPlug 'coc-xml'
    CocPlug 'coc-tsserver'
    CocPlug 'coc-svg'
    CocPlug 'coc-markdownlint'
    CocPlug 'coc-json'
    CocPlug 'coc-html'
    CocPlug 'coc-css' 
    CocPlug 'coc-flow'
    CocPlug 'coc-import-cost'
    CocPlug 'coc-pairs'
    CocPlug 'coc-cssmodules'
    CocPlug 'coc-htmlhint'
    CocPlug 'coc-scssmodules'
    CocPlug 'coc-lightbulb'
call coc_plug#end()





"
"
"
" ===================  Stuff that should be before let and set =======================
"
"
""


function! s:project_name()
  let l:cwd = resolve(getcwd())
  let l:cwd = substitute(l:cwd, '^'.$HOME.'/', '', '')
  let l:cwd = fnamemodify(l:cwd, ':p:gs?/?_?')
  let l:cwd = substitute(l:cwd, '^\.', '', '')
  return l:cwd
endfunction



" setted color for quick scope plugin
augroup qs_colors
 autocmd!
  autocmd ColorScheme * highlight QuickScopePrimary guibg='#434C5E' gui=underline cterm=underline
  autocmd ColorScheme * highlight QuickScopeSecondary  gui=underline cterm=underline
augroup END

""
"
"
" ===================  Let =======================
"
"
"

" PYTHON PROVIDERS {{{

if has('macunix')

" OSX

let g:python3_host_prog = '/usr/local/bin/python3' " -- Set python 3 provider

let g:python_host_prog = '/usr/local/bin/python2' " --- Set python 2 provider

elseif has('unix')

" Ubuntu

let g:python3_host_prog = '/usr/bin/python3' " -------- Set python 3 provider

let g:python_host_prog = '/usr/bin/python' " ---------- Set python 2 provider

elseif has('win32') || has('win64')

" Window

endif

" }}}


  let g:clap_layout = { 'relative': 'editor' }
  let g:dashboard_custom_header= [
        \'',
        \'██╗   ██╗██╗███╗   ███╗',
        \'██║   ██║██║████╗ ████║',
        \'██║   ██║██║██╔████╔██║',
        \'╚██╗ ██╔╝██║██║╚██╔╝██║',
        \' ╚████╔╝ ██║██║ ╚═╝ ██║',
        \'  ╚═══╝  ╚═╝╚═╝     ╚═╝',
        \''
        \]


let g:polyglot_disabled = ['css', 'javascript', 'typescript', 'javascriptreact','typescriptreact']
let g:netrw_fastbrowse = 0
let mapleader = ' '
" screenshots
let g:carbon_now_sh_options =
\ { 'ln': 'false',
\ 'fm': 'Fira Code',
\ 't':'nord'}
"session config
let g:session_autoload = 'no'
let g:session_autosave = 'yes'
let g:session_autosave_to = fnameescape(s:project_name()) 
" let g:session_autosave_to = 'default'
let g:session_verbose_messages = 0
"DoGE settings
let g:doge_mapping = '<leader><leader>d'
" echodoc configs
let g:echodoc#enable_at_startup = 1
let g:echodoc#type = 'popup'
"start page
" let g:startify_session_dir = '~/.vim/sessions'
""""" enable 24bit true color

"airline config
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme= 'gruvbox_material' " 'gruvbox_material' "deus  nord
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

let g:emmetJsx = 1
let g:clap_insert_mode_only = 'true'
let g:EasyMotion_startofline = 0 
let g:EasyMotion_smartcase = 1
let g:nord_cursor_line_number_background = 1
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_extensions = [
\ 'branches',
\ ]
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMRU'

 let g:hardtime_default_on = 0
 let g:hardtime_ignore_buffer_patterns = [ 'coc-explorer', 'NERD.*' ]
 let g:hardtime_ignore_quickfix = 1
 let g:hardtime_allow_different_key = 1

let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.5 } }

let g:material_style = 'palenight'

let g:gruvbox_material_statusline_style = 'mix'
let g:gruvbox_material_diagnostic_virtual_text = 'colored'
let g:gruvbox_material_transparent_background = 1
let g:gruvbox_material_background = 'soft'
let g:gruvbox_material_palette= "mix"
let g:gruvbox_material_better_performance = 1

let g:diffget_local_map = 'gj'
let g:diffget_upstream_map = 'gf'

colorscheme gruvbox-material "gruvbox-material "night-owl  nord onedark candid palenight gruvbox-material

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
set nowrap
set nolbr
set bg=dark
set encoding=utf-8
scriptencoding utf-8
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
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has('patch-8.1.1564')
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif


"
"
"
"
" ===================== Functions ==========================
"
"
"
"
"
"
""


function! s:setupConflicted()
     set stl+=%{ConflictedVersion()}
     " Resolve and move to next conflicted file.
     nnoremap ]m :GitNextConflict<cr>
 endfunction

" Now possible to do fg to find with grep in directory
function s:coc_list_current_dir(args)
  let node_info = CocAction('runCommand', 'explorer.getNodeInfo', 0)
  if node_info isnot v:null && node_info['expandable']
    execute 'Clap 'a:args . ' ' . node_info['fullpath']
  else
    execute 'Clap 'a:args . ' ' . fnamemodify(node_info['fullpath'], ':h')
  endif
endfunction

function s:init_explorer()
  nmap <buffer> <Leader>fg :call <SID>coc_list_current_dir('grep2')<CR>
  nmap <buffer> <Leader>fp :call <SID>coc_list_current_dir('providers')<CR>
  nmap <buffer> <Leader>ff :call <SID>coc_list_current_dir('files')<CR>
endfunction


function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command ]} "'--preview', '~/.vim/plugged/fzf.vim/bin/preview.sh {}'
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

function! s:config_easyfuzzymotion(...) abort
  return extend(copy({
  \   'converters': [incsearch#config#fuzzyword#converter()],
  \   'modules': [incsearch#config#easymotion#module({'overwin': 1})],
  \   'keymap': {"\<CR>": '<Over>(easymotion)'},
  \   'is_expr': 0,
  \   'is_stay': 1
  \ }), get(a:, 1, {}))
endfunction
" function! s:incsearch_config(...) abort
"   return incsearch#util#deepextend(deepcopy({
"   \   'modules': [incsearch#config#easymotion#module({'overwin': 1})],
"   \   'keymap': {
"   \     "\<CR>": '<Over>(easymotion)'
"   \   },
"   \   'is_expr': 0
"   \ }), get(a:, 1, {}))
" endfunction





"
"
"
" ====================== Map ========================
"
"
"
"



vmap <leader>b <Plug>NameAssign
" mapping for buffers control
nmap <S-H> :bprev<CR>
nmap <S-L> :bnext<CR>
" map <leader><leader>s :Startify<CR>
vnoremap <F3> :CarbonNowSh<CR>
nnoremap <F5> :UndotreeToggle<cr>
" save mappings
nmap <C-S> :w<CR> 
imap <C-S> <C-O>:w<CR>
nmap <C-A> :noa w<CR>  
imap <C-A> <C-O>:noa w<CR>
" Delete /Cut mapping
nnoremap <leader>d d
xnoremap <leader>d d
nnoremap <leader>dd dd
nnoremap <leader>D D
" mapping paste
imap <C-p> <C-o>"+p
"map p "_dP
vmap p "_dP

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

nmap <C-n> :CocCommand explorer<CR>
" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

nmap <F8> :TagbarToggle<CR>

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gt <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>
" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)
" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
" Remap for do codeAction
xmap <silent> <leader>ac <Plug>(coc-codeaction-selected)
nmap <silent> <leader>ac  <Plug>(coc-codeaction-line)
xmap <leader>xs  <Plug>(coc-convert-snippet)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)
" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
" nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
" nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
" nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
" nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
" nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
map <leader>fs :CocCommand eslint.executeAutofix<CR>
map <silent> <leader>ff :call CocAction('format')<CR>
"Clap
map <leader><leader>g :Clap grep2<Cr>
map <leader><leader>f :Clap files<CR>
map <leader><leader>p :Clap providers<CR>

"telescope
" nnoremap<leader><leader>tf <cmd>Telescope find_files<cr>
" nnoremap <leader><leader>tg <cmd>Telescope live_grep find_command=rg,--ignore<cr>
" nnoremap <leader>b <cmd>Telescope buffers<cr>
" nnoremap <leader>h <cmd>Telescope help_tags<cr>
" Buffers delete
nnoremap <silent> <C-q> :Bdelete menu<CR>
"easy motion

map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

map <Leader> <Plug>(easymotion-prefix)
noremap <silent><expr><Space>/ incsearch#go(<SID>config_easyfuzzymotion())
" noremap <silent><expr> /  incsearch#go(<SID>incsearch_config())

" noremap <silent><expr> g/ incsearch#go(<SID>incsearch_config({'is_stay': 1}))

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" " different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)
" s{char}{char} to move to {char}{char}
nmap <Leader>s <Plug>(easymotion-overwin-f2)
" Move to line
" map <Leader>L <Plug>(easymotion-bd-jk)
" nmap <Leader>L <Plug>(easymotion-overwin-line)
" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)
" Gif config
" map <Leader>l <Plug>(easymotion-lineforward)
" map <Leader>j <Plug>(easymotion-j)
" map <Leader>k <Plug>(easymotion-k)
" map <Leader>h <Plug>(easymotion-linebackward)
" Remapping for windows movements
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>

" Maps for fugitive
nmap <leader>gj :diffget //3<CR>
nmap <leader>gf :diffget //2<CR>
" Coc-git keymaps
" navigate chunks of current buffer
nmap [g <Plug>(coc-git-prevchunk)
nmap ]g <Plug>(coc-git-nextchunk)
" show chunk diff at current position
nmap gs <Plug>(coc-git-chunkinfo)
" show commit contains current position
nmap <leader>gc <Plug>(coc-git-commit)
" create text object for git chunks
omap ig <Plug>(coc-git-chunk-inner)
xmap ig <Plug>(coc-git-chunk-inner)
omap ag <Plug>(coc-git-chunk-outer)
xmap ag <Plug>(coc-git-chunk-outer)
" Map the leader key + q to toggle quick-scope's highlighting in normal/visual mode.
" Note that you must use nmap/xmap instead of their non-recursive versions (nnoremap/xnoremap).
nmap <leader>q <plug>(QuickScopeToggle)
xmap <leader>q <plug>(QuickScopeToggle)

imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
" xmap <C-k>     <Plug>(neosnippet_expand_target)




nnoremap  <c-j>  :m .+1<CR>==
nnoremap  <c-k> :m .-2<CR>==
inoremap  <c-j> <Esc>:m .+1<CR>==gi
inoremap  <c-k> <Esc>:m .-2<CR>==gi
vnoremap  <c-j> :m '>+1<CR>gv=gv
vnoremap  <c-k> :m '<-2<CR>gv=gv



nnoremap <silent><expr> <down> coc#float#has_scroll() ? coc#float#scroll(1, 1) :"\<down>" 
nnoremap <silent><expr> <up> coc#float#has_scroll() ? coc#float#scroll(0, 1) :"\<up>" 
inoremap <silent><expr> <down> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1, 1)\<cr>" :"\<down>" 
inoremap <silent><expr> <up> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0, 1)\<cr>" :"\<up>" 
vnoremap <silent><expr> <down> coc#float#has_scroll() ? coc#float#scroll(1, 1) :"\<down>" 
vnoremap <silent><expr> <up> coc#float#has_scroll() ? coc#float#scroll(0, 1) :"\<up>" 

"
"
"
"
" ==================== Augroup =====================
"
"
"
"
"
""
augroup mygroup



 au GUIEnter * simalt ~x
 au BufNewFile,BufRead *.ejs set filetype=html

 autocmd FileType scss setl iskeyword+=@-@

"  autocmd CursorHold * silent syntax sync fromstart

"  " Highlight symbol under cursor on CursorHold (colors )
 autocmd CursorHold * silent call CocActionAsync('highlight')

 autocmd!
 " Setup formatexpr specified filetype(s).
 " autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
 " Update signature help on jump placeholder
 autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')

autocmd FileType apache setlocal commentstring=#\ %s


" autocmd CursorMoved,CursorMovedI,BufEnter *
" \   if exists('*IsStyledDefinition') |
" \     if IsStyledDefinition(line('.')) && g:emmetJsx |
" \       call coc#config('emmet.includeLanguages', { 'javascript': 'css' } ) |
" \       let g:emmetJsx = 0 |
" \     elseif !IsStyledDefinition(line('.')) && !g:emmetJsx |
" \       call coc#config('emmet.includeLanguages', { 'javascript': 'javascriptreact' } ) |
" \       let g:emmetJsx = 1 |
" \     endif |
" \   endif

autocmd CursorMoved,BufEnter *
\   if &filetype == 'coc-explorer' |
\     execute 'norm 0' |
\   endif




  autocmd CmdLineEnter : let g:prev_hls = &hlsearch
  autocmd CmdLineChanged : let g:cmd = getcmdline() |
\  if g:cmd =~# '^%\\?S.*/' |
\    let g:splitcmd = split(g:cmd, '/') |
\    let g:search_pat = len(g:splitcmd) >= 2 ? substitute(join(g:splitcmd[0:1], '/'), '^%', '', '') : '' |
\    if !empty(g:search_pat) |
\      try |
\        silent exec 'norm \<Cmd>set hls|0verbose ' . g:search_pat . '/\<CR>' |
\        catch /^Vim\%((\a\+)\)\=:E/ |
\      endtry |
\      silent exec 'norm N' |
\      redraw! |
\    endif |
\  endif
  autocmd CmdLineLeave : let &hlsearch = g:prev_hls
" au BufWritePost * nested checktime %

autocmd FileType coc-explorer call <SID>init_explorer()

autocmd User VimConflicted call s:setupConflicted()

augroup end



"
"
"
"
"
" ========================== Comands ===================
"
"
"
"
"
"

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

command! -nargs=* -bang Rg call RipgrepFzf(<q-args>, <bang>0)




"
"
"
"
"
" ==================== Call ====================
"
"
"
"
"
"
"

" Fake

" Choose a random element from a list
call fake#define('sex', 'fake#choice(["male", "female"])')

" Get a name of male or female
" fake#int(1) returns 0 or 1
call fake#define('name', 'fake#int(1) ? fake#gen("male_name")'
                                  \ . ' : fake#gen("female_name")')

" Get a full name
call fake#define('fullname', 'fake#gen("name") . " " . fake#gen("surname")')

" Get a nonsense text like Lorem ipsum
call fake#define('sentense', 'fake#capitalize('
                        \ . 'join(map(range(fake#int(3,15)),"fake#gen(\"nonsense\")"))'
                        \ . ' . fake#chars(1,"..............!?"))')

call fake#define('paragraph', 'join(map(range(fake#int(3,10)),"fake#gen(\"sentense\")"))')

" Alias
call fake#define('lipsum', 'fake#gen("paragraph")')

" Get an age weighted by generation distribution
call fake#define('age', 'float2nr(floor(110 * fake#betapdf(1.0, 1.45)))')

" Get a domain (ordered by number of websites)
call fake#define('gtld', 'fake#get(fake#load("gtld"),'
                        \ . 'fake#betapdf(0.2, 3.0))')

call fake#define('email', 'tolower(substitute(printf("%s@%s.%s",'
                        \ . 'fake#gen("name"),'
                        \ . 'fake#gen("surname"),'
                        \ . 'fake#gen("gtld")), "\\s", "-", "g"))')



"
"
"
"===================== Highlight ========================
"
"
"

" Git conflict markers settings
highlight ConflictMarkerBegin guibg=#2f7366
highlight ConflictMarkerOurs guibg=#2e5049
highlight ConflictMarkerTheirs guibg=#344f69
highlight ConflictMarkerEnd guibg=#2f628e

"hi link EasyMotionTarget ErrorMsg
hi link EasyMotionShade  Comment

hi link EasyMotionTarget2First MatchParen
hi link EasyMotionTarget2Second MatchParen

hi link EasyMotionMoveHL Search
hi link EasyMotionIncSearch Search

hi SignColumn guibg=none
hi CursorLineNR guibg=None
hi CursorLine guibg=None
highlight Normal guibg=none
highlight LineNr guifg=#5eacd3
highlight netrwDir guifg=#5eacd3
highlight qfFileName guifg=#aed75f
" hi TelescopeBorder guifg=#5eacd
hi HighlightedyankRegion term=bold ctermbg=0 guibg=#EEE8A9



lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed ="maintained",
  highlight = {
  enable = true, 
  additional_vim_regex_highlighting=true,
  }
}
EOF

" vim.notify = require("notify")
