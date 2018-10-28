
"""" Plugins
call plug#begin()

    " General plugins
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'Shougo/neosnippet'
    Plug 'Shougo/neosnippet-snippets'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'scrooloose/nerdtree'
    Plug 'dyng/ctrlsf.vim'
    Plug 'qpkorr/vim-bufkill'
    Plug 'kshenoy/vim-signature'
    Plug 'jiangmiao/auto-pairs'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'tpope/vim-surround'
    Plug 'mattn/emmet-vim'
    Plug 'tpope/vim-fugitive'
    Plug 'gregsexton/gitv', {'on': ['Gitv']}
    Plug 'ekalinin/Dockerfile.vim'
    Plug 'diepm/vim-rest-console'
    Plug 'dkprice/vim-easygrep'
    Plug 'xolox/vim-easytags'
    Plug 'xolox/vim-misc'
    Plug 'majutsushi/tagbar'
    Plug 'junegunn/vim-easy-align'
    Plug 'ntpeters/vim-better-whitespace'
    Plug 'tpope/vim-commentary'
    Plug 'w0rp/ale'
    Plug 'sbdchd/neoformat'
    Plug 'bkad/CamelCaseMotion'
    "Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    "Plug 'junegunn/fzf.vim'
    Plug 'pangloss/vim-javascript'
    Plug 'kien/ctrlp.vim'
    Plug 'skwp/greplace.vim'

    " Themes
    Plug 'vim-scripts/AfterColors.vim'
    Plug 'arcticicestudio/nord-vim'
    Plug 'jacoborus/tender.vim'
    Plug 'ayu-theme/ayu-vim'
    Plug 'cocopon/iceberg.vim'
    Plug 'toothpaste-theme/toothpaste'
    Plug 'raphamorim/lucario'
    Plug 'ajh17/Spacegray.vim'
    Plug 'gosukiwi/vim-atom-dark'
    Plug 'morhetz/gruvbox'
    Plug 'nanotech/jellybeans.vim'
    Plug 'rakr/vim-one'
    Plug 'drewtempelmeyer/palenight.vim'
    Plug 'mhartington/oceanic-next'
    Plug 'christoomey/vim-sort-motion'
    Plug 'ruanyl/vim-sort-imports'
    Plug 'smilga/tokyo-metro.vim'


    " Filetype specific
    "
    " Typescript
    Plug 'HerringtonDarkholme/yats.vim'
    Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
    "Plug 'Quramy/tsuquyomi'
    "Plug 'Shougo/vimproc.vim'

    " Golang
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
    Plug 'zchee/deoplete-go', { 'do': 'make'}

    "
    Plug 'othree/html5.vim'

    " Vue
    Plug 'posva/vim-vue'

    " PHP
    Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install'}
    Plug 'spf13/PIV'
    Plug 'arnaud-lb/vim-php-namespace'

    "Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }
    " HTML
    Plug 'othree/html5.vim'

call plug#end()

set nocompatible
set modelines=1
set noswapfile
set number relativenumber
set hidden
set termguicolors
set background=dark
set hidden
set splitbelow
set complete=.,w,b,u
set tabstop=4
set expandtab!
set softtabstop=4
set shiftwidth=4
set nowrap
set laststatus=2
set completeopt-=preview
set ignorecase
set smartcase
set grepprg=ag

set list lcs=tab:>·

set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.
set shiftwidth=4    " Indents will have a width of 4
set softtabstop=4   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces
set ff=unix

filetype plugin on

if (empty($TMUX))
  if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
	  set termguicolors
  endif
endif

syntax enable
colorscheme tokyo-metro

highlight LineNr guifg=#888888 guibg=bg
let g:hybrid_transparent_background = 1

let g:oceanic_next_terminal_bold = 0
let g:oceanic_next_terminal_italic = 1
let g:airline_theme='one'

let g:nvim_typescript#javascript_support = 1
let g:nvim_typescript#vue_support = 0

let g:tsuquyomi_javascript_support = 1
let g:tsuquyomi_use_vimproc=1



let $FZF_DEFAULT_COMMAND = 'ag -g ""'

" ale
let g:ale_fix_on_save = 0
let g:ale_completion_enabled = 0
let g:ale_linters_explicit = 1
let g:ale_sign_column_always = 1

" for golang
let g:ale_linters = {
\   'go': ['gometalinter'],
\   'javascript': ['eslint'],
\   'php': ['phpstan'],
\   'vue': [],
\}
let g:ale_go_gometalinter_options = '--fast --enable=staticcheck --enable=gosimple --enable=unused'

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier'],
\   'json': ['prettier'],
\   'php': ['php_cs_fixer'],
\   'typescript': ['prettier'],
\}
let g:ale_javascript_prettier_use_local_config = 1

" Disable ale for vue
autocmd BufEnter *.vue ALEDisable
autocmd BufLeave *.vue ALEEnable

let g:deoplete#ignore_sources = get(g:, 'deoplete#ignore_sources', {})
let g:deoplete#ignore_sources.php = ['omni']

"let g:import_sort_auto = 1

" Neo snippet keys
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

let g:ale_sign_error = "•"
let g:ale_sign_warning = "•"
highlight ALEErrorSign ctermfg=9 ctermbg=none guifg=#C30500 guibg=none
highlight ALEWarningSign ctermfg=11 ctermbg=none guifg=#ED6237 guibg=none
let g:airline#extensions#ale#enabled = 1
" ale format
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_set_loclist = 0
"let g:ale_set_quickfix = 1
"
" move through splits
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

" clipboard
vnoremap <silent> y y:call ClipboardYank()<cr>
vnoremap <silent> d d:call ClipboardYank()<cr>
nnoremap <silent> p :call ClipboardPaste()<cr>p
set clipboard^=unnamed,unnamedplus
function! ClipboardYank()
  call system('xclip -i -selection clipboard', @@)
endfunction
function! ClipboardPaste()
  let @@ = system('xclip -o -selection clipboard')
endfunction

" emmet
imap   <S-Tab>   <plug>(emmet-expand-abbr)
imap <C-l> <C-y>,

" php
let g:DisableAutoPHPFolding = 1
let php_folding=0
let g:pdv_cfg_foldmarker = 0
au BufReadPost,BufNewFile *.php let g:pdv_cfg_foldmarker = 0
" autolaod contains file generated by php-ide-helper
let g:phpcd_autoload_path = '.autoload.php'
let g:php_namespace_sort_after_insert = 1

let g:ale_php_phpstan_executable = './vendor/bin/phpstan'

let g:pdv_template_dir = $HOME ."/.config/nvim/plugged/pdv/templates"
nnoremap <leader>dx :call pdv#DocumentCurrentLine()<CR>

" ctrlp
set nocp
runtime! plugin/ctrlp.vim
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.yardoc/*,*/node_modules/*,*/vendor/*,*.exe,*.so,*.dat
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\node_modules$\|\.hg$\|\.svn$\|\.yardoc$',
  \ 'file': '\.exe$\|\.so$\|\.dat$'
  \ }
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

" nerdtree
let NERDTreeShowHidden=1
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'


let g:nvim_typescript#max_completion_detail = 10

" nerdcomment
nnoremap ,c :call NERDComment(0,"toggle")<CR>

" easy align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" close scracch buffer
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

let g:neosnippet#enable_completed_snippet = 1
" Tags
let g:easytags_file = './tags'
let g:easytags_async = 1
let g:easytags_auto_highlight = 0


let g:grep_cmd_opts = '--line-numbers --noheading'

let g:node_host_prog = '/home/kaspars/npm/bin/neovim-node-host'

"""" Plugins configuration
" Deoplete
let g:deoplete#enable_at_startup = 1

