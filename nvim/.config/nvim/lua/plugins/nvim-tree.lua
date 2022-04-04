local function custom_callback(callback_name)
    return string.format(":lua require('plugins.treeutils').%s()<CR>", callback_name)
end

require'nvim-tree'.setup {
  hijack_cursor = false,
  hijack_directories = {
    enable = false,
    auto_open = false,
  },
  view = {
    mappings = {
      custom_only = false,
      list = {
        { key = {"<CR>", "o","l" }, action = "edit", mode = "n"},
        { key = {"<BS>","h"},  action = "close_node",mode ="n" },
        { key = "<leader><leader>f", cb = custom_callback "launch_find_files" },
        { key = "<leader><leader>g", cb = custom_callback "launch_live_grep" },
      },
    },
  },
}
