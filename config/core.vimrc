    syntax enable
colorscheme tokyo-metro
filetype plugin on

set diffopt+=vertical
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
set conceallevel=0 " dont hide quotes in json

set list lcs=tab:>·

set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.
set shiftwidth=4    " Indents will have a width of 4
set softtabstop=4   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces
set ff=unix

set clipboard^=unnamed,unnamedplus
function! ClipboardYank()
  call system('xclip -i -selection clipboard', @@)
endfunction
function! ClipboardPaste()
  let @@ = system('xclip -o -selection clipboard')
endfunction

" Go tabs
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4
"autocmd FileType go nmap <buffer> <leader>g :GoDef<cr>
"Disable unused imports because highlight does not go away
"autocmd BufWritePre,BufRead *.php :UnusedImports

" Reload file
au FocusGained,BufEnter * :silent! !
set statusline+=%{gutentags#statusline()}

" Set tags folder into user space
let s:vim_tags = expand('~/.cache/tags')
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif

let g:gutentags_cache_dir = s:vim_tags
let g:gutentags_ctags_tagfile = '.tags'
set tags=./.tags;,.tags

let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
" Specifies a directory in which to create all the tags files
let g:gutentags_cache_dir = s:vim_tags

let g:gutentags_auto_add_gtags_cscope = 0
