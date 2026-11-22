local fn = require("functions")

vim.keymap.set({ "i", "v" }, "fj", "<Esc>", { desc = "Exit from insert mode" })
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit from terminal mode" })
vim.keymap.set("t", "fj", "<C-\\><C-n>", { desc = "Exit from terminal mode" })

vim.keymap.set("v", "<", "<gv", { desc = "Indent left conserving selection" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent right conserving selection" })

vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll half-buffer down and center cursor" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll half-buffer up and center cursor" })

vim.keymap.set("n", "n", "nzzzv", { desc = "Search next string and center cursor" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Search previous string and center cursor" })

vim.keymap.set("n", "<leader>s", "<cmd>w<cr>", { desc = "Save" })
vim.keymap.set("n", "<leader>q", "<cmd>q<cr>", { desc = "Exit" })

vim.keymap.set("n", "-", "<cmd>Ex<cr>", { desc = "Open file tree" })

vim.keymap.set("n", "<leader>co", fn.open_config, { desc = "Open init.lua" })
vim.keymap.set("n", "<leader>cr", "<cmd>restart<cr>", { desc = "Reload config" })

-- User commands
vim.keymap.set("n", "<leader><leader>s", "<cmd>Split<cr>", { desc = "Split" })
vim.keymap.set("n", "<leader><leader>t", "<cmd>Terminal<cr>", { desc = "Terminal" })
vim.keymap.set("n", "<leader><leader>c", ":Compile ", { desc = "Compile" })
vim.keymap.set("v", "<leader><leader>=", ":Align<cr>", { desc = "Align" })
