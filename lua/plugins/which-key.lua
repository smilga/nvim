local wk = require("which-key")

wk.register({
  ["<leader>f"] = {"<cmd>Telescope find_files<cr>", "Find File"},
  ["<leader>w"] = { "<cmd>:write<cr>", "Save File" },
  ["<leader>c"] = {"<cmd>:BD<cr>", "Kill buffer"},
  ["<leader>q"] = {"<cmd>:q<cr>", "Quit window"},
  ["<leader>s"] = { "<cmd>lua require('spectre').open()<CR>", "Search & Replace" },
  ["g"] = {
	name = "+GoTo",
	a = {"<cmd>lua require'telescope.builtin'.lsp_code_actions{}<cr>", "Definitions"},
	d = {"<cmd>lua require'telescope.builtin'.lsp_definitions{}<cr>", "Definitions"},
	r = {"<cmd>lua require'telescope.builtin'.lsp_references{}<cr>", "References"},
	i = {"<cmd>lua require'telescope.builtin'.lsp_implementations{}<cr>", "Implementations"},
  },
  ["<leader>l"] = {"<cmd>Telescope buffers<cr>", "List Buffers"},
  ["<leader>p"] = {
    name = "Packer",
    c = { "<cmd>PackerCompile<cr>", "Compile" },
    i = { "<cmd>PackerInstall<cr>", "Install" },
    r = { "<cmd>lua require('lv-utils').reload_lv_config()<cr>", "Reload" },
    s = { "<cmd>PackerSync<cr>", "Sync" },
    u = { "<cmd>PackerUpdate<cr>", "Update" },
  },
  ["<leader>t"] = {
      name = "Trouble",
      r = { "<cmd>Trouble lsp_references<cr>", "References" },
      f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
      d = { "<cmd>Trouble lsp_document_diagnostics<cr>", "Diagnosticss" },
      q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
      l = { "<cmd>Trouble loclist<cr>", "LocationList" },
      w = { "<cmd>Trouble lsp_workspace_diagnostics<cr>", "Diagnosticss" },
  },
  ["K"] = { "<cmd>lua vim.lsp.buf.hover()<CR>", "Documentation" },
  ["<C-n>"] = { "<cmd>:NvimTreeFindFileToggle<cr>", "File Tree" },
  ["<leader>h"] = { "<cmd>:noh<cr>", "Clear highlight" },
})
