local lualine = require('lualine')

local function clock()
  return ' ' .. os.date('%H:%M')
end

lualine.setup {
  options = {
    theme = auto,
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = { { 'mode', separator = { left = '', right = '' }, right_padding = 2 } },
    lualine_b = { 'filename', 'branch' },
    lualine_c = { 'fileformat' },
    lualine_x = { 'encoding', 'filetype' },
    lualine_y = { 'progress' },
    lualine_z = { {'location', separator = { left = '', right = '' }, left_padding = 2 } },
  },
  inactive_sections = {
    lualine_a = { {'filename', separator = { left = '' }, right_padding = 2 } },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { { clock, separator = { right = '' }, left_padding = 2 } },
  },
  tabline = {},
  extensions = {},
}
