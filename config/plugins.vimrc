call plug#begin()
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'fannheyward/telescope-coc.nvim'

    Plug 'ryanoasis/vim-devicons'
    Plug 'preservim/nerdtree'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
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
    "Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install'}
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
    " Time tracker
    Plug 'git-time-metric/gtm-vim-plugin'
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

call plug#end()
