local config = function ()
  vim.cmd('colorscheme iceberg')
end

return {
	-- "EdenEast/nightfox.nvim",
  "cocopon/iceberg.vim",
	lazy = false,
	priority = 999,
	config = config
}
