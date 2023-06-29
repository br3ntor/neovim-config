print("Loading bufferline...")

vim.opt.termguicolors = true
local bufferline = require('bufferline')
bufferline.setup {
  options = {
    themable = true,
    --sort_by = 'directory',
    show_buffer_close_icons = false,
    show_close_icon = false,
    separator_style = { '', '' },
    style_preset = {
      bufferline.style_preset.no_italic
    },
    indicator = {
      icon = 'λ', -- this should be omitted if indicator style is not 'icon'
      style = 'icon'
    },
  },
  highlights = {
    buffer_selected = {
      fg = '#D4D4D4',
    },
    background = {
      fg = 'grey',
    },
    tab_selected = {
      fg = '#c9c9c9',
      bg = '#292e42',
    },
  }
}
