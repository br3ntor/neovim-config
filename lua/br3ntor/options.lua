print("Loading options.lua")

vim.cmd([[
augroup CursorLine
au!
au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
au WinLeave * setlocal nocursorline
augroup END
]])

-- Appearance
--vim.cmd([[colorscheme tokyonight]])
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = nil })
vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none", fg = "#7A5E00" })

-- Using :so always seems to fill in buffer/tabline above, I dont know how to fix this yet
--vim.api.nvim_set_hl(0, "TabLineFill", { bg = nil })
--vim.api.nvim_set_hl(0, "TabLine", { bg = nil })

-- Bindings
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>p', ':bprevious<CR>', {})
vim.keymap.set('n', '<leader>n', ':bnext<CR>', {})

-- Actual options
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.mouse = 'v'

