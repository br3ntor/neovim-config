print("Loading options...")

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.termguicolors = true
--vim.opt.mouse = 'v'

-- CursorLine bg only on focus
vim.cmd([[
augroup CursorLine
au!
au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
au WinLeave * setlocal nocursorline
augroup END
]])
