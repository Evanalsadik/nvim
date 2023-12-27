-- TODO : complete this config
local config = function()
  require("dap-python").setup("~/.local/share/nvim/mason/packages/debugpy/venv/bin/python")
end

return {
  "mfussenegger/nvim-dap-python",
  ft = "python", -- filetype
  dependencies = {
    "mfussenegger/nvim-dap",
    "rcarriga/nvim-dap-ui",
  },
  config = config,
}
