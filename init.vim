source $HOME/.config/nvim/config/install-plugin-deps.vimrc
source $HOME/.config/nvim/config/plugins.vimrc
source $HOME/.config/nvim/config/core.vimrc
source $HOME/.config/nvim/config/keys.vimrc
source $HOME/.config/nvim/config/nvim.vimrc

for f in split(glob('$HOME/.config/nvim/config/plugin/*.vimrc'), '\n')
    exe 'source' f
endfor

for f in split(glob('$HOME/.config/nvim/config/misc/*.vimrc'), '\n')
    exe 'source' f
endfor

" To debub vim performance
"https://stackoverflow.com/questions/19030290/syntax-highlighting-causes-terrible-lag-in-vim/19031285#19031285
syntax sync minlines=100
syntax sync maxlines=240
set synmaxcol=800
