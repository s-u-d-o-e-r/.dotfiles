local m = require('utils.keymap')

local nnoremap = m.nnoremap
local inoremap = m.inoremap
local vnoremap = m.vnoremap
local xnoremap = m.xnoremap
local nmap = m.nmap
local vmap = m.vmap
local imap = m.imap

local silent = { silent = true }

-- " mapping for buffers control
nmap("<S-H>", ":BufferPrevious<CR>", silent)
nmap("<S-L>", ":BufferNext<CR>", silent)
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
-- " mapping paste
imap("<C-p>", '<C-o>"+p')
vmap('p', '"_dP')


nmap('<C-n>', ':Neotree toggle=true reveal=true<CR>', silent)

-- "telescope
nnoremap('<leader>ff', function() require('telescope.builtin').find_files({ hidden = true }) end)
nnoremap('<leader>fg', function() require('telescope.builtin').live_grep({
  -- vimgrep_arguments = { 'rg', '--color=never', '--no-heading', '--with-filename', '--line-number', '--column', '--smart-case', '--hidden' }
})end)
nnoremap('<leader>fb', function() require('telescope.builtin').current_buffer_fuzzy_find()end)
nnoremap('<leader>fh', function() require('telescope.builtin').help_tags()end)
nnoremap('<leader>fr', function() require('telescope.builtin').resume()end)
nnoremap('<leader>fd', function() require('telescope.builtin').diagnostics()end)
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

vnoremap("<F2>", ":CarbonNowSh<CR>")
-- nnoremap("<F8>", ":SymbolsOutline<CR>")

-- nnoremap('<c-j>', ' :m .+1<CR>==')
-- nnoremap('<c-k>', ':m .-2<CR>==')
-- inoremap('<c-j>', '<Esc>:m .+1<CR>==gi')
-- inoremap('<c-k>', '<Esc>:m .-2<CR>==gi')
-- vnoremap('<c-j>', ":m '>+1<CR>gv=gv")
-- vnoremap('<c-k>', ":m '<-2<CR>gv=gv")
