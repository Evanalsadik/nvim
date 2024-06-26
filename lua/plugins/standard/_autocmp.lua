local config = function()
	local cmp = require("cmp")
	local luasnip = require("luasnip")
	local lspkind = require("lspkind")

	-- loads vscode style snippets from installed plugins (e.g. friendly-snippets)
	require("luasnip.loaders.from_vscode").lazy_load()
	cmp.setup({
		completion = {
			completeopt = "menu,menuone,preview",
		},
		experimental = {
			ghost_text = {
				hl_group = "NameOfHighlightGroup",
			},
		},
		snippet = { -- configure how nvim-cmp interacts with snippet engine
			expand = function(args)
				luasnip.lsp_expand(args.body)
			end,
		},
		window = {
			completion = cmp.config.window.bordered(),
			documentation = cmp.config.window.bordered(),
		},
		mapping = cmp.mapping.preset.insert({
			["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
			["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
			["<C-b>"] = cmp.mapping.scroll_docs(-4),
			["<C-f>"] = cmp.mapping.scroll_docs(4),
			["<C-e>"] = cmp.mapping.abort(), -- close completion window
			["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
			["<Tab>"] = cmp.mapping.confirm({ select = true }),
		}),
		-- sources for autocompletion
		sources = cmp.config.sources({
			{ name = "luasnip" }, -- snippets
			{ name = "nvim_lsp" }, -- lsp
			{ name = "buffer" }, -- text within current buffer
			{ name = "copilot" }, -- copilot autosuggestions
			{ name = "path" }, -- file system paths
		}),
		-- configure lspkind for vs-code like pictograms in completion menu
		formatting = {
			format = lspkind.cmp_format({
				maxwidth = 50,
				ellipsis_char = "...",
			}),
		},
	})
end

return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp", -- source for text in buffer
		"hrsh7th/cmp-buffer", -- source for text in buffer
		"hrsh7th/cmp-path", -- source for file system paths
		"L3MON4D3/LuaSnip", -- snippet engine
		"saadparwaiz1/cmp_luasnip", -- for autocompletion
		"rafamadriz/friendly-snippets", -- useful snippets
		"onsails/lspkind.nvim", -- vs-code like pictograms
	},
	config = config,
}
