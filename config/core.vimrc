"Credit joshdick
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

filetype plugin on
let g:tokyonight_style = "night"
colorscheme tokyonight
set encoding=UTF-8

set cmdheight=1
set nocursorcolumn
set nocursorline
syntax sync minlines=256
set synmaxcol=300

set diffopt+=vertical
set nocompatible
set modelines=1
set noswapfile
set number relativenumber
set hidden
set termguicolors
set background=dark
set hidden
set splitbelow
set complete=.,w,b,u
set tabstop=4
set expandtab!
set softtabstop=4
set shiftwidth=4
set nowrap
set laststatus=2
set completeopt-=preview
set ignorecase
set smartcase
set grepprg=ag
set conceallevel=0 " dont hide quotes in json
set mouse=nicr " dont scroll outside vim

set list lcs=tab:>·

set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.
set shiftwidth=4    " Indents will have a width of 4
set softtabstop=4   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces
set ff=unix

set clipboard^=unnamed,unnamedplus
function! ClipboardYank()
  call system('xclip -i -selection clipboard', @@)
endfunction
function! ClipboardPaste()
  let @@ = system('xclip -o -selection clipboard')
endfunction

" Set tags folder into user space
let s:vim_tags = expand('~/.cache/tags')
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif
