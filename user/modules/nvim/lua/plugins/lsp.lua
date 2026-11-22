vim.pack.add {
  {
    src = "https://github.com/neovim/nvim-lspconfig",
    name = "lspconfig",
  }
}

local mini_completion = require("mini.completion")
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = vim.tbl_deep_extend("force", capabilities, mini_completion.get_lsp_capabilities())
vim.lsp.config("*", { capabilities = capabilities })
vim.lsp.config("lua_ls", {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
    },
  },
})

-- Keymaps
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set("n", "gf", vim.lsp.buf.format, { desc = "Format buffer" })

-- Diagnstics options
vim.diagnostic.config({
  virtual_text = true,
  --update_in_insert = true,
})

-- Enabled languages
local languages = {
  "lua_ls",
}

vim.lsp.enable(languages)
