local config = function()
	require("todo-comments").setup()
end

return {
	"folke/todo-comments.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	lazy = false,
	event = "BufRead",
	opts = {},
	config = config,
}
-- TODO: example
-- HACK:
-- PERF:
-- NOTE:
-- FIX:
-- WARNING:
