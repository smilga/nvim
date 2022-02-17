 vim.api.nvim_command([[
autocmd FileType html,css, vue EmmetInstall
]])

vim.cmd([[
imap <expr> <S-Tab>   emmet#expandAbbrIntelligent("\<tab>")
]])
