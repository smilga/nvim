vim.g.mapleader = ','
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.cursorline = true
vim.opt.wrap = false
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.clipboard = {"unnamed", "unnamedplus"}
vim.opt.completeopt = { "menuone", "noselect" }
vim.opt.ignorecase = true
vim.opt.mouse = "a"
vim.opt.smartcase = true
vim.opt.termguicolors = true
vim.opt.writebackup = false
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"
vim.opt.updatetime = 100
vim.opt.showtabline = 0
vim.opt.undofile = true
vim.opt.timeoutlen = 300
vim.opt.wildignorecase = true
vim.opt.autoread = true

vim.lsp.set_log_level("WARN")

-- Ignore search
vim.opt.path:remove "/usr/include"
vim.opt.path:append "**"
vim.opt.wildignore:append "**/.git/*"
vim.opt.wildignore:append "**/build/*"

-- Highlight on yank
vim.cmd [[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]]
