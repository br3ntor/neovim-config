print("Loading options.lua")

-- Appearance
vim.cmd([[colorscheme tokyonight]])
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })

-- these dont seem to have any effect
--vim.api.nvim_set_hl(0, "WinBar", { bg = "blue" })
--vim.api.nvim_set_hl(0, "WinBarNC", { bg = "none" })
--vim.api.nvim_set_hl(0, "StatusLine", { bg = "none" })
--vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })


-- Bindings
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- Actual options
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.mouse = 'v'
