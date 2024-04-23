-- local config = function() end

return {
	"hedyhli/outline.nvim",
	lazy = true,
	cmd = {
		"OutlineOpen",
		"OutlineClose",
		"OutlineStatus",
		"OutlineFollow",
	},
	opts = {
		-- Your setup opts here

		-- uncomment to disable icon/symbol
		-- symbols = {
		-- 	icon_fetcher = function(_)
		-- 		return ""
		-- 	end,
		-- },

		preview_window = {
			live = true,
			auto_preview = false,
			winhl = "NormalFloat:",
		},

		outline_window = {
			show_cursorline = true,
			hide_cursor = true,
			auto_jump = true,
		},

		symbol_folding = {
			-- uncomment to unfold entire symbols tree by default
			-- autofold_depth = false,

			-- uncomment to enable Auto-unfold when there's only two (or any number of) root nodes
			auto_unfold = {
				only = 2,
			},

			-- uncomment to enable auto unfold all others except currently hovered item
			-- autofold_depth = 1,
			-- auto_unfold = {
			-- 	hovered = true,
			-- },
		},

		-- outline line number
		outline_items = {
			show_symbol_lineno = false,
			show_symbol_details = true,
		},
	},
	-- config = config,
}
