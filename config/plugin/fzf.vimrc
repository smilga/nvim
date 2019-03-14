let $FZF_DEFAULT_COMMAND = 'rg --files --hidden'
let g:fzf_action = {
      \ 'ctrl-s': 'split',
      \ 'ctrl-v': 'vsplit'
      \ }
augroup fzf
  autocmd!
  autocmd! FileType fzf
  autocmd  FileType fzf set laststatus=0 noshowmode noruler
    \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
augroup END

let g:fzf_buffers_jump = 1
let g:fzf_tags_command = 'ctags -R'
