-----------------------------------------------------------
-- Autocommand functions
-----------------------------------------------------------

-- Define autocommands with Lua APIs
-- See: h:api-autocmd, h:augroup

local augroup = vim.api.nvim_create_augroup -- Create/get autocommand group
local autocmd = vim.api.nvim_create_autocmd -- Create autocommand


-- Format on save
autocmd('BufWritePre', {
  pattern = '*',
  command = "Neoformat"
})

autocmd('CursorHold', {
  pattern = '*',
  callback = function()
    for _, winid in pairs(vim.api.nvim_tabpage_list_wins(0)) do
      if vim.api.nvim_win_get_config(winid).zindex then
        return
      end
    end
    vim.diagnostic.open_float(nil, { focus = false, scope = "line" })
  end
})


augroup('import_cost_auto_run', { clear = true })
autocmd({ 'InsertLeave', 'BufWrite', 'BufEnter' }, {
  group = 'import_cost_auto_run',
  pattern = { '*.js', '*.jsx', '*.ts', '*.tsx' },
  command = 'ImportCost'
})


-- Highlight on yank
augroup('YankHighlight', { clear = true })
autocmd('TextYankPost', {
  group = 'YankHighlight',
  callback = function()
    vim.highlight.on_yank({ higroup = 'HighlightedyankRegion', timeout = '700' })
  end
})


-- setted color for quick scope plugin
augroup('qs_colors', { clear = true })
autocmd('ColorScheme', {
  group = 'qs_colors',
  command = "highlight QuickScopePrimary guibg='#434C5E' gui=underline cterm=underline"
})
autocmd('ColorScheme', {
  group = 'qs_colors',
  command = "highlight QuickScopeSecondary  gui=underline cterm=underline"
})

autocmd('CursorMoved,BufEnter', {
  pattern = '*',
  callback = function()
    if vim.bo.filetype == 'neo-tree' then
      vim.api.nvim_command('norm 0')
    end
  end
})


local signs = { Error = "", Warn = "", Hint = "", Info = "" }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end




--
-- vim.cmd([[
--
-- "
-- " function! s:project_name()
-- " let l:cwd = resolve(getcwd())
-- " let l:cwd = substitute(l:cwd, '^'.$HOME.'/', '', '')
-- " let l:cwd = fnamemodify(l:cwd, ':p:gs?/?_?')
-- " let l:cwd = substitute(l:cwd, '^\.', '', '')
-- " return l:cwd
-- " endfunction
--
--
--
-- " let g:session_autosave_to = fnameescape(s:project_name())
-- "
-- " function! s:setupConflicted()
-- " set stl+=%{ConflictedVersion()}
-- " " Resolve and move to next conflicted file.
-- " nnoremap ]m :GitNextConflict<cr>
-- " endfunction
-- "
-- " function! s:check_back_space() abort
-- " let col = col('.') - 1
-- " return !col || getline('.')[col - 1]  =~ '\s'
-- " endfunction
--   augroup mygroup
--
--   autocmd CmdLineEnter : let g:prev_hls = &hlsearch
--   autocmd CmdLineChanged : let g:cmd = getcmdline() |
--   \  if g:cmd =~# '^%\\?S.*/' |
--   \    let g:splitcmd = split(g:cmd, '/') |
--   \    let g:search_pat = len(g:splitcmd) >= 2 ? substitute(join(g:splitcmd[0:1], '/'), '^%', '', '') : '' |
--   \    if !empty(g:search_pat) |
--   \      try |
--   \        silent exec 'norm \<Cmd>set hls|0verbose ' . g:search_pat . '/\<CR>' |
--   \        catch /^Vim\%((\a\+)\)\=:E/ |
--   \      endtry |
--   \      silent exec 'norm N' |
--   \      redraw! |
--   \    endif |
--   \  endif
--   autocmd CmdLineLeave : let &hlsearch = g:prev_hls
--   augroup end
--
--    ]])
--


-- "
-- " function! s:config_easyfuzzymotion(...) abort
-- " return extend(copy({
-- "   \   'converters': [incsearch#config#fuzzyword#converter()],
-- "   \   'modules': [incsearch#config#easymotion#module({'overwin': 1})],
-- "   \   'keymap': {"\<CR>": '<Over>(easymotion)'},
-- "   \   'is_expr': 0,
-- "   \   'is_stay': 1
-- "   \ }), get(a:, 1, {}))
-- "   endfunction
-- "
