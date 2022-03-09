local M = {}

function M.setup()
  local whichkey = require "which-key"

  local conf = {
    window = {
      border = "single", -- none, single, double, shadow
      position = "bottom", -- bottom, top
    },
  }

  local opts = {
    mode = "n", -- Normal mode
    prefix = "<leader>",
    buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
    silent = true, -- use `silent` when creating keymaps
    noremap = true, -- use `noremap` when creating keymaps
    nowait = false, -- use `nowait` when creating keymaps
  }

  local mappings = {
    w = { "<cmd>:write<CR>", "Save File" },
    q = { "<cmd>q!<CR>", "Quit" },
    f = {"<cmd>Telescope find_files<cr>", "Find File"},
    l = {"<cmd>Telescope buffers<cr>", "List Buffers"},
    k = {"<cmd>:BD<cr>", "Kill buffer"},
    h = { "<cmd>:noh<cr>", "Clear highlight" },
    n = { "<cmd>:NvimTreeFindFileToggle<cr>", "File Tree" },
    d = { "<Cmd>lua vim.lsp.buf.definition()<CR>", "Definition" },
    c = {
      name = "+Code Actions",
      a = {"<cmd>lua require'telescope.builtin'.lsp_code_actions{}<cr>", "Code Actions"},
      d = {"<cmd>lua require'telescope.builtin'.lsp_definitions{}<cr>", "Definitions"},
      u = {"<cmd>lua require'telescope.builtin'.lsp_references{}<cr>", "Usage/References"},
      i = {"<cmd>lua require'telescope.builtin'.lsp_implementations{}<cr>", "Implementations"},
      r = {"<cmd>lua vim.lsp.buf.rename()<CR>", "Rename"},
      i = {"<cmd>LspInfo<CR>", "Lsp Info"},
      f = { "<cmd>lua vim.lsp.buf.formatting()<CR>", "Format Document" }
    },
    t = {
      name = "Trouble",
      t = { "<cmd>TodoTelescope<cr>", "Todos" },
      r = { "<cmd>Trouble lsp_references<cr>", "References" },
      f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
      d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnosticss" },
      q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
      l = { "<cmd>Trouble loclist<cr>", "LocationList" },
      w = { "<cmd>Trouble lsp_workspace_diagnostics<cr>", "Workspace Diagnosticss" },
    },
    b = {
      name = "Buffer",
      c = { "<Cmd>BD!<Cr>", "Close current buffer" },
      D = { "<Cmd>%bd|e#|bd#<Cr>", "Delete all buffers" },
    },
    s = { "<cmd>lua require('spectre').open()<CR>", "Search & Replace" },
    p = {
      name = "+Packer",
      c = { "<cmd>PackerCompile<cr>", "Compile" },
      i = { "<cmd>PackerInstall<cr>", "Install" },
      s = { "<cmd>PackerSync<cr>", "Sync" },
      S = { "<cmd>PackerStatus<cr>", "Status" },
      u = { "<cmd>PackerUpdate<cr>", "Update" },
    },
    -- These g mapping probably can be removed and proper git mappings can be set
    g = {
        name = "Goto",
        d = { "<Cmd>lua vim.lsp.buf.definition()<CR>", "Definition" },
        D = { "<Cmd>lua vim.lsp.buf.declaration()<CR>", "Declaration" },
        s = { "<cmd>lua vim.lsp.buf.signature_help()<CR>", "Signature Help" },
        I = { "<cmd>lua vim.lsp.buf.implementation()<CR>", "Goto Implementation" },
        t = { "<cmd>lua vim.lsp.buf.type_definition()<CR>", "Goto Type Definition" },
    },
    v = {
      name = "Version Control - Git",
      s = { "<cmd>Neogit<CR>", "Status" },
    },
  }

  whichkey.setup(conf)
  whichkey.register(mappings, opts)
end

return M
