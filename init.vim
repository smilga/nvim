source $HOME/.config/nvim/config/plugins.vimrc
source $HOME/.config/nvim/config/core.vimrc

for f in split(glob('$HOME/.config/nvim/config/plugin/*.vimrc'), '\n')
    exe 'source' f
endfor

for f in split(glob('$HOME/.config/nvim/config/misc/*.vimrc'), '\n')
    exe 'source' f
endfor

source $HOME/.config/nvim/config/keys.vimrc
