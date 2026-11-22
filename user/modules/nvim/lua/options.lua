-- Set leader
vim.g.mapleader      = " "
vim.g.maplocalleader = " "

-- File explorer
vim.g.netrw_banner = 0

-- Line numbers
vim.opt.number         = true
vim.opt.relativenumber = true

-- Indentation
vim.opt.tabstop     = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth  = 2
vim.opt.expandtab   = true

vim.opt.wrap        = false
vim.opt.autoindent  = true
vim.opt.smartindent = true

-- Split
vim.opt.inccommand = "split"
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase  = true

-- Completion
vim.opt.completeopt = "menuone,noselect,fuzzy,nosort"
vim.opt.shortmess:append("c")

-- GUI
vim.opt.laststatus    = 3 -- Shared modeline for split window
vim.opt.guicursor     = ""
vim.opt.termguicolors = true
vim.opt.scrolloff     = 8
vim.opt.colorcolumn   = "80"
vim.opt.signcolumn    = "yes"
vim.opt.virtualedit   = "block"

-- Files
vim.opt.swapfile = false
vim.opt.backup   = false
vim.opt.undofile = true
vim.opt.undodir  = vim.fn.stdpath("data") .. "/undo-dir"

-- Clipboard
vim.opt.clipboard = "unnamed"
