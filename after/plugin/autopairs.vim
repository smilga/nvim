lua << EOF
require('nvim-autopairs').setup{}
require("nvim-treesitter.configs").setup { autopairs = { enable = true } }
-- If you want insert `(` after select function or method item
local map_char = {
    all = "(",
    tex = "{",
}
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp = require('cmp')
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done { map_char = map_char })

EOF
