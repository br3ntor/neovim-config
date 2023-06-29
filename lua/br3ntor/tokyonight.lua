print("Loading tokyonight...")
-- Testing 1 2 3
require("tokyonight").setup({
  styles = {
    comments = { italic = false },
    keywords = { italic = false },
  }
})
vim.cmd([[colorscheme tokyonight]])
