local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath
  })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)
require('config.globals')
require('config.options')
require('config.keymaps')
require('config.autocmds')

local opts = {
  defaults = {
    lazy = false,
    version = "*",
  },
  checker = {
    enabled = true -- automatically check for plugin updates
  },
  rtp = {
    -- disable some rtp plugins
    disabled_plugins = {
      "gzip",
      "matchit",
      "matchparen",
      "netrwPlugin",
      "tarPlugin",
      "tohtml",
      "tutor",
      "zipPlugin",
    },
  },
  change_detection = {
    notify = false,
  },
}

require("lazy").setup({
  { import = "plugins" },
--   { import = "plugins.debbug-adaptor" },
  { import = "plugins.plugin" },
  { import = "plugins.standard" },
})
