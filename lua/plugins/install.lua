local M = {}

function M.setup()
  local packer_bootstrap = false
  local conf = {
    display = {
      open_fn = function()
        return require("packer.util").float { border = "rounded" }
      end,
    },
  }

  local function packer_init()
    local fn = vim.fn
    local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
    if fn.empty(fn.glob(install_path)) > 0 then
      packer_bootstrap = fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
      }
      vim.cmd [[packadd packer.nvim]]
    end
    vim.cmd "autocmd BufWritePost plugins.lua source <afile> | PackerCompile"
  end

  local function plugins(use)
    use { "wbthomason/packer.nvim" }
    use { "APZelos/blamer.nvim" }

    use {
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
        config = function()
            require("todo-comments").setup {
            }
        end
    }

    use { 'jwalton512/vim-blade' }

    use { "tpope/vim-surround" }

    use {
      "nvim-treesitter/nvim-treesitter",
       run = ":TSUpdate",
       config = function()
         require("plugins.treesitter").setup()
       end,
    }

    use {
        'folke/tokyonight.nvim',
        config = function()
            vim.g.tokyonight_day_brightness	= 0
            vim.g.tokyonight_transparent_sidebar = true
            vim.g.tokyonight_style = "day"
            vim.cmd "colorscheme tokyonight"
        end,
    }
    -- use {
    --   'shaunsingh/nord.nvim',
    --   config = function()
    --     vim.cmd "colorscheme nord"
    --     vim.g.nord_italic = false
    --   end,
    -- }

    use {
      "folke/which-key.nvim",
      config = function()
        require("plugins.which-key").setup()
      end,
   }
   use {
    "SmiteshP/nvim-gps",
    requires = "nvim-treesitter/nvim-treesitter",
    module = "nvim-gps",
    config = function()
      require("nvim-gps").setup()
    end,
  }

   use {
    "numToStr/Comment.nvim",
    opt = true,
    keys = { "gc", "gcc", "gbc" },
    config = function()
      require("Comment").setup {}
    end,
  }

  use {'kyazdani42/nvim-web-devicons'}

  use {
    "nvim-lualine/lualine.nvim",
    event = "VimEnter",
    config = function()
     require("plugins.lualine").setup()
    end,
    requires = { "nvim-web-devicons" },
  }

  use { "junegunn/fzf" }

  use { "onsails/lspkind-nvim" }

  use {
    'nvim-telescope/telescope.nvim',
    config = function()
      require("plugins.telescope").setup()
    end,
    requires = {
      "nvim-lua/popup.nvim",
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", run = "make" },
    },
    wants = {
      "plenary.nvim",
      "popup.nvim",
      "telescope-fzf-native.nvim",
      "telescope-file-browser.nvim",
    },
  }

  use {
    "kyazdani42/nvim-tree.lua",
    requires = {
      "kyazdani42/nvim-web-devicons",
    },
    cmd = { "NvimTreeToggle", "NvimTreeClose", "NvimTreeFindFileToggle" },
      config = function()
        require("plugins.nvim-tree").setup()
      end,
   }

   use {
       'bkad/CamelCaseMotion',
       config = function()
           require("plugins.camelcasemotion").setup()
       end
   }

   use {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    opt = true,
    config = function()
      require("plugins.cmp").setup()
    end,
    wants = { "LuaSnip" },
    requires = {
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-nvim-lua",
      "ray-x/cmp-treesitter",
      "hrsh7th/cmp-cmdline",
      "saadparwaiz1/cmp_luasnip",
      "hrsh7th/cmp-calc",
      "f3fora/cmp-spell",
      "hrsh7th/cmp-emoji",
      "hrsh7th/cmp-nvim-lsp",
      {
        "L3MON4D3/LuaSnip",
        wants = "friendly-snippets",
        config = function()
          require("plugins.luasnip").setup()
        end,
      },
      "rafamadriz/friendly-snippets",
      disable = false,
    },
  }

    -- Auto pairs
use {
  "windwp/nvim-autopairs",
  wants = "nvim-treesitter",
  module = { "nvim-autopairs.completion.cmp", "nvim-autopairs" },
  config = function()
    require("plugins.autopairs").setup()
  end,
}

use {
  "neovim/nvim-lspconfig",
  opt = true,
  event = "BufReadPre",
  wants = { "cmp-nvim-lsp", "nvim-lsp-installer", "lsp_signature.nvim" },
  config = function()
    require("plugins.lsp").setup()
  end,
  requires = {
    "williamboman/nvim-lsp-installer",
    "ray-x/lsp_signature.nvim",
  },
}

use {"qpkorr/vim-bufkill"}
use {'airblade/vim-gitgutter'}
use {
    "nvim-pack/nvim-spectre",
    event = "BufRead",
    config = function()
        require("spectre").setup()
    end,
}
use {
  "folke/trouble.nvim",
  requires = "kyazdani42/nvim-web-devicons",
  config = function()
    require("trouble").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
}

use { 'mattn/emmet-vim',
    config = function()
        vim.cmd[[
            imap <expr> <S-Tab>   emmet#expandAbbrIntelligent("\<tab>")
        ]]
    end
}

use { 
  'TimUntersberger/neogit', 
  requires = { 
    'nvim-lua/plenary.nvim',
    'sindrets/diffview.nvim' 
  },
  config = function()
    require("plugins.neogit").setup()
    require("plugins.diffview").setup()
  end,
}

    -- Git
    -- use {
    --   "TimUntersberger/neogit",
    --   requires = "nvim-lua/plenary.nvim",
    --   config = function()
    --     require("config.neogit").setup()
    --   end,
    -- }

    if packer_bootstrap then
      print "Restart Neovim required after installation!"
      require("packer").sync()
    end
  end

  packer_init()

  local packer = require "packer"
  packer.init(conf)
  packer.startup(plugins)
end

return M
-- TODO:



-- return require('packer').startup(function(use)
--   -- Packer can manage itself
--   use {
--         'nvim-treesitter/nvim-treesitter',
--         run = ':TSUpdate'
--   }
--   use 'EdenEast/nightfox.nvim'
--   use {
--     'nvim-telescope/telescope.nvim',
--     requires = { {'nvim-lua/plenary.nvim'} }
--   }
--   use 'neovim/nvim-lspconfig'
--   use 'hrsh7th/cmp-nvim-lsp'
--   use 'hrsh7th/cmp-buffer'
--   use 'hrsh7th/cmp-path'
--   use 'hrsh7th/cmp-calc'
--   use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'}
--   use {'tzachar/cmp-fuzzy-buffer', requires = {'hrsh7th/nvim-cmp', 'tzachar/fuzzy.nvim'}}
--   use 'hrsh7th/nvim-cmp'
--   use { 'saadparwaiz1/cmp_luasnip' }
--   use { 'L3MON4D3/LuaSnip'}
--   use 'mattn/emmet-vim'
--   use 'bluz71/vim-nightfly-guicolors'
--   use 'folke/tokyonight.nvim'
--   use 'pangloss/vim-javascript'
-- end)
