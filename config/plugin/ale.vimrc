let g:ale_fix_on_save = 1
let g:ale_lint_on_text_changed = 1
let g:ale_lint_on_enter = 1
let g:ale_lint_on_save = 1
let g:ale_completion_enabled = 0
let g:ale_sign_column_always = 1
let g:ale_sign_error = "✘"
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
\   'javascript': ['eslint', 'trim_whitespace', 'remove_trailing_lines'],
\   'json': ['prettier'],
\   'typescript': ['eslint'],
\   'php': ['php_cs_fixer'],
\   'vue': ['eslint'],
\   'dart': ['dartfmt'],
\   'c': ['clang-format'],
\   'go': ['gofmt', 'goimports'],
\}
"\   'php': ['php_cs_fixer'],

let g:ale_linters = {
\   'javascript': ['eslint'],
\   'go': ['golangci-lint', 'gopls'],
\   'vue': ['eslint'],
\   'dart': ['dartanalyzer'],
\}

let g:ale_go_golangci_lint_package = 0

let g:ale_php_phpstan_configuration = 'phpstan.neon'
let g:ale_php_phpstan_level = 'max'

" JS
let g:ale_javascript_prettier_use_local_config = 1
" VUE
"autocmd BufEnter *.vue ALEDisable
"autocmd BufLeave *.vue ALEEnable
let g:ale_linters_explicit = 1
let g:ale_disable_lsp = 1
