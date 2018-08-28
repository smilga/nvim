", Smilga`s Neovim init.vim
"
"""" Plugins installation
call plug#begin()

    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'zchee/deoplete-go', { 'do': 'make'}
    Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
    Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'Shougo/neosnippet'
    Plug 'Shougo/neosnippet-snippets'
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'posva/vim-vue'
    Plug 'scrooloose/nerdtree'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'dyng/ctrlsf.vim'
    Plug 'qpkorr/vim-bufkill'
    Plug 'kshenoy/vim-signature'
    Plug 'airblade/vim-gitgutter'
    Plug 'kristijanhusak/vim-hybrid-material'
    Plug 'pangloss/vim-javascript'
    Plug 'jiangmiao/auto-pairs'
    Plug 'mhartington/oceanic-next'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'tpope/vim-surround'
    Plug 'mattn/emmet-vim'
    Plug 'tpope/vim-fugitive'
    Plug 'ekalinin/Dockerfile.vim'
    Plug 'diepm/vim-rest-console'
    Plug 'skywind3000/gutentags_plus'
    Plug 'hushicai/tagbar-javascript.vim'
    Plug 'Quramy/tsuquyomi'
    Plug 'HerringtonDarkholme/yats.vim'
    Plug 'leafgarland/typescript-vim'
    Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
    Plug 'mhartington/deoplete-typescript', { 'do': 'npm install -g typescript', 'for': 'typescript' }
    Plug 'dkprice/vim-easygrep'
    Plug 'skwp/greplace.vim'
    Plug 'ludovicchabant/vim-gutentags'
    Plug 'majutsushi/tagbar'
    Plug 'junegunn/vim-easy-align'
    Plug 'ntpeters/vim-better-whitespace'
    Plug 'tpope/vim-commentary'
    Plug 'StanAngeloff/php.vim'
    Plug 'stephpy/vim-php-cs-fixer'
    Plug 'HerringtonDarkholme/yats.vim'
    Plug 'othree/html5.vim'
    Plug 'othree/yajs.vim'
    "Plug 'Yggdroot/indentLine'
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
    Plug 'jelera/vim-javascript-syntax'
    Plug 'w0rp/ale'
    Plug 'sbdchd/neoformat'
    Plug 'vim-scripts/AfterColors.vim'
    Plug 'StanAngeloff/php.vim'

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
colorscheme palenight

highlight LineNr guifg=#888888 guibg=bg
let g:hybrid_transparent_background = 1

let g:oceanic_next_terminal_bold = 0
let g:oceanic_next_terminal_italic = 1
let g:airline_theme='one'

" ale
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 0
let g:ale_linters_explicit = 1

let g:ale_linters = {
\   'javascript': ['eslint'],
\   'php': ['phan']
\}

"let g:ale_sign_error = '❌'
"let g:ale_sign_warning = '❌'
"hi link ALEErrorSign    Error
"hi link ALEWarningSign  Warning
let g:ale_sign_error = "•"
let g:ale_sign_warning = "•"
highlight ALEErrorSign ctermfg=9 ctermbg=none guifg=#C30500 guibg=none
highlight ALEWarningSign ctermfg=11 ctermbg=none guifg=#ED6237 guibg=none
"highlight clear ALEErrorSign
"highlight clear ALEWarningSign
"let g:airline#extensions#ale#enabled = 1
" ale format
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
"let g:ale_set_loclist = 0
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

" ctrlp
set nocp
runtime! plugin/ctrlp.vim
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.yardoc/*,*/node_modules/*,*/vendor/*,*.exe,*.so,*.dat
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\node_modules$\|\.hg$\|\public$\|\.svn$\|\.yardoc$',
  \ 'file': '\.exe$\|\.so$\|\.dat$'
  \ }
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

" nerdtree
let NERDTreeShowHidden=1
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

" nerdcomment
nnoremap ,c :call NERDComment(0,"toggle")<CR>

" easy align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" close scracch buffer
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

"let g:deoplete#sources#ternjs#filetypes = [ 'vue', 'js', ]
"let g:deoplete#sources#ternjs#tern_bin = '/home/kaspars/npm/lib/node_modules/tern/bin/tern'

let g:neosnippet#enable_completed_snippet = 1
" enable gtags module
let g:gutentags_modules = ['ctags', 'gtags_cscope']
let g:gutentags_project_root = ['.root']
let g:gutentags_cache_dir = expand('~/.cache/tags')
let g:gutentags_auto_add_gtags_cscope = 0

let g:grep_cmd_opts = '--line-numbers --noheading'

"""" Plugins configuration
" Deoplete
let g:deoplete#enable_at_startup = 1
let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]

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

" Easy grep
"let g:EasyGrepFilesToExclude='vendor,node_modules,coverage,*.lock,*.log

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

"autocmd bufwritepost init.vim source $MYVIMRC

" vim:foldmethod=marker:foldlevel=0
"
set diffopt+=vertical
