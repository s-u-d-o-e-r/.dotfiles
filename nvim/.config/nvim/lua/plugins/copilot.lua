require('copilot').setup({
  panel = {
    enabled = true,
    auto_refresh = true,
    keymap = {
      open = "<M-p>"
    },
  },
  suggestion = {
    enabled = true,
    auto_trigger = true,
    hide_during_completion = false,
    keymap = {
      accept = "<M-s>",
      next = "<M-w>",
      prev = "<M-m>",
      dismiss = "<M-x>",
    },
  },
})
