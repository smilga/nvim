local M = {}
function M.setup()
    vim.cmd [[
    map <silent> w <Plug>CamelCaseMotion_w
    map <silent> b <Plug>CamelCaseMotion_b
    map <silent> e <Plug>CamelCaseMotion_e
    imap <silent> <S-Left> <C-o><Plug>CamelCaseMotion_b
    imap <silent> <S-Right> <C-o><Plug>CamelCaseMotion_w
    ]]
end

return M
