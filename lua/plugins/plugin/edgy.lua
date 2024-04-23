return {
	"folke/edgy.nvim",
	event = "VeryLazy",
	init = function()
		vim.opt.laststatus = 3
		vim.opt.splitkeep = "screen"
	end,
	opts = {
		bottom = {
			-- toggleterm / lazyterm at the bottom with a height of 40% of the screen
			"Terminal",
			{
				ft = "Trouble",
				title = "Trouble",
				size = {
					height = 0.3,
				},
			},
			{
				ft = "toggleterm",
				title = "Terminal",
				size = {
					height = 0.3,
				},
				-- exclude floating windows
				-- filter = function(buf, win)
				-- 	return vim.api.nvim_win_get_config(win).relative == ""
				-- end,
			},
			-- {
			-- 	ft = "spectre_panel",
			-- 	size = {
			-- 		height = 0.3,
			-- 	},
			-- },
		},
		left = {
			-- Neo-tree filesystem always takes half the screen height
			"Neo-Tree",
			{
				ft = "neo-tree",
				title = "Neo-Tree",
				filter = function(buf)
					return vim.b[buf].neo_tree_source == "filesystem"
				end,
				size = {
					height = 0.3,
				},
			},
			{
				title = "Neo-Tree Git",
				ft = "neo-tree",
				filter = function(buf)
					return vim.b[buf].neo_tree_source == "git_status"
				end,
				pinned = true,
				open = "Neotree position=right git_status",
				size = {
					height = 0.2,
				},
			},
			{
				ft = "neo-tree",
				title = "Neo-Tree Buffers",
				filter = function(buf)
					return vim.b[buf].neo_tree_source == "buffers"
				end,
				pinned = true,
				open = "Neotree position=top buffers",
				size = {
					height = 0.2,
				},
			},
			-- any other neo-tree windows
		},
		right = {
			"Outline",
			{
				ft = "Outline",
				size = {
					height = 0.2,
				},
				open = "OutlineOpen",
			},
		},
	},
}
