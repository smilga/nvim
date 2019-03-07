set nocp
runtime! plugin/ctrlp.vim
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.yardoc/*,*/node_modules/*,*/vendor/*,*.exe,*.so,*.dat
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\node_modules$\|\.hg$\|\.svn$\|\.yardoc$',
  \ 'file': '\.exe$\|\.so$\|\.dat$'
  \ }
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
