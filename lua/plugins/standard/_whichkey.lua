local config = function()
  local wk = require("which-key")
  wk.register({
      --[[ c = {
        name = "Placeholder",
        r = { "Placeholder" }
      }, ]]
      f = {
        name = " Telescope",
        c = { "Find String Under Cursor" },
        f = { "Find File" },
        k = { "Find Keymaps" },
        r = { "Find Recent File" },
        s = { "Find String" },
      },
      S = {
        name = " Search & Replace",
        r = { "Write Down The Word" }
      },
      g = {
        name = " LSP",
        a = { "See Available Code Actions" },
        b = { "Show Buffer Diagnostics" },
        D = { "Go to declaration" },
        d = { "Show LSP Definitions" },
        i = { "Show LSP Implementations" },
        K = { "Show Documentation For What Is Under Cursor" },
        L = { "Show LSP References" },
        l = { "Show Line Diagnostics" },
        m = { "Go To Previous Diagnostic" },
        n = { "Go To Next Diagnostic" },
        R = { "Restart LSP" },
        r = { "Smart Rename" },
        y = { "Show LSP Type Definitions" },
      },
      b = {
        name = " Buffer Settings",
        b = { "Switch Buffer" },
        d = { "Delete Buffer" },
        n = { "Next Buffer" },
        p = { "Previous Buffer" },
        q = { "Pick And Delete Buffer" },
      },
      s = {
        name = " Windows Management",
        e = { "Split Window Equal" },
        h = { "Split Window Horizontal" },
        m = { "Maximize/Minimize A Window" },
        v = { "Split Window Vertically" },
        x = { "Close Current Window" },
      },
      L = {
        name = " Live Server",
        s = { "Start Live Server" },
        c = { "Stop Live Server" },
      },
      t = {
        name = " Terminal",
        f = { "Floating Terminal" },
        h = { "Horizontal Terminal" },
        v = { "Vertical Terminal" },
      }
    },
    { prefix = "<leader>" })
end

local init = function()
  vim.o.timeout = true
  vim.o.timeoutlen = 300
end


return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = init,
  opts = {
    mode = "n",
    prefix = "",
    buffer = nil,
    silent = true,
    noremap = true,
    nowait = false,
    expr = false,
  },
  config = config,
}
