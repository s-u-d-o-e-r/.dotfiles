-- Keymap functions


function map(mode, lhs, rhs)
        vim.api.nvim_set_keymap(mode, lhs, rhs, {silent =  true})
end

function noremap(mode, lhs, rhs)
        vim.api.nvim_set_keymap(mode, lhs, rhs, {noremap = true, })
end

function exprnoremap(mode, lhs, rhs)
        vim.api.nvim_set_keymap(mode, lhs, rhs, {noremap = true,  expr = true})
end

local M = {}

-- Useful mode-specific shortcuts
-- nomenclature: "<expr?><mode><nore?>map(lhs, rhs)" where:
--      "expr?" optional expr option
--      "nore?" optional no-remap option
--      modes -> 'n' = NORMAL, 'i' = INSERT, 'x' = 'VISUAL', 'v' = VISUAL + SELECT, 't' = TERMINAL

function M.map(lhs, rhs) map('', lhs, rhs) end
function M.noremap(lhs, rhs) noremap('', lhs, rhs) end
function M.exprnoremap(lhs, rhs) exprnoremap('', lhs, rhs) end
function M.nmap(lhs, rhs) map('n', lhs, rhs) end
function M.xmap(lhs, rhs) map('x', lhs, rhs) end
function M.vmap(lhs, rhs) map('v', lhs, rhs) end
function M.omap(lhs, rhs) map('o', lhs, rhs) end
function M.imap(lhs, rhs) map('i', lhs, rhs) end
function M.smap(lhs, rhs) map('s', lhs, rhs) end
function M.nnoremap(lhs, rhs) noremap('n', lhs, rhs) end
function M.vnoremap(lhs, rhs) noremap('v', lhs, rhs) end
function M.xnoremap(lhs, rhs) noremap('x', lhs, rhs) end
function M.inoremap(lhs, rhs) noremap('i', lhs, rhs) end
function M.tnoremap(lhs, rhs) noremap('t', lhs, rhs) end
function M.exprnnoremap(lhs, rhs) exprnoremap('n', lhs, rhs) end
function M.exprinoremap(lhs, rhs) exprnoremap('i', lhs, rhs) end

return M

