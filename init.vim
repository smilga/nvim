"""" Smilga`s Neovim init.vim

set nocompatible
set modelines=1
set noswapfile
set number relativenumber
highlight LineNr guifg=#d7d7d7 guibg=bg  

set hidden

set termguicolors
syntax enable
set background=dark
colorscheme one
let g:enable_bold_font = 1
let g:enable_italic_font = 1
let g:hybrid_transparent_background = 1
let g:airline_theme='onedark'

highlight ALEWarning ctermbg=DarkMagenta

let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1

imap   <S-Tab>   <plug>(emmet-expand-abbr)

set completeopt-=preview
" Search ignore case
:set ignorecase
:set smartcase

nnoremap <leader>g <C-]>
nnoremap <leader>b <C-t>

set nocp
runtime! plugin/ctrlp.vim
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.yardoc/*,*/node_modules/*,*/vendor/*,*.exe,*.so,*.dat
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\node_modules$\|\.hg$\|\.svn$\|\.yardoc$',
  \ 'file': '\.exe$\|\.so$\|\.dat$'
  \ }

let NERDTreeShowHidden=1
" turn off autocomplete preview

" Let switch buffer if unsaved changes
set hidden

"let g:airline#extensions#tabline#enabled = 1

" Autocomplete configuration
if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
endif

" omnifuncs
augroup omnifuncs
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
augroup end
" tern
if exists('g:plugs["tern_for_vim"]')
  let g:tern_show_argument_hints = 'on_hold'
  let g:tern_show_signature_in_pum = 1
  autocmd FileType javascript setlocal omnifunc=tern#Complete
endif

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif " close scratch buffer
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
let g:airline#extensions#ale#enabled = 1
set splitbelow

let g:go_autodetect_gopath = 1
let g:ale_lint_on_save = 1
" Write this in your vimrc file
let g:ale_lint_on_text_changed = 'never'
" You can disable this option too
" if you don't want linters to run on opening a file
let g:ale_lint_on_enter = 0

let g:ale_set_signs = 1
let g:ale_sign_column_always = 1
let g:ale_warn_about_trailing_whitespace = 0
hi ALEErrorSign   ctermfg=15 ctermbg=236
hi ALEInfoSign    ctermfg=15 ctermbg=236
hi ALEWarningSign ctermfg=15 ctermbg=236

let g:ale_linters = {
  \ 'go': ['gometalinter'],
  \ 'javascript': ['eslint']
  \ }
let g:ale_go_gometalinter_options = '
  \ --aggregate
  \ --disable=gas
  \ --disable=goconst
  \ --disable=gocyclo
  \ --disable=vetshadow
  \ --disable=gotype
  \ --enable=misspell
  \ --enable=unused
  \ --fast
  \ --sort=line
  \ --tests
  \ --vendor
  \ '


let g:ale_linters = {
\   'php': ['php'],
\}
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0

" Emmet
imap <C-l> <C-y>,

" Vue linter
let g:LanguageClient_serverCommands = {
    \ 'vue': ['vls']
    \ }

let g:deoplete#sources#ternjs#filetypes = [
                \ 'vue',
                \ 'js',
                \ ]

let g:ale_sign_column_always = 1

let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "~",
    \ "Staged"    : "+",
    \ "Untracked" : "!",
    \ "Renamed"   : ">",
    \ "Unmerged"  : "=",
    \ "Deleted"   : "x",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

set complete=.,w,b,u

set tabstop=4
set expandtab!
set softtabstop=4
set shiftwidth=4
set nowrap

set laststatus=2

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K> 
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

let g:deoplete#sources#ternjs#tern_bin = '/home/kaspars/npm/lib/node_modules/tern/bin/tern'
nnoremap ,c :call NERDComment(0,"toggle")<CR>

"""" Plugins installation
call plug#begin()

	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'zchee/deoplete-go', { 'do': 'make'}
    Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'Shougo/neosnippet'
    Plug 'Shougo/neosnippet-snippets'
	Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
	Plug 'crusoexia/vim-monokai'
    Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
    Plug 'posva/vim-vue'
	Plug 'scrooloose/nerdtree'
    Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'dyng/ctrlsf.vim'
	Plug 'qpkorr/vim-bufkill'
    Plug 'kshenoy/vim-signature'
    Plug 'w0rp/ale'
    Plug 'airblade/vim-gitgutter'
    Plug 'kristijanhusak/vim-hybrid-material'
    Plug 'pangloss/vim-javascript'
    Plug 'jiangmiao/auto-pairs'
	Plug 'mhartington/oceanic-next'
	Plug 'terryma/vim-multiple-cursors'
	Plug 'tpope/vim-surround'
    Plug 'mattn/emmet-vim'
    Plug 'scrooloose/nerdcommenter'
    Plug 'tpope/vim-fugitive'
	Plug 'ekalinin/Dockerfile.vim'
    Plug 'diepm/vim-rest-console'
	Plug 'skywind3000/gutentags_plus'
    Plug 'hushicai/tagbar-javascript.vim'
    Plug 'Quramy/tsuquyomi'
    Plug 'leafgarland/typescript-vim'
    Plug 'skwp/greplace.vim'
    Plug 'ludovicchabant/vim-gutentags'
    Plug 'majutsushi/tagbar'

call plug#end()

set clipboard^=unnamed,unnamedplus

let g:neosnippet#enable_completed_snippet = 1
" enable gtags module
let g:gutentags_modules = ['ctags', 'gtags_cscope']

" config project root markers.
let g:gutentags_project_root = ['.root']

" generate datebases in my cache directory, prevent gtags files polluting my project
let g:gutentags_cache_dir = expand('~/.cache/tags')

" forbid gutentags adding gtags databases
let g:gutentags_auto_add_gtags_cscope = 0

set grepprg=ag

let g:grep_cmd_opts = '--line-numbers --noheading'

"""" Plugins configuration
" Deoplete
let g:deoplete#enable_at_startup = 1
let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]

" Ctrl-P
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn|node_modules)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

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
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4 
autocmd FileType go nmap <buffer> <leader>g :GoDef<cr>

function! ClipboardYank()
  call system('xclip -i -selection clipboard', @@)
endfunction
function! ClipboardPaste()
  let @@ = system('xclip -o -selection clipboard')
endfunction

vnoremap <silent> y y:call ClipboardYank()<cr>
vnoremap <silent> d d:call ClipboardYank()<cr>
nnoremap <silent> p :call ClipboardPaste()<cr>p

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
