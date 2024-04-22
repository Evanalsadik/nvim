local config = function()
	local wk = require("which-key")
	wk.register({
		['"'] = {
			name = " Trouble",
			w = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "Trouble Workspace Diagnostic" },
			d = { "<cmd>TroubleToggle document_diagnostics<cr>", "Trouble Document Diagnostic" },
			c = { "<cmd>TroubleClose<CR>", "Close Trouble Diagnostic" },
		},
		["/"] = {
			name = " Terminal",
			f = { "<cmd>ToggleTerm direction=float size=45<cr>", "Floating Terminal" },
			h = { "<Cmd>ToggleTerm size=10 direction=horizontal<Cr>", "Horizontal Terminal" },
			v = { "<Cmd>ToggleTerm size=45 direction=vertical<Cr>", "Vertical Terminal" },
		},
		["<leader>"] = {
			name = " Telescope",
			c = { "<cmd>Telescope grep_string<cr>", "Find String Under Cursor" },
			f = { "<cmd>Telescope find_files<cr>", "Find File" },
			k = { "<cmd>Telescope keymaps<cr>", "Find Keymaps" },
			r = { "<cmd>Telescope oldfiles<cr>", "Find Recent File" },
			s = { "<cmd>Telescope live_grep<cr>", "Find String" },
		},
		b = {
			name = " Buffer Settings",
			b = { "<cmd>e #<cr>", "Switch Buffer" },
			d = { "<cmd>bdelete<cr>", "Delete Buffer" },
			n = { "<cmd>bnext<cr>", "Next Buffer" },
			m = { "<cmd>bprevious<cr>", "Previous Buffer" },
			p = { "<cmd>BufferLinePick<cr>", "Pick Buffer" },
			q = { "<cmd>BufferLinePickClose<cr>", "Pick And Delete Buffer" },
		},
		-- G = {
		-- 	name = " Glow",
		-- 	e = { "<cmd>Glow<CR>", "Open Markdown Preview" },
		-- 	d = { "<cmd>Glow!<CR>", "Close Markdown Preview" },
		-- },
		g = {
			name = " LSP",
			a = { vim.lsp.buf.code_action, "See Available Code Actions" },
			b = { "<cmd>Telescope diagnostics bufnr=0<CR>", "Show Buffer Diagnostics" },
			D = { vim.lsp.buf.declaration, "Go to declaration" },
			d = { "<cmd>Telescope lsp_definitions<CR>", "Show LSP Definitions" },
			i = { "<cmd>Telescope lsp_implementations<CR>", "Show LSP Implementations" },
			K = { vim.lsp.buf.hover, "Show Documentation Under Cursor" },
			L = { "<cmd>Telescope lsp_references<CR>", "Show LSP References" },
			l = { vim.diagnostic.open_float, "Show Line Diagnostics" },
			m = { vim.diagnostic.goto_prev, "Go To Previous Diagnostic" },
			n = { vim.diagnostic.goto_next, "Go To Next Diagnostic" },
			R = { ":LspRestart<CR>", "Restart LSP" },
			r = { vim.lsp.buf.rename, "Smart Rename" },
			y = { "<cmd>Telescope lsp_type_definitions<CR>", "Show LSP Type Definitions" },
		},
		-- L = {
		-- 	name = " Live Server",
		-- 	s = { "<cmd>LiveServerStart<CR>", "Start Live Server" },
		-- 	c = { "<cmd>LiveServerStop<CR>", "Stop Live Server" },
		-- },
		o = {
			name = " Outline",
			c = { "<cmd>OutlineClose<CR>", "Close Outline" },
			o = { "<cmd>OutlineOpen<CR>", "Open Outline Side Bar" },
			f = { "<cmd>OutlineFollow<CR>", "Go To Corresponding Node" },
			s = { "<cmd>OutlineStatus<CR>", "Outline Status" },
		},
		S = {
			name = " Search & Replace",
			r = { [[:%s/\<C-R><C-W>\>//gc<Left><Left><Left>]], "Write Down The Word" },
		},
		s = {
			name = " Windows Management",
			e = { "", "Split Window Equal" },
			h = { "Split", "Split Window Horizontal" },
			m = { "", "Maximize/Minimize A Window" },
			v = { "vsplit", "Split Window Vertically" },
			x = { "close<cr>", "Close Current Window" },
		},
		T = {
			name = " Twilight",
			e = { "<cmd>TwilightEnable<CR>", "Enable Twilight" },
			d = { "<cmd>TwilightDisable<CR>", "Disable Twilight" },
		},
		t = {
			name = " Todo Comment",
			l = { "<cmd>TodoLocList<CR>", "Todo Lock List" },
			q = { "<cmd>TodoQuickFix<CR>", "Todo Quick Fix" },
			r = { "<cmd>TodoTrouble<CR>", "Todo Trouble" },
			t = { "<cmd>TodoTelescope<CR>", "Todo Telescope" },
		},
	}, { prefix = "<leader>" })
end

local init = function()
	vim.o.timeout = true
	vim.o.timeoutlen = 300
end

return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = init,
	opts = {
		mode = "n",
		prefix = "",
		buffer = nil,
		silent = true,
		noremap = true,
		nowait = false,
		expr = false,
	},
	config = config,
}
