local M = {}
local lsp_config = require("lspconfig")

require'lspconfig'.phpactor.setup {
    root_dir = lsp_config.util.root_pattern("psalm.xml")
}

local servers = {
  gopls = {},
  html = {},
  jsonls = {},
  pyright = {},
  rust_analyzer = {},
  tsserver = {},
  vimls = {},
  vuels = {},
  intelephense = {
    settings = {
      intelephense = {
        files = {
            maxSize = 10000000
          }
        }
    }
  },
  psalm = {
    cmd = {"/home/smilga/inzpire/nwapp/vendor/bin/psalm-language-server", "--clear-cache"},
    -- cmd = {"docker-compose", "exec", "-ti", "nwapp", "psalm-language-server"},
    root_dir = lsp_config.util.root_pattern("psalm.xml", "psalm.xml.dist", "composer.json"),
    allowlist = {"php"}
  },
}

local lsp_signature = require "lsp_signature"
lsp_signature.setup {
  bind = true,
  handler_opts = {
    border = "rounded",
  },
}

local function on_attach(client, bufnr)
  -- Enable completion triggered by <C-X><C-O>
  -- See `:help omnifunc` and `:help ins-completion` for more information.
  vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

  -- Use LSP as the handler for formatexpr.
  -- See `:help formatexpr` for more information.
  vim.api.nvim_buf_set_option(0, "formatexpr", "v:lua.vim.lsp.formatexpr()")

  -- Configure key mappings
  require("plugins.lsp.keymaps").setup(client, bufnr)
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities) -- for nvim-cmp

local opts = {
  on_attach = on_attach,
  capabilities = capabilities,
  flags = {
    debounce_text_changes = 150,
  },
}

-- Setup LSP handlers
require("plugins.lsp.handlers").setup()

function M.setup()
  require("plugins.lsp.installer").setup(servers, opts)
end

return M
