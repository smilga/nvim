" Show color group under the cursor
" vim:foldmethod=marker:foldlevel=0
function! SyntaxItem()
  return synIDattr(synID(line("."),col("."),1),"name")
endfunction

map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
