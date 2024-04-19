local config = function()
	require("todo-comments").setup()
end

return {
	"folke/todo-comments.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	event = "BufRead",
	config = config,
}

-- TODO jdjhhdhhh
