" Leader
let mapleader=","
nmap <leader>w :w<CR>
nmap <leader>r :syntax sync fromstart<cr>
nmap <Leader><space> :nohlsearch<cr>
nmap <C-\> :NERDTreeToggle<cr>
nmap <C-_> :TagbarToggle<cr>
nmap <C-F> <Plug>CtrlSFPrompt
nmap <leader>k :BD<CR>
nmap <leader>q :q<CR>
nmap <leader>h :sp<CR>
nmap <leader>v :vs<CR>
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

" Easy align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" Nerdcomment
nnoremap <leader>c :call NERDComment(0,"toggle")<CR>

" Emmet
imap <expr> <S-Tab>   emmet#expandAbbrIntelligent("\<tab>")
imap <C-l> <C-y>,

" Camelcase
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e

" Ale
nmap <space>j :ALENext<cr>
nmap <space>k :ALEPrevious<cr>

" Custom
nmap <leader>uu :call UUID()<cr>

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

nnoremap ; :Denite buffer<CR>
nnoremap <leader>f :DeniteProjectDir file/rec<CR>
nnoremap <leader>s :<C-u>Denite grep:. -no-empty<CR>
nnoremap <leader>j :<C-u>DeniteCursorWord grep:.<CR>

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
