-- Install packer in foes not exists
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

-- Install plugins when config file is updated
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost install.lua source <afile> | PackerCompile
  augroup end
]])

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
  }
  use 'EdenEast/nightfox.nvim'
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-calc'
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'}
  use {'tzachar/cmp-fuzzy-buffer', requires = {'hrsh7th/nvim-cmp', 'tzachar/fuzzy.nvim'}}
  use 'hrsh7th/nvim-cmp'
  use { 'saadparwaiz1/cmp_luasnip' }
  use { 'L3MON4D3/LuaSnip'}
  use {
  "folke/which-key.nvim",
  config = function()
    require("which-key").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
  }
  use {
      'numToStr/Comment.nvim',
      config = function()
          require('Comment').setup()
      end
  }
  use {"akinsho/toggleterm.nvim"}
  use {"qpkorr/vim-bufkill"}
  use {
      'kyazdani42/nvim-tree.lua',
      requires = {
          'kyazdani42/nvim-web-devicons', -- optional, for file icon
      }
  }
  use 'shaunsingh/nord.nvim'
  use 'mattn/emmet-vim'
  use 'airblade/vim-gitgutter'
  use 'windwp/nvim-autopairs'
  use 'sainnhe/everforest'
  use 'bluz71/vim-nightfly-guicolors'
  use 'folke/tokyonight.nvim'
  use 'pangloss/vim-javascript'
  use {
      "nvim-pack/nvim-spectre",
      event = "BufRead",
      config = function()
          require("spectre").setup()
      end,
  }
end)
