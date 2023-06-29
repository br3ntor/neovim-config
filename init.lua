print("Welcome to br3ntor's custom Neovim!")

-- load nvim plugins, options, configs
require("br3ntor.plugins")
require("br3ntor.lspzero")
require("br3ntor.treesitter")
require("br3ntor.lualine")
require("br3ntor.bufferline")
require("br3ntor.tokyonight")

-- I am overwriting stuff set by plugins so maybe better this loads last
require("br3ntor.options")
