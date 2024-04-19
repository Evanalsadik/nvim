local config = function()
	require("dressing").setup({
		input = {
			win_options = {
				winhighlight = "NormalFloat:DiagnosticError",
			},
		},
	})
end

return {
	"stevearc/dressing.nvim",
	opts = {},
	config = config,
}
