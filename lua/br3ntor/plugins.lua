print("Loading plugins.lua")

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

vim.cmd([[
augroup packer_user_config
autocmd!
autocmd BufWritePost plugins.lua source <afile> | PackerCompile
augroup end
]])

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Appearance
  use { "catppuccin/nvim", as = "catppuccin" }
  use "folke/tokyonight.nvim"
  use { "ellisonleao/gruvbox.nvim" }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  -- IDE stuff
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

end)


