local function warn_missing(cmd, name)
  if vim.fn.executable(cmd) == 0 then
    -- Notify once at startup if the LSP executable is missing.
    vim.schedule(function()
      vim.notify_once(("LSP not found: %s (%s)"):format(name, cmd), vim.log.levels.WARN)
    end)
  end
end

warn_missing("lua-language-server", "lua_ls")
warn_missing("bash-language-server", "bashls")

require("lsp.servers")
