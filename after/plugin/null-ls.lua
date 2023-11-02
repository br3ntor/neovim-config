print("Loading null_ls setup...")

local null_ls = require("null-ls")

null_ls.setup({
  -- debug = true,
  sources = {
    null_ls.builtins.formatting.black,
    null_ls.builtins.diagnostics.ruff,
    null_ls.builtins.diagnostics.eslint_d,
    null_ls.builtins.formatting.prettier,
  },
})
