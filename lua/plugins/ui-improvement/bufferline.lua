local config = function()
  require("bufferline").setup {
    options = {
      separator_style = "slant",
      themeble = true,
      -- mode = "tabs",
      underline = true,

      offsets = { {
        filetype = "neo-tree",
        text = "File Explorer",
        highlight = "Directory",
        separator = true, } },
    },
  }
end

return {
  "akinsho/bufferline.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "moll/vim-bbye",
  },
  config = config,
}
