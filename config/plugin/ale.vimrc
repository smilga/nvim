let g:ale_fix_on_save = 1
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_enter = 1
let g:ale_lint_on_save = 1
let g:ale_completion_enabled = 0
let g:ale_linters_explicit = 1
let g:ale_sign_column_always = 1
let g:ale_sign_error = "•"
let g:ale_sign_warning = "•"
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
"let g:ale_set_quickfix = 1
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_set_loclist = 0
highlight ALEErrorSign ctermfg=9 ctermbg=none guifg=#C30500 guibg=none
highlight ALEWarningSign ctermfg=11 ctermbg=none guifg=#ED6237 guibg=none

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\   'yaml': ['prettier'],
\   'json': ['prettier'],
\   'php': ['php_cs_fixer'],
\   'typescript': ['eslint'],
\   'vue': ['eslint'],
\}

let g:ale_linters = {
\   'javascript': ['eslint'],
\   'go': ['golangci-lint'],
\   'php': ['phpstan', 'phpmd', 'phpcs'],
\   'yaml': ['yamllint'],
\   'vue': ['eslint'],
\}

" https://github.com/FriendsOfPHP/PHP-CS-Fixer
let g:ale_php_phpcs_use_global = 1
let g:ale_php_cs_fixer_use_global = 1
let g:ale_php_cs_fixer_options = '--rules=@Symfony,no_unused_imports,declare_strict_types,ordered_imports'
let g:ale_go_golangci_lint_package = 1
let g:ale_go_golangci_lint_options = '--fast'

let g:ale_php_phpstan_configuration = 'phpstan.neon'
let g:ale_php_phpstan_level = 'max'

" JS
let g:ale_javascript_prettier_use_local_config = 1
" VUE
autocmd BufEnter *.vue ALEDisable
"autocmd BufLeave *.vue ALEEnable
