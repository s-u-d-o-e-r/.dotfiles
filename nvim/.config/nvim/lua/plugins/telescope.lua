local actions = require('telescope.actions')
local custom_actions = {}
local action_state = require('telescope.actions.state')

function custom_actions.fzf_multi_select(prompt_bufnr)
  local picker = action_state.get_current_picker(prompt_bufnr)
  local num_selections = table.getn(picker:get_multi_selection())

  if num_selections > 1 then
    actions.send_selected_to_qflist(prompt_bufnr)
    actions.open_qflist()
  else
    actions.file_edit(prompt_bufnr)
  end
end

require('telescope').setup({
  defaults = {
    file_ignore_patterns = { "node_modules", ".git" },
    mappings = {
      i = {
        ['<esc>'] = actions.close,
        ['<C-j>'] = actions.move_selection_next,
        ['<C-k>'] = actions.move_selection_previous,
        ['<tab>'] = actions.toggle_selection + actions.move_selection_next,
        ['<s-tab>'] = actions.toggle_selection + actions.move_selection_previous,
        ['<cr>'] = custom_actions.fzf_multi_select,
      },
      n = {
        ['<esc>'] = actions.close,
        ['<tab>'] = actions.toggle_selection + actions.move_selection_next,
        ['<s-tab>'] = actions.toggle_selection + actions.move_selection_previous,
        ['<cr>'] = custom_actions.fzf_multi_select
      }
    },
    layout_strategy = "flex",
    layout_config = {
      flex = {
        flip_columns = 120,
      },
    },
    color_devicons = true,
		file_previewer = require("telescope.previewers").vim_buffer_cat.new,
		grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
		qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
  },
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter

      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
      -- the default case_mode is "smart_case"
    }
  }
})

require('telescope').load_extension('fzf')


local nnoremap = require("utils.keymap").nnoremap

-- "telescope
nnoremap('<leader>ff', function() require('telescope.builtin').find_files({ hidden = true }) end)
nnoremap('<leader>fg', function() require('telescope.builtin').live_grep({
  -- vimgrep_arguments = { 'rg', '--color=never', '--no-heading', '--with-filename', '--line-number', '--column', '--smart-case', '--hidden' }
})end)
nnoremap('<leader>fb', function() require('telescope.builtin').current_buffer_fuzzy_find()end)
nnoremap('<leader>fh', function() require('telescope.builtin').help_tags()end)
nnoremap('<leader>fr', function() require('telescope.builtin').resume()end)
nnoremap('<leader>fd', function() require('telescope.builtin').diagnostics()end)
nnoremap('<leader>fk', function() require('telescope.builtin').keymaps()end)
nnoremap('<leader>fc', function() require('telescope.builtin').comands()end)


