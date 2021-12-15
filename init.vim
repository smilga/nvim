" source $HOME/.config/nvim/config/plugins.vimrc
" source $HOME/.config/nvim/config/core.vimrc

" for f in split(glob('$HOME/.config/nvim/config/plugin/*.vimrc'), '\n')
"     exe 'source' f
" endfor

" for f in split(glob('$HOME/.config/nvim/config/misc/*.vimrc'), '\n')
"     exe 'source' f
" endfor

" source $HOME/.config/nvim/config/keys.vimrc

"TODO put this somewhere else
" let g:PhpactorRootDirectoryStrategy=function("FindRootDirectory")
runtime ./plug.vim
runtime ./settings.vim

if has("unix")
  let s:uname = system("uname -s")
  if s:uname == "Darwin\n"
    runtime ./macos.vim
  endif
endif

runtime ./keys.vim
runtime ./indent.vim
