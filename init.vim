"""" Smilga`s Neovim init.vim

"""" Plugins installation
call plug#begin()

	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	Plug 'ctrlpvim/ctrlp.vim'
	Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()

set clipboard^=unnamed,unnamedplus

"""" Plugins configuration
" Deoplete
let g:deoplete#enable_at_startup = 1

" Ctrl-P
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn|node_modules)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }


function! ClipboardYank()
  call system('xclip -i -selection clipboard', @@)
endfunction
function! ClipboardPaste()
  let @@ = system('xclip -o -selection clipboard')
endfunction

vnoremap <silent> y y:call ClipboardYank()<cr>
vnoremap <silent> d d:call ClipboardYank()<cr>
nnoremap <silent> p :call ClipboardPaste()<cr>p

let mapleader=","
nmap <leader>w :w<CR>
autocmd bufwritepost init.vim source $MYVIMRC

