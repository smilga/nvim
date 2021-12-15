" Leader
let mapleader=","
let maplocalleader = ","
nmap <C-\> :Defx<cr>
nmap <C-_> :TagbarToggle<cr>

" Move through splits
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

" Clipboard yank
vnoremap <silent> y y:call ClipboardYank()<cr>
vnoremap <silent> d d:call ClipboardYank()<cr>
nnoremap <silent> p :call ClipboardPaste()<cr>p

" Emmet
imap <expr> <S-Tab>   emmet#expandAbbrIntelligent("\<tab>")
imap <C-l> <C-y>,

" Camelcase
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e

" Custom
nmap <leader>uu :call UUID()<cr>

if exists('*complete_info')
  inoremap <silent><expr> <cr> complete_info(['selected'])['selected'] != -1 ? "\<C-y>" : "\<C-g>u\<CR>"
endif
