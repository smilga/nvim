set completeopt+=noselect
let g:deoplete#enable_at_startup = 1
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
let g:deoplete#sources#go#gocode_binary = '/home/kaspars/go/bin/gocode'
let g:deoplete#sources#go#pointer = 1
let g:deoplete#sources#go#unimported_packages = 1

let g:deoplete#ignore_sources = get(g:, 'deoplete#ignore_sources', {})
let g:deoplete#ignore_sources.php = ['omni']
