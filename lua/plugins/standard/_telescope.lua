local config = function ()
  local telescope = require("telescope")
  local actions = require("telescope.actions")
  telescope.setup({
    defaults = {
      -- layout_strategy = "horizontal", -- preview layout (h)
      layout_strategy = "vertical", -- preview layout (v)
      previewer = true, -- activate preview
      mappings = {
        i = {
          ["<C-j>"] = actions.move_selection_previous,
          ["<C-k>"] = actions.move_selection_next,
          ["<C-p>"] = actions.send_selected_to_qflist + actions.open_qflist,
        },
      },
    },
  })

  telescope.load_extension("fzf")
end

return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.3",
	lazy = false,
	dependencies = {
    "nvim-lua/plenary.nvim",
    {"nvim-telescope/telescope-fzf-native.nvim", build = "make"},
    "nvim-tree/nvim-web-devicons",
  },
	config = config,
}
