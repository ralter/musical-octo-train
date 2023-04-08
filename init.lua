--[[ init.lua ]]

-- LEADER
-- These keybindings need to be defined before the first /
-- is called; otherwise, it will default to "\"
vim.g.mapleader = " "
vim.g.localleader = " "

-- IMPORTS
require('vars')      -- Variables
require('opts')      -- Options
require('keys')      -- Keymaps
require('plug')      -- Plugins

-- Plugins
require('nvim-tree').setup{}
--require('lspconfig').pyright.setup{}
require('lsp')

local cmp = require('cmp')
local lspconfig = require('lspconfig')
cmp.setup({
  sources = {
    { name = 'nvim_lsp' },
  },
  mapping = {
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    }),
  },
  lsp = {
    enable = true,
    -- Use pyright as the LSP server for Python
    -- Make sure you have Pyright installed on your system
    server = {
      command = 'pyright-langserver',
      capabilities = lspconfig.util.default_config.capabilities,
    },
  },
})

