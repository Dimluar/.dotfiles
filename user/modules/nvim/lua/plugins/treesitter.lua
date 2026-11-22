vim.pack.add({
    {
        src = "https://github.com/nvim-treesitter/nvim-treesitter",
        name = "treesitter",
    },
})
local treesitter = require("nvim-treesitter")
treesitter.setup({
    install_dir = vim.fn.stdpath("data") .. "/site",
})

-- Syntax highlight
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "<filetype>" },
    callback = function() vim.treesitter.start() end,
})

-- Indentation
vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"

-- Languages
local ensure_installed = {
    "lua",
    "c",
}

treesitter.install(ensure_installed)
