if vim.fn.has("mac") == 1 then
  vim.g.mkdp_browser = "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
elseif vim.fn.has("win32") == 1 then
  vim.g.mkdp_browser = "chrome.exe"
end

vim.pack.add({
  { src = "https://github.com/iamcco/markdown-preview.nvim" },
}, { load = true })
