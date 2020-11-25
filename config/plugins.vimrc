call plug#begin()

    " Snippets
    Plug 'Shougo/neosnippet'
    Plug 'Shougo/neosnippet-snippets'
    " Treeview
    Plug 'scrooloose/nerdtree'
    " Search in project
    Plug 'dyng/ctrlsf.vim'
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
    Plug 'airblade/vim-gitgutter'
    " Tags
    "Plug 'ludovicchabant/vim-gutentags'
    " Show tags at right side window
    Plug 'majutsushi/tagbar'
    " Align selection
    Plug 'junegunn/vim-easy-align'
    " Shows uneccesary whitespace
    Plug 'ntpeters/vim-better-whitespace'
    " Comments toggle
    Plug 'tpope/vim-commentary'
    " Camelcase and sneakcase words navigation
    Plug 'bkad/CamelCaseMotion'
    " Fuzzy finder
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    " Distraction free mode
    Plug 'junegunn/goyo.vim'
    " Grep tool - super fast
    Plug 'jremmen/vim-ripgrep'
    " Linting
    Plug 'w0rp/ale', { 'do': function('InstallPluginDependencies') }
    " Python
    Plug 'neovim/pynvim'
    " Autocomplete
    Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}
    "Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    "Plug 'zchee/deoplete-go', { 'do': 'make'}
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
    Plug 'arnaud-lb/vim-php-namespace'
    Plug 'jwalton512/vim-blade'
    " requires 'pecl install msgpack' and composer install in ~/.config/nvim/config/plugged/phpcd.vim/
    "Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }
    " JS
    Plug 'isRuslan/vim-es6'
    Plug 'pangloss/vim-javascript'
    " Dockerfile
    Plug 'ekalinin/Dockerfile.vim'
    " Line
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'ayu-theme/ayu-vim'
    " Themes
    Plug 'smilga/tokyo-metro.vim'
    Plug 'NovaDev94/lightline-onedark'
    Plug 'NLKNguyen/papercolor-theme'
    Plug 'rakr/vim-one'
    " Fun
    Plug 'johngrib/vim-game-snake'
    " Dart
    "Plug 'dart-lang/dart-vim-plugin'
    " Test
    Plug 'janko/vim-test'
    " Time tracker
    Plug 'git-time-metric/gtm-vim-plugin'
    " Markdonw
    Plug 'godlygeek/tabular'
    Plug 'plasticboy/vim-markdown'
    Plug 'mattn/vim-goimports'
    Plug 'nikvdp/ejs-syntax'
    Plug 'stephpy/vim-yaml'
    Plug 'neoclide/coc-snippets'
    Plug 'airblade/vim-rooter'

    call plug#end()
