" Leader
let mapleader=","
nmap <leader>w :w<CR>
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <leader>r :syntax sync fromstart<cr>
nmap <leader>l :Buffer<cr>
nmap <Leader><space> :nohlsearch<cr>
nmap <C-\> :NERDTreeToggle<cr>
nmap <C-_> :TagbarToggle<cr>
nmap <C-F> <Plug>CtrlSFPrompt
nmap <leader>k :BD<CR>
nmap <leader>q :q<CR>
nmap <leader>s :sp<CR>
nmap <leader>v :vs<CR>
nmap <leader>ff :ALEFix<CR>
nmap <leader>i :call PhpInsertUse()<CR>
nmap <leader>go :Goyo<CR>

" Move through splits
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

" Clipboard yank
vnoremap <silent> y y:call ClipboardYank()<cr>
vnoremap <silent> d d:call ClipboardYank()<cr>
nnoremap <silent> p :call ClipboardPaste()<cr>p

" Fzf
nnoremap <c-p> :FZF<cr>
nmap <leader>l :Buffer<cr>

" Easy align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" Nerdcomment
nnoremap <leader>c :call NERDComment(0,"toggle")<CR>

" Emmet
imap <expr> <S-Tab>   emmet#expandAbbrIntelligent("\<tab>")
imap <C-l> <C-y>,

" Neosnippet
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?

" Camelcase
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e

" Php
nnoremap <leader>dx :call pdv#DocumentCurrentLine()<CR>
autocmd FileType php noremap <Leader>i :call PhpInsertUse()<CR>

" Ale
nmap <space>j :ALENext<cr>
nmap <space>k :ALEPrevious<cr>

" Custom
nmap <space>uu :call UUID()<cr>

" Coc snippets
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)
