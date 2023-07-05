print("Loading ColorMyPencils...")
function ColorMyPencils()
  -- Colorscheme config
  --require("tokyonight").setup({
  --  styles = {
  --    comments = { italic = false },
  --    keywords = { italic = false },
  --  },
  --  --on_colors = function(colors)
  --  --  --colors.hint = colors.orange
  --  --  --colors.error = "#ff0000"
  --  --colors.diff.add = "#42824A"
  --  --end
  --})
  vim.cmd([[colorscheme tokyonight]])

  -- My custom colors
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalNC", { bg = nil })
  vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
  vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
  vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none", fg = "#7A5E00" })
  --vim.api.nvim_set_hl(0, "DiffAdd", { bg = "#42824A" })
end

ColorMyPencils()
