vim.pack.add({
  { src = "https://github.com/stevearc/conform.nvim" },
})

require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
  },
  format_on_save = function(bufnr)
    local ft = vim.bo[bufnr].filetype
    if ft == "lua" then
      return { timeout_ms = 1000 }
    end
    return nil
  end,
  lsp_fallback = false,
})
