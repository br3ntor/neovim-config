print("Loading bufferline...")

local bufferline = require('bufferline')
bufferline.setup {
  options = {
    themable = true,
    show_buffer_close_icons = false,
    show_close_icon = false,
    separator_style = { '', '' },
    style_preset = {
      bufferline.style_preset.no_italic
    },
    indicator = {
      style = 'none'
    },
  },
  highlights = {
    buffer_selected = {
      fg = '#D4D4D4',
      bg = 'none'
    },
    buffer_visible = {
      fg = 'grey',
      bg = 'none'
    },
    background = {
      fg = '#292E42',
      bg = 'none'
    },
    tab_selected = {
      fg = '#c9c9c9',
      bg = '#292e42',
    },
  }
}
