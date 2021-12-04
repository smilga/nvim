call plug#begin()
    Plug 'airblade/vim-rooter'
    Plug 'evidens/vim-twig'
    Plug 'ellisonleao/glow.nvim'
    Plug 'ryanoasis/vim-devicons'
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'kosayoda/nvim-lightbulb'
    Plug 'Olical/conjure'
    Plug 'kovisoft/paredit'
    Plug 'vlime/vlime', {'rtp': 'vim/'}
    Plug 'nvim-lua/plenary.nvim'
    Plug 'cespare/vim-toml'
    Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
    Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'kristijanhusak/defx-icons'
    Plug 'kristijanhusak/defx-git'
    Plug 'neovimhaskell/haskell-vim'
    Plug 'ndmitchell/ghcid', { 'rtp': 'plugins/nvim' }
    Plug 'phpactor/phpactor', {'for': 'php', 'tag': '*', 'do': 'composer install --no-dev -o'}
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-project.nvim'
    Plug 'fannheyward/telescope-coc.nvim'

    " Kill buffer but keep split :BD<CR>
    Plug 'qpkorr/vim-bufkill'
    " Display marks at near line numbers
    Plug 'kshenoy/vim-signature'
    " Automaticly close brackets etc...
    Plug 'jiangmiao/auto-pairs'
    " Multiple cursors with Ctrl+n
    Plug 'terryma/vim-multiple-cursors'
    " Change surrounding chars
    Plug 'tpope/vim-surround'
    " Html autocomplete
    Plug 'mattn/emmet-vim'
    " Git wrapper
    Plug 'tpope/vim-fugitive'
    " Tags
    "Plug 'ludovicchabant/vim-gutentags'
    " Show tags at right side window
    Plug 'majutsushi/tagbar'
    " Align selection
    Plug 'junegunn/vim-easy-align'
    " Shows uneccesary whitespace
    Plug 'ntpeters/vim-better-whitespace'
    " Comments toggle
    Plug 'preservim/nerdcommenter'
    " Camelcase and sneakcase words navigation
    Plug 'bkad/CamelCaseMotion'
    " Distraction free mode
    Plug 'junegunn/goyo.vim'
    " Linting
    Plug 'dense-analysis/ale',
    " Python
    Plug 'neovim/pynvim'
    " Autocomplete
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Quick fix buffer edit
    Plug 'stefandtw/quickfix-reflector.vim'
    " Highlights ex commands
    Plug 'markonm/traces.vim'
    " Show vim history
    Plug 'junegunn/gv.vim'
    Plug 'neovim/node-host'

    " Typescript
    Plug 'HerringtonDarkholme/yats.vim'
    "Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
    " Html
    Plug 'othree/html5.vim'
    " Vue
    Plug 'posva/vim-vue'
    " PHP
    "Plug 'spf13/PIV'
    Plug 'noahfrederick/vim-composer'
    Plug 'jwalton512/vim-blade'
    " JS
    Plug 'isRuslan/vim-es6'
    Plug 'pangloss/vim-javascript'
    " Dockerfile
    Plug 'ekalinin/Dockerfile.vim'
    " Line
    Plug 'smilga/tokyo-metro.vim'
    " Test
    Plug 'janko/vim-test'
    " Markdonw
    Plug 'godlygeek/tabular'
    Plug 'plasticboy/vim-markdown'
    Plug 'nikvdp/ejs-syntax'
    Plug 'stephpy/vim-yaml'
    Plug 'neoclide/coc-snippets'
    Plug 'arcticicestudio/nord-vim'
    Plug 'mhartington/oceanic-next'
    Plug 'chamindra/marvim'
    Plug 'aklt/plantuml-syntax'
    Plug 'scrooloose/vim-slumlord'
    Plug 'jremmen/vim-ripgrep'

call plug#end()
