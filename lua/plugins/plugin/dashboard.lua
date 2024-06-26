local config = function()
	local alpha = require("alpha")
	local dashboard = require("alpha.themes.dashboard")

	-- Set header
	dashboard.section.header.val = {
		"                                                     ",
		"  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
		"  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
		"  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
		"  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
		"  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
		"  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
		"                                                     ",
	}
	-- dashboard.section.header.val = {
	-- }

	-- Set menu
	dashboard.section.buttons.val = {
		dashboard.button("e", "  New File", "<cmd>ene<CR>"),
		dashboard.button("CTRL f", "  File Explorer", "<cmd>Neotree filesystem<CR>"),
		dashboard.button("SPC SPC-f", "󰱼  Find File", "<cmd>Telescope find_files<CR>"),
		dashboard.button("SPC SPC-s", "  Find Word", "<cmd>Telescope live_grep<CR>"),
		-- dashboard.button("SPC wr", "󰁯  Restore Session", "<cmd>SessionRestore<CR>"),
		dashboard.button("q", "  Quit Neovim", "<cmd>qa<CR>"),
	}

	-- Send config to alpha
	alpha.setup(dashboard.opts)

	-- Disable folding on alpha buffer
	vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
end

return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = config,
}
