let g:ale_fix_on_save = 1
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
\   'javascript': [],
\   'yaml': ['prettier'],
\   'json': ['prettier'],
\   'php': ['php_cs_fixer'],
\   'typescript': ['prettier'],
\}

let g:ale_linters = {
\   'golang': ['golangcli-lint'],
\   'php': ['phpstan', 'phpmd', 'phpcs'],
\   'yaml': ['yamllint'],
\   'vue': [],
\}

" GO
let g:ale_go_gometalinter_options = '--fast --enable=staticcheck --enable=gosimple --enable=unused'

" PHP
" https://github.com/FriendsOfPHP/PHP-CS-Fixer
let g:ale_php_cs_fixer_options = '--rules=@Symfony,no_unused_imports,declare_strict_types,ordered_imports'

let g:ale_php_phpstan_executable = './vendor/phpstan/phpstan/bin/phpstan'
let g:ale_php_phpstan_level = 'max'

let g:ale_php_phpmd_executable = './vendor/phpmd/phpmd/src/bin/phpmd'

" JS
let g:ale_javascript_prettier_use_local_config = 1
" VUE
autocmd BufEnter *.vue ALEDisable
"autocmd BufLeave *.vue ALEEnable
