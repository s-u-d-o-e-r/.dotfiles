local Utils = require('utils')

local nnoremap = Utils.nnoremap
local vnoremap = Utils.vnoremap
local xnoremap = Utils.xnoremap
local inoremap = Utils.inoremap
local noremap = Utils.noremap
local nmap = Utils.nmap
local xmap = Utils.xmap
local vmap = Utils.vmap
local omap = Utils.omap
local map = Utils.map
local imap = Utils.imap
local smap = Utils.smap




vmap("<leader>b" ,"<Plug>NameAssign")
-- " mapping for buffers control
nmap("<S-H>",":bprev<CR>")
nmap("<S-L>",":bnext<CR>")
-- " map <leader><leader>s :Startify<CR>
vnoremap("<F3>",":CarbonNowSh<CR>")
nnoremap("<F5>", ":ndotreeToggle<cr>")
-- " save mappings
nmap("<C-S>", ":w<CR>")
imap("<C-S>","<C-O>:w<CR>")
nmap("<C-A>",":noa w<CR>")
imap("<C-A>","<C-O>:noa w<CR>")
-- " Delete /Cut mapping
nnoremap("<leader>d","d")
xnoremap("<leader>d","d")
nnoremap("<leader>dd","dd")
nnoremap("<leader>D","D")
-- " mapping paste
imap("<C-p>",'<C-o>"+p')
-- "map p "_dP
vmap('p','"_dP')


nmap('<C-n>',':NvimTreeToggle<CR>')
-- " Use `[c` and `]c` to navigate diagnostics
nmap("[c","<Plug>(coc-diagnostic-prev)")
nmap("]c","<Plug>(coc-diagnostic-next)")

nmap('<F8>',':TagbarToggle<CR>')

-- -- " Remap keys for gotos
-- nmap("gd","<Plug>(coc-definition)")
-- nmap("gt","<Plug>(coc-type-definition)")
-- nmap("gi","<Plug>(coc-implementation)")
-- nmap("gr","<Plug>(coc-references)")

-- vim.api.nvim_set_keymap("i", "<TAB>", "pumvisible() ? '<C-n>' : '<TAB>'", {noremap = true, silent = true, expr = true})
-- vim.api.nvim_set_keymap("i", "<S-TAB>", "pumvisible() ? '<C-p>' : '<C-h>'", {noremap = true, expr = true})
-- " Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
-- " Coc only does snippet and additional edit on confirm.
-- vim.api.nvim_set_keymap("i", "<CR>", "pumvisible() ? coc#_select_confirm() : '<C-G>u<CR><C-R>=coc#on_enter()<CR>'", {silent = true, expr = true, noremap = true})

-- " Use K to show documentation in preview window
-- nnoremap("K",":call <SID>show_documentation()<CR>")
-- " Remap for rename current word
nmap('<leader>rn','<Plug>(coc-rename)')
-- " Remap for format selected region
xmap('<leader>f',' <Plug>(coc-format-selected)')
nmap('<leader>f',' <Plug>(coc-format-selected)')
-- " Remap for do codeAction
xmap("<leader>ac","<Plug>(coc-codeaction-selected)")
nmap("<leader>ac","<Plug>(coc-codeaction-line)")
xmap('<leader>xs',' <Plug>(coc-convert-snippet)')
-- " Fix autofix problem of current line
nmap('<leader>qf',' <Plug>(coc-fix-current)')
-- " Using CocList
-- " Show all diagnostics
nnoremap("<space>a", ":<C-u>CocList diagnostics<cr>")
-- " Manage extensions
nnoremap("<space>e",":<C-u>CocList extensions<cr>")
-- " Show commands
nnoremap("<space>c",":<C-u>CocList commands<cr>")
-- " Find symbol of current document
-- " nnoremap  <space>o  :<C-u>CocList outline<cr>
-- " Search workspace symbols
-- " nnoremap  <space>s  :<C-u>CocList -I symbols<cr>
-- " Do default action for next item.
-- " nnoremap  <space>j  :<C-u>CocNext<CR>
-- " Do default action for previous item.
-- " nnoremap  <space>k  :<C-u>CocPrev<CR>
-- " Resume latest coc list
-- " nnoremap  <space>p  :<C-u>CocListResume<CR>
map('<leader>fs',':CocCommand eslint.executeAutofix<CR>')
map('<leader>ff',":call CocAction('format')<CR>")
-- "Clap
map('<leader><leader>g',':Clap grep2<Cr>')
map('<leader><leader>f',':Clap files<CR>')
map('<leader><leader>p',':Clap providers<CR>')

-- "telescope
nnoremap('<leader><leader>tf','<cmd>Telescope find_files<cr>')
nnoremap('<leader><leader>tg','<cmd>Telescope live_grep find_command=rg,--ignore<cr>')
nnoremap('<leader>b','<cmd>Telescope buffers<cr>')
nnoremap('<leader>h','<cmd>Telescope help_tags<cr>')
-- " Buffers delete
nnoremap("<C-q>", ":Bdelete menu<CR>")
-- "easy motion

