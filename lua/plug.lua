-- [[ plug.lua ]]

return require('packer').startup(function(use)
  -- [[ Plugins Go Here ]]
use {'wbthomason/packer.nvim', opt = true}
use {                                              -- filesystem navigation
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'        -- filesystem icons
  }
    -- [[ Themes ]]
  use { 'mhinz/vim-startify' }                       -- start screen
  use { 'DanilaMihailov/beacon.nvim' }               -- cursor jump
  use {
    'nvim-lualine/lualine.nvim',                     -- statusline
    requires = {'kyazdani42/nvim-web-devicons',
                opt = true}
  }
  use {'vim-airline/vim-airline'}
  use {'vim-airline/vim-airline-themes'}
  -- [[ Dev ]]
  use {
    'nvim-telescope/telescope.nvim',                 -- fuzzy finder
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use { 'majutsushi/tagbar' }                        -- code structure
  use { 'Yggdroot/indentLine' }                      -- see indentation
  use { 'tpope/vim-fugitive' }                       -- git integration
  use { 'junegunn/gv.vim' }                          -- commit history
  use { 'windwp/nvim-autopairs' }
  --[[ LSP ]]
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
    }
    use {'neovim/nvim-lspconfig'} -- Configurations for Nvim LSP
  --[ AutoCMP ]
  use {'hrsh7th/nvim-cmp', requires = {
    'hrsh7th/vim-vsnip',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-nvim-lua',
    'saadparwaiz1/cmp_luasnip'
}}
  use {'hrsh7th/cmp-nvim-lsp'}
  use { 'lervag/vimtex',
    vim.cmd([[
        let g:tex_flavor='latex'
        let g:vimtex_view_method='zathura'
        let g:vimtex_fold_enabled='fld'
        let g:vimtex_quickfix_mode=0
        set conceallevel=1
        let g:tex_conceal='abdmg'
      ]])
   }
  use {'sirver/ultisnips'}
    vim.cmd([[
        let g:UltiSnipsExpandTrigger = '<tab>'
        let g:UltiSnipsJumpForwardTrigger = '<tab>'
        let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
        let g:UltiSnipsSnippetsDir ="/Users/reubenalter/.config/nvim/UltiSnips"
        let g:UltiSnipsEditSplit = 'vertical'
      ]])
  end)
