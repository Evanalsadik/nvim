-- set color in all modes
local colors = {
  primary = '#828596',
  secondary = '#2E3140',
  tertiary = '#101116',
  quarternary = '#4284AB',
  quinary = '#A4A6AD',
  senary = '#BE3360',
  septenary = '#329784',
  text_d = '#101116',
  text_l = '#c6c6c6',
}

local configs = function()
  -- local theme = require("lualine.themes.iceberg_dark")
  -- local lazy_status = require("lazy.status")

  require("lualine").setup {
    options = {
      -- theme = theme,
      theme = {
        normal = {
          a = { fg = colors.text_d, bg = colors.primary },
          b = { fg = colors.text_l, bg = colors.secondary },
          c = { fg = colors.text_l, bg = colors.tertiary },
        },

        insert = { a = { fg = colors.text_d, bg = colors.quarternary } },
        visual = { a = { fg = colors.text_d, bg = colors.quinary } },
        replace = { a = { fg = colors.text_d, bg = colors.senary } },
        command = { a = { fg = colors.text_d, bg = colors.septenary } },
      },
      component_separators = { left = '', right = '' },
      section_separators = { left = '', right = '' },

      -- globalstatus = true,
    },
    sections = {
      lualine_a = { 'mode' },
      lualine_b = {
        'branch',
        {
          'diff',
          max_length = vim.o.columns / 2,
          symbols = { added = ' ', modified = ' ', removed = ' ' },
        },
      },
      -- lualine_c = { 'filename' },
      lualine_c = {
        {
          'diagnostics',
          always_visible = false,
        }
      },
      lualine_x = {},
      lualine_y = { 'filename', 'filetype', },
      lualine_z = {
        {
          'fileformat',
          symbols = {
            -- unix = '',
            unix = '',
          }
        }
      },
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = { 'filename' },
      lualine_x = { 'location' },
      lualine_y = {},
      lualine_z = {}
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {}
  }
end

return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons", },
  lazy = false,
  config = configs,
}
