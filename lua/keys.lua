--[[ keys.lua ]]
local map = vim.api.nvim_set_keymap

-- remap the key used to leave insert mode
--map('i', 'jk', '', {})

-- nvimtree toggle
map('n', 'n', [[:NvimTreeToggle]], {})

-- esc remap to jk
map('i', 'jk', '<Esc>', {noremap=true,silent=true})
map('v', 'jk', '<Esc>', {noremap=true,silent=true})

map('i', '<Tab>', 'hg', { noremap = true, silent = true })
map('n', '<Tab>', 'hg', { noremap = true, silent = true })

