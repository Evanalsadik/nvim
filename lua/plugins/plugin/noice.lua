return {
	"folke/noice.nvim",
	event = "VeryLazy",
	opts = {
		routes = {
			{
				view = "notify",
				filter = { event = "msg_showmode" },
			},
		},
		lsp = {
			override = {
				["vim.lsp.util.convert_input_to_markdown_lines"] = true,
				["vim.lsp.util.stylize_markdown"] = true,
				["cmp.entry.get_documentation"] = true,
			},
		},
		presets = {
			bottom_search = true,
			command_palette = true,
			long_message_to_split = true,
			inc_rename = false,
			lsp_doc_border = false,
		},
	},
	dependencies = {
		"MunifTanjim/nui.nvim",
		-- "rcarriga/nvim-notify",
		-- OPTIONAL:
		--   `nvim-notify` is only needed, if you want to use the notification view.
		--   If not available, we use `mini` as the fallback
		-- {
		-- 	"rcarriga/nvim-notify",
		-- config = function()
		-- 	require("notify").setup({
		-- 		background_colour = "#000000",
		-- 	})
		-- end,
		-- },
	},
}
