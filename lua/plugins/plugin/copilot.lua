local config = function()
	require("copilot_cmp").setup()
end

return {
	"zbirenbaum/copilot-cmp",
	dependencies = {
		"zbirenbaum/copilot.lua",
	},
	event = "BufEnter",
	config = config,
}
