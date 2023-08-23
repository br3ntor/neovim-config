print("Loading colorscheme...")

function ColorMyPencils()
  -- Colorscheme config
  -- require("tokyonight").setup({
  --   styles = {
  --     comments = { italic = false },
  --     keywords = { italic = false },
  --   },
  -- })
  -- vim.cmd([[colorscheme tokyonight]])

  require('kanagawa').setup({
    transparent = true,
    colors = {
      theme = {
        all = {
          ui = {
            bg_gutter = "none"
          }
        }
      }
    }
  })
  vim.cmd([[colorscheme kanagawa]])

  -- My custom colors
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalNC", { bg = nil })
  vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
  vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
  vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none", fg = "#7A5E00" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#262626" })

  -- Theses aren't need to get transparency with the tokyonight setup
  -- vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
  -- vim.api.nvim_set_hl(0, "GitSignsAdd", { bg = "none", fg = "green" })
end

ColorMyPencils()
