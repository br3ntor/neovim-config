print("Loading keymaps...")
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
vim.keymap.set('n', '<leader>q', ':bdelete<CR>', {})

-- My custom not suggested by anyone
-- Ctrl-S save
vim.keymap.set('n', '<C-s>', ':w<CR>', {})
