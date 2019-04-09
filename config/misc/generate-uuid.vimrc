function! UUID()
    :execute "r !uuidgen|sed 's/.*/&/'"
endfunction
