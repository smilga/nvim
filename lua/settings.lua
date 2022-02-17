vim.g.mapleader = ','
vim.g.autoindent = true
vim.opt.cursorline = true
vim.opt.wrap = false
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.clipboard = "unnamedplus"
vim.opt.completeopt = { "menuone", "noselect" }
vim.opt.ignorecase = true
vim.opt.mouse = "a"
vim.opt.showtabline = 2
vim.opt.smartcase = true
vim.opt.termguicolors = true
vim.opt.writebackup = false
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.signcolumn = "yes"
vim.opt.updatetime = 100
vim.opt.showtabline = 0

-- -- Load colorscheme, there are more fox themes check them
-- require('nightfox').load('nightfox')

-- Example config in Lua
vim.g.tokyonight_style = "light"
vim.g.tokyonight_italic_functions = true
vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }

-- Change the "hint" color to the "orange" color, and make the "error" color bright red
vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }

-- Load the colorscheme
vim.cmd[[colorscheme tokyonight]]
