print("Loading options.lua")

-- Appearance
vim.cmd([[colorscheme gruvbox]])
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })

-- Bindings
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- Actual options
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.mouse = 'v'
