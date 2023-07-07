print("Loading lsp-zero...")
-- Check if NeoVim is started in diff mode

local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({ buffer = bufnr })
  local opts = { buffer = bufnr }

  vim.keymap.set({ 'n', 'x' }, 'gq', function()
    vim.lsp.buf.format({ async = false, timeout_ms = 10000 })
  end, opts)
end)

-- Without this some colors change unexpectedly
lsp.set_server_config({
  on_init = function(client)
    client.server_capabilities.semanticTokensProvider = nil
  end,
})

-- (Optional) Configure lua language server for neovim
local lspconfig = require('lspconfig')
lspconfig.lua_ls.setup(lsp.nvim_lua_ls())
lspconfig.pyright.setup {
  settings = {
    pyright = {
      typeCheckingMode = 'off'
    }
  }
}

-- Disable LSP configuration if started in diff mode
local isDiffMode = vim.fn.index(vim.v.argv, "-d") ~= -1
if not isDiffMode then
  lsp.setup()
end


-- You need to setup `cmp` after lsp-zero
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
  mapping = {
    -- `Enter` key to confirm completion
    ['<Tab>'] = cmp.mapping.confirm({ select = true }),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),

    -- Ctrl+Space to trigger completion menu
    ['<C-Space>'] = cmp.mapping.complete(),

    -- Navigate between snippet placeholder
    --['<C-f>'] = cmp_action.luasnip_jump_forward(),
    --['<C-b>'] = cmp_action.luasnip_jump_backward(),
  }
})
