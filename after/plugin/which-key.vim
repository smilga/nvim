lua << EOF

local wk = require("which-key")
--
wk.register({
  ["<leader>"] = {
    ['/'] = { ":CommentToggle<cr>", "Comment"},
    ['<space>'] = { ":nohlsearch<cr>", "No highlight" },
    q = { ":close<cr>", "Close" },
    e = { ":Defx `expand('%:p:h')` -search=`expand('%:p')`<CR>", " File Explorer" },
    c = { ":BD<cr>", "Kill buffer" },
    w = { ":w<cr>", "Save" },
    f = { "<cmd>Telescope find_files<cr>", "Find File" },
    s = {
      name = "+Search",
      r = { ":lua require('spectre').open()<CR>", "Replace" },
      t = { "<cmd>Telescope live_grep<cr>", "Text"},
      c = { "<cmd>lua require('telescope.builtin').commands()", "Commands"},
      b = { "<cmd>Telescope buffers<cr>", "Buffers" },
    },
    l = {
      name = "+LSP",
      a = {":<c-u>Lspsaga code_action<cr>", "Code Action" },
      c = {":<c-u>Lspsaga range_code_action<cr>", "Range Code Action" },
      r = { "<cmd>lua require('lspsaga.rename').rename()", "Rename" },
    },
    g = {
      name = "+Git",
      g = { ":LazyGit<cr>", "Lazy Git" }
    },
    t = {
      name = "+Trouble",
      d = { "<cmd>TroubleToggle document_diagnostics<cr>", "Document Diagnostics" },
      w = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "Workspace Diagnostics" },
      }
  },
})

wk.register({
  ["<leader>"] = {
    ['/'] = { ":CommentToggle<cr>", "Comment"},
  },
}, {
    mode = 'v'
})
--wk.register({
--  f = {
--    name = "file", -- optional group name
--    f = { "<cmd>Telescope find_files<cr>", "Find File" }, -- create a binding with label
--    r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File", noremap=false, buffer = 123 }, -- additional options for creating the keymap
--    n = { "New File" }, -- just a label. don't create any mapping
--    e = "Edit File", -- same as above
--    ["1"] = "which_key_ignore",  -- special label to hide it in the popup
--    b = { function() print("bar") end, "Foobar" } -- you can also pass functions!
--  },
--}, { prefix = "<leader>" })
EOF
