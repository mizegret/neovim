-- https://www.reddit.com/r/neovim/comments/1ib53z6/best_neovim_completion_tools_in_2025/
vim.pack.add({
  { src = "https://github.com/saghen/blink.cmp" },
})

require("blink.cmp").setup({
  keymap = {
    preset = "default",
    ["<CR>"] = { "select_and_accept", "fallback" },
    ["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
    ["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
  },
})