" GO-Vim
let g:go_fmt_command = "goimports"
let g:go_highlight_types = 1
let g:go_highlight_fields = 0
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 0
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_auto_sameids = 0
let g:go_auto_type_info = 1
let g:go_metalinter_enabled = []
let g:go_metalinter_autosave = 0

" Easy grep
let g:EasyGrepFilesToExclude='vendor,node_modules,public,coverage,*.lock,*.log'
let g:EasyGrepReplaceWindowMode = 2

" vue vim
let g:vue_disable_pre_processors = 1

autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4
"autocmd FileType go nmap <buffer> <leader>g :GoDef<cr>


" leader
let mapleader=","
nmap <leader>w :w<CR>
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <leader>r :syntax sync fromstart<cr>
nmap <leader>l :CtrlPBuffer<cr>
nmap <Leader><space> :nohlsearch<cr>
nmap <C-\> :NERDTreeToggle<cr>
nmap <C-_> :TagbarToggle<cr>
nmap <C-F> <Plug>CtrlSFPrompt
nmap <leader>k :BD<CR>
nmap <leader>q :q<CR>
nmap <leader>s :sp<CR>
nmap <leader>v :vs<CR>
nmap <leader>ff :ALEFix<CR>

"autocmd bufwritepost init.vim source $MYVIMRC
"
"MACRO
let @x = ''

" vim:foldmethod=marker:foldlevel=0
function! SyntaxItem()
  return synIDattr(synID(line("."),col("."),1),"name")
endfunction

map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
"
set diffopt+=vertical
