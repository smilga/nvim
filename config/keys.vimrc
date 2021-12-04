" Leader
let mapleader=","
let maplocalleader = ","
nmap <leader>w :w<CR>
nmap <leader>r :syntax sync fromstart<cr>
nmap <Leader><space> :nohlsearch<cr>
nmap <C-\> :Defx<cr>
nmap <C-_> :TagbarToggle<cr>
nmap <C-F> <Plug>CtrlSFPrompt
nmap <leader>k :BD<CR>
nmap <leader>q :close<CR>
nmap <leader>h :sp<CR>
nmap <leader>v :vs<CR>
nmap <leader>o :Defx `expand('%:p:h')` -search=`expand('%:p')`<CR>

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

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" GoTo code navigation.
nmap <silent>gd <Plug>(coc-definition)
nmap <silent>gy <Plug>(coc-type-definition)
nmap <silent>gi <Plug>(coc-implementation)
nmap <silent>rr <Plug>(coc-references)

" Find files using Telescope command-line sugar.
nnoremap <leader>ff :Telescope find_files<CR>
nnoremap <leader>fg :Telescope live_grep<CR>
nnoremap <leader>l :Telescope buffers<CR>
nnoremap <leader>fd :Telescope coc definitions<CR>
nnoremap <leader>fr :Telescope coc references<CR>
nnoremap <leader>fa :Telescope coc file_code_actions<CR>
nnoremap <leader>fc <cmd>lua require('telescope.builtin').commands()<cr>

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

if exists('*complete_info')
  inoremap <silent><expr> <cr> complete_info(['selected'])['selected'] != -1 ? "\<C-y>" : "\<C-g>u\<CR>"
endif