map('/','<Plug>(easymotion-sn)')
omap('/','<Plug>(easymotion-tn)')

map('<Leader>','<Plug>(easymotion-prefix)')
noremap('<expr><Space>/','incsearch#go(<SID>config_easyfuzzymotion())')
-- " noremap <expr> /  incsearch#go(<SID>incsearch_config())

-- " noremap <expr> g/ incsearch#go(<SID>incsearch_config({'is_stay': 1}))

-- " These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
-- " Without these mappings, `n` & `N` works fine. (These mappings just provide
-- " " different highlight method and have some other features )
map('n','<Plug>(easymotion-next)')
map('N','<Plug>(easymotion-prev)')
-- " <Leader>f{char} to move to {char}
map('<Leader>f','<Plug>(easymotion-bd-f)')
nmap('<Leader>f','<Plug>(easymotion-overwin-f)')
-- " s{char}{char} to move to {char}{char}
nmap('<Leader>s','<Plug>(easymotion-overwin-f2)')
-- " Move to line
-- " map <Leader>L <Plug>(easymotion-bd-jk)
-- " nmap <Leader>L <Plug>(easymotion-overwin-line)
-- " Move to word
map('<Leader>w','<Plug>(easymotion-bd-w)')
nmap('<Leader>w','<Plug>(easymotion-overwin-w)')
-- " Gif config
-- " map <Leader>l <Plug>(easymotion-lineforward)
-- " map <Leader>j <Plug>(easymotion-j)
-- " map <Leader>k <Plug>(easymotion-k)
-- " map <Leader>h <Plug>(easymotion-linebackward)
-- " Remapping for windows movements
nnoremap('<leader>h',':wincmd h<CR>')
nnoremap('<leader>j',':wincmd j<CR>')
nnoremap('<leader>k',':wincmd k<CR>')
nnoremap('<leader>l',':wincmd l<CR>')
nnoremap('<leader>u',':UndotreeShow<CR>')
nnoremap('<Leader>+',':vertical resize +5<CR>')
nnoremap('<Leader>-',':vertical resize -5<CR>')

-- " Maps for fugitive
nmap('<leader>gj',':diffget //3<CR>')
nmap('<leader>gf',':diffget //2<CR>')
-- " Coc-git keymaps
-- " navigate chunks of current buffer
nmap('[g','<Plug>(coc-git-prevchunk)')
nmap(']g','<Plug>(coc-git-nextchunk)')
-- " show chunk diff at current position
nmap('gs','<Plug>(coc-git-chunkinfo)')
-- " show commit contains current position
nmap('<leader>gc','<Plug>(coc-git-commit)')
-- " create text object for git chunks
omap('ig','<Plug>(coc-git-chunk-inner)')
xmap('ig','<Plug>(coc-git-chunk-inner)')
omap('ag','<Plug>(coc-git-chunk-outer)')
xmap('ag','<Plug>(coc-git-chunk-outer)')
-- " Map the leader key + q to toggle quick-scope's highlighting in normal/visual mode.
-- " Note that you must use nmap/xmap instead of their non-recursive versions (nnoremap/xnoremap).
nmap('<leader>q','<plug>(QuickScopeToggle)')
xmap('<leader>q','<plug>(QuickScopeToggle)')

imap('<C-k>','    <Plug>(neosnippet_expand_or_jump)')
smap('<C-k>','    <Plug>(neosnippet_expand_or_jump)')
-- " xmap <C-k>     <Plug>(neosnippet_expand_target)




nnoremap('<c-j>',' :m .+1<CR>==')
nnoremap('<c-k>',':m .-2<CR>==')
inoremap('<c-j>','<Esc>:m .+1<CR>==gi')
inoremap('<c-k>','<Esc>:m .-2<CR>==gi')
vnoremap('<c-j>',":m '>+1<CR>gv=gv")
vnoremap('<c-k>',":m '<-2<CR>gv=gv")



-- -- nnoremap <expr> <down> coc#float#has_scroll() ? coc#float#scroll(1, 1) :"\<down>"
-- -- nnoremap <expr> <up> coc#float#has_scroll() ? coc#float#scroll(0, 1) :"\<up>"
-- -- inoremap <expr> <down> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1, 1)\<cr>" :"\<down>"
-- -- inoremap <expr> <up> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0, 1)\<cr>" :"\<up>"
-- -- vnoremap <expr> <down> coc#float#has_scroll() ? coc#float#scroll(1, 1) :"\<down>"
-- -- vnoremap <expr> <up> coc#float#has_scroll() ? coc#float#scroll(0, 1) :"\<up>"


