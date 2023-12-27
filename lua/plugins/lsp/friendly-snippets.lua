local config = function()
  require("luasnip.loaders.from_vscode").lazy_load()
end

return {
  "rafamadriz/friendly-snippets",
  config = config
}
