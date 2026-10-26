return {
  -- Use the project's .venv if it has one
  on_init = function(client)
    local python = (client.config.root_dir or "") .. "/.venv/bin/python"
    if vim.fn.executable(python) == 1 then
      client.settings = vim.tbl_deep_extend("force", client.settings or {}, {
        python = { pythonPath = python },
      })
      client:notify("workspace/didChangeConfiguration", { settings = client.settings })
    end
  end,
}
