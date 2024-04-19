local config = function()
  require'nvim-ts-autotag'
end

return {
	"windwp/nvim-ts-autotag",
	lazy = false,
  opts = {},
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
  },
  config = config,
}
