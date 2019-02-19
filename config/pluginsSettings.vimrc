" Ale
let g:ale_fix_on_save = 0
let g:ale_completion_enabled = 0
"let g:ale_linters_explicit = 1
let g:ale_sign_column_always = 1
let g:ale_sign_error = "•"
let g:ale_sign_warning = "•"
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
"let g:ale_set_quickfix = 1
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_set_loclist = 0
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier'],
\   'yaml': ['prettier'],
\   'json': ['prettier'],
\   'php': ['php_cs_fixer'],
\   'typescript': ['prettier'],
\}
" go
let g:ale_linters = {
\   'golang': ['golangcli-lint'],
\   'php': ['phpstan'],
\   'yaml': ['yamllint'],
\   'vue': [],
\}
let g:ale_go_gometalinter_options = '--fast --enable=staticcheck --enable=gosimple --enable=unused'
let g:ale_php_phpstan_executable = './vendor/phpstan/phpstan/bin/phpstan'
" js
let g:ale_javascript_prettier_use_local_config = 1
highlight ALEErrorSign ctermfg=9 ctermbg=none guifg=#C30500 guibg=none
highlight ALEWarningSign ctermfg=11 ctermbg=none guifg=#ED6237 guibg=none
let g:airline#extensions#ale#enabled = 1
" Disable ale for vue
autocmd BufEnter *.vue ALEDisable
"autocmd BufLeave *.vue ALEEnable

" Neosnippet
let g:neosnippet#enable_completed_snippet = 1
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

" Easy Tags
let g:easytags_file = './.tags'
let g:easytags_async = 1
let g:easytags_auto_highlight = 0

" Nerdtree
let NERDTreeShowHidden=1
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

" fzf
let $FZF_DEFAULT_COMMAND = 'rg --files --hidden'
let g:fzf_action = {
      \ 'ctrl-s': 'split',
      \ 'ctrl-v': 'vsplit'
      \ }
augroup fzf
  autocmd!
  autocmd! FileType fzf
  autocmd  FileType fzf set laststatus=0 noshowmode noruler
    \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
augroup END

" Ctrlp
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

" php
let php_folding=0
let g:DisableAutoPHPFolding = 1
let g:pdv_cfg_foldmarker = 0
au BufReadPost,BufNewFile *.php let g:pdv_cfg_foldmarker = 0
" autolaod contains file generated by php-ide-helper
""let g:phpcd_autoload_path = '.autoload.php'
""let g:php_namespace_sort_after_insert = 1
""let g:ale_php_phpstan_executable = './vendor/bin/phpstan'
""let g:pdv_template_dir = $HOME ."/.config/nvim/plugged/pdv/templates"

" Typescript
let g:nvim_typescript#javascript_support = 1
let g:nvim_typescript#vue_support = 0
let g:nvim_typescript#max_completion_detail = 10

" Vue vim
let g:vue_disable_pre_processors = 1

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

" Lightline
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

" deoplete.nvim recommend
set completeopt+=noselect
" Use deoplete.
let g:deoplete#enable_at_startup = 1
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
let g:deoplete#sources#go#gocode_binary = '/home/kaspars/go/bin/gocode'
let g:deoplete#sources#go#pointer = 1
let g:deoplete#sources#go#unimported_packages = 1

let g:deoplete#ignore_sources = get(g:, 'deoplete#ignore_sources', {})
let g:deoplete#ignore_sources.php = ['omni']
