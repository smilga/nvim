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
    " Tags
    Plug 'xolox/vim-misc'
    Plug 'xolox/vim-easytags'
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
    " Find file
    Plug 'kien/ctrlp.vim'
    " Fuzzy finder
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    " Distraction free mode
    Plug 'junegunn/goyo.vim'
    " Grep tool - super fast
    Plug 'jremmen/vim-ripgrep'
    " Linting
    Plug 'w0rp/ale'
    " Python
    Plug 'neovim/pynvim'
    " Autocomplete
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'zchee/deoplete-go', { 'do': 'make'}
    Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }
    " Quick fix buffer edit
    Plug 'stefandtw/quickfix-reflector.vim'
    " Highlights ex commands
    Plug 'markonm/traces.vim'
    " Show vim history
    Plug 'junegunn/gv.vim'

    " Typescript
    Plug 'HerringtonDarkholme/yats.vim'
    Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
    " Golang
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
    " Html
    Plug 'othree/html5.vim'
    " Vue
    Plug 'posva/vim-vue'
    " PHP
    Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install'}
    Plug 'spf13/PIV'
    Plug 'arnaud-lb/vim-php-namespace'
    " JS
    Plug 'isRuslan/vim-es6'
    Plug 'pangloss/vim-javascript'
    " Dockerfile
    Plug 'ekalinin/Dockerfile.vim'
    " Themes
    Plug 'smilga/tokyo-metro.vim'
    Plug 'itchyny/lightline.vim'
    Plug 'maximbaz/lightline-ale'
    Plug 'NovaDev94/lightline-onedark'
    " Fun
    Plug 'johngrib/vim-game-snake'

call plug#end()
