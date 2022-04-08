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
nnoremap("<F5>", ":UndotreeToggle<cr>")
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


nmap('<C-n>',':Neotree toggle=true reveal=true<CR>')

nmap('<F8>',':TagbarToggle<CR>')

-- "telescope
nnoremap('<leader><leader>f','<cmd>Telescope find_files<cr>')
nnoremap('<leader><leader>g','<cmd>Telescope live_grep find_command=rg,--ignore<cr>')
nnoremap('<leader>b','<cmd>Telescope buffers<cr>')
nnoremap('<leader>h','<cmd>Telescope help_tags<cr>')
-- " Buffers delete
nnoremap("<C-q>", ":Bdelete menu<CR>")
-- "easy motion

map('/','<Plug>(easymotion-sn)')
omap('/','<Plug>(easymotion-tn)')

map('<Leader>','<Plug>(easymotion-prefix)')
noremap('<expr><Space>/','incsearch#go(<SID>config_easyfuzzymotion())')


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
-- " Move to word
map('<Leader>w','<Plug>(easymotion-bd-w)')
nmap('<Leader>w','<Plug>(easymotion-overwin-w)')

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

imap('<C-k>','    <Plug>(neosnippet_expand_or_jump)')
smap('<C-k>','    <Plug>(neosnippet_expand_or_jump)')
-- " xmap <C-k>     <Plug>(neosnippet_expand_target)


-- nnoremap('<c-j>',' :m .+1<CR>==')
-- nnoremap('<c-k>',':m .-2<CR>==')
-- inoremap('<c-j>','<Esc>:m .+1<CR>==gi')
-- inoremap('<c-k>','<Esc>:m .-2<CR>==gi')
-- vnoremap('<c-j>',":m '>+1<CR>gv=gv")
-- vnoremap('<c-k>',":m '<-2<CR>gv=gv")

