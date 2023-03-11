local status, packer = pcall(require, 'packer')
if (not status) then
  print('Packer is not installed')
  return
end

vim.cmd [[ packadd packer.nvim ]]

-- PLUGINS
packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  -- use 'kyazdani42/nvim-web-devicons'
  -- use 'vim-airline/vim-airline'
  -- use 'vim-airline/vim-airline-themes'
  use 'rebelot/kanagawa.nvim'
  -- use 'rstacruz/vim-closer'
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-lualine/lualine.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use 'nvim-lua/plenary.nvim'
  use {
    'nvim-telescope/telescope.nvim',
    'nvim-telescope/telescope-file-browser.nvim',
  }
  use {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
  }
  use 'glepnir/lspsaga.nvim'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'rafamadriz/friendly-snippets'
  use 'voldikss/vim-floaterm'
  use { "bluz71/vim-moonfly-colors", as = "moonfly" }
  use 'kvrohit/mellow.nvim'
  use 'savq/melange-nvim'
  -- use 'rktjmp/lush.nvim'
  use 'norcalli/nvim-colorizer.lua'
  use 'windwp/nvim-autopairs'
  use 'p00f/nvim-ts-rainbow'
  use 'windwp/nvim-ts-autotag'
  use 'lewis6991/gitsigns.nvim'
  use 'rockerBOO/boo-colorscheme-nvim'
  use 'xiyaowong/nvim-transparent'
  use 'akinsho/nvim-bufferline.lua'
  use 'dinhhuy258/git.nvim'
  use 'akinsho/toggleterm.nvim'
  use 'github/copilot.vim'
end)

