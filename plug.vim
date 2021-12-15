call plug#begin(stdpath('data') . '/plugged-my-custom')
    Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

    Plug 'neovim/nvim-lspconfig'
    Plug 'bkad/CamelCaseMotion'

    " File Exploreo
    Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'kristijanhusak/defx-git'
    Plug 'kristijanhusak/defx-icons'

    Plug 'qpkorr/vim-bufkill'
    Plug 'folke/which-key.nvim'

    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'

    " For vsnip users.
    Plug 'hrsh7th/cmp-vsnip'
    Plug 'hrsh7th/vim-vsnip'

    Plug 'windwp/nvim-autopairs'
    "Show signature while type
    Plug 'ray-x/lsp_signature.nvim'
    Plug 'tami5/lspsaga.nvim'

    Plug 'ryanoasis/vim-devicons'

    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

    Plug 'kosayoda/nvim-lightbulb'

    Plug 'lewis6991/gitsigns.nvim'

    Plug 'windwp/nvim-spectre'

    Plug 'kdheepak/lazygit.nvim'

    Plug 'tpope/vim-surround'

    Plug 'folke/trouble.nvim'

    " Repleace preview
    Plug 'markonm/traces.vim'

    Plug 'phpactor/phpactor', {'for': 'php', 'tag': '*', 'do': 'composer install --no-dev -o'}

    Plug 'ntpeters/vim-better-whitespace'

    Plug 'posva/vim-vue'
    Plug 'pangloss/vim-javascript'

    Plug 'tpope/vim-dadbod'

    Plug 'vim-test/vim-test'

    Plug 'akinsho/toggleterm.nvim'

    Plug 'terrortylor/nvim-comment'

    Plug 'stephpy/vim-php-cs-fixer'

    Plug 'airblade/vim-rooter'

    Plug 'gelguy/wilder.nvim'

    " Plug 'airblade/vim-rooter'
    " Plug 'evidens/vim-twig'
    " Plug 'ellisonleao/glow.nvim'
    " Plug 'ryanoasis/vim-devicons'
    " Plug 'nvim-lualine/lualine.nvim'
    " Plug 'Olical/conjure'
    " Plug 'kovisoft/paredit'
    " Plug 'vlime/vlime', {'rtp': 'vim/'}
    " Plug 'cespare/vim-toml'
    " Plug 'ndmitchell/ghcid', { 'rtp': 'plugins/nvim' }

    " " Multiple cursors with Ctrl+n
    " Plug 'terryma/vim-multiple-cursors'
    " " Change surrounding chars
    " " Html autocomplete
    " Plug 'mattn/emmet-vim'
    " " Git wrapper
    " Plug 'tpope/vim-fugitive'
    " " Tags
    " "Plug 'ludovicchabant/vim-gutentags'
    " " Show tags at right side window
    " Plug 'majutsushi/tagbar'
    " " Align selection
    " Plug 'junegunn/vim-easy-align'
    " " Shows uneccesary whitespace
    " " Comments toggle
    " Plug 'preservim/nerdcommenter'
    " " Camelcase and sneakcase words navigation
    " " Distraction free mode
    " Plug 'junegunn/goyo.vim'
    " " Python
    " Plug 'neovim/pynvim'
    " " Autocomplete
    " Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " " Quick fix buffer edit
    " Plug 'stefandtw/quickfix-reflector.vim'
    " " Highlights ex commands
    " " Show vim history
    " Plug 'junegunn/gv.vim'
    " Plug 'neovim/node-host'

    " " Typescript
    " Plug 'HerringtonDarkholme/yats.vim'
    " "Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
    " " Html
    " Plug 'othree/html5.vim'
    " " Vue
    " " PHP
    " "Plug 'spf13/PIV'
    " Plug 'noahfrederick/vim-composer'
    " Plug 'jwalton512/vim-blade'
    " " JS
    " Plug 'isRuslan/vim-es6'
    " " Dockerfile
    " Plug 'ekalinin/Dockerfile.vim'
    " " Line
    " Plug 'smilga/tokyo-metro.vim'
    " " Test
    " Plug 'janko/vim-test'
    " " Markdonw
    " Plug 'godlygeek/tabular'
    " Plug 'plasticboy/vim-markdown'
    " Plug 'nikvdp/ejs-syntax'
    " Plug 'stephpy/vim-yaml'
    " Plug 'neoclide/coc-snippets'
    " Plug 'arcticicestudio/nord-vim'
    " Plug 'mhartington/oceanic-next'
    " Plug 'chamindra/marvim'
    " Plug 'aklt/plantuml-syntax'
    " Plug 'scrooloose/vim-slumlord'
    " Plug 'jremmen/vim-ripgrep'

call plug#end()
