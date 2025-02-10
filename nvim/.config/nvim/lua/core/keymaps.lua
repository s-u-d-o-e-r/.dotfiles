local m = require('utils.keymap')
local nnoremap = m.nnoremap
local vnoremap = m.vnoremap
local xnoremap = m.xnoremap
local nmap = m.nmap
local vmap = m.vmap
local imap = m.imap
local inmap = m.inmap
local silent = { silent = true }

-- " mapping for buffers control
-- nmap("<S-H>", ":BufferPrevious<CR>", silent)
-- nmap("<S-L>", ":BufferNext<CR>", silent)

nmap("<S-H>", ":BufferLineCyclePrev<CR>", silent)
nmap("<S-L>", ":BufferLineCycleNext<CR>", silent)

nmap("<leader><leader>=", ":Neoformat<CR>", silent)
-- " save mappings
nmap("<C-S>", ":w<CR>")
imap("<C-S>", "<C-O>:w<CR>")
nmap("<C-A>", ":noa w<CR>")
imap("<C-A>", "<C-O>:noa w<CR>")
-- " Delete /Cut mapping
nnoremap("<leader>d", "d")
xnoremap("<leader>d", "d")
nnoremap("<leader>dd", "dd")
nnoremap("<leader>D", "D")
-- scroll map
nnoremap("<C-u>", "<C-u>zz")
nnoremap("<C-d>", "<C-d>zz")
-- " mapping paste
imap("<C-p>", '<C-o>"+p')
vmap('p', '"_dP')
-- " Buffers delete
nnoremap("<C-q>", ":Bdelete menu<CR>")
-- " Remapping for windows movements
nnoremap('<leader>h', ':wincmd h<CR>')
nnoremap('<leader>j', ':wincmd j<CR>')
nnoremap('<leader>k', ':wincmd k<CR>')
nnoremap('<leader>l', ':wincmd l<CR>')
nnoremap('<leader>u', ':UndotreeToggle<CR>')
nnoremap('<leader>-', ':vertical resize -5<CR>')
nnoremap('<leader>+', ':vertical resize +5<CR>')
vnoremap("<F2>", ":Ray<CR>")
nmap("gdd", ":lua require('neogen').generate()<CR>", { noremap = true, silent = true })
-- nnoremap("<F8>", ":SymbolsOutline<CR>")
-- Line swapping
-- nnoremap('<c-j>', ' :m .+1<CR>==')
-- nnoremap('<c-k>', ':m .-2<CR>==')
-- inoremap('<c-j>', '<Esc>:m .+1<CR>==gi')
-- inoremap('<c-k>', '<Esc>:m .-2<CR>==gi')
-- vnoremap('<c-j>', ":m '>+1<CR>gv=gv")
-- vnoremap('<c-k>', ":m '<-2<CR>gv=gv")
-- in lua
inmap("<ScrollWheelUp>", "<C-Y>")
inmap("<ScrollWheelDown>", "<C-E>")
