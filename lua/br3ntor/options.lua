print("Loading options.lua")
-- Basic function to set colors, put this somewhere else later
--function mycolors()
--  local ok, _ = pcall(vim.cmd, "colorscheme tokyonight")
--  if not ok then
--    vim.notify("colorscheme " .. colorscheme .. " not found!")
--    return
--  end
--  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--end

--mycolors()
--vim.o.background = "dark" -- or "light" for light mode

vim.cmd([[colorscheme gruvbox]])
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.mouse = 'v'
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
