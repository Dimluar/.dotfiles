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

-- User commands
vim.keymap.set("n", "<leader>cs", "<cmd>Split<cr>", { desc = "Split" })
vim.keymap.set("n", "<leader>ct", "<cmd>Terminal<cr>", { desc = "Terminal" })
vim.keymap.set("n", "<leader>cc", ":Compile ", { desc = "Compile" })
vim.keymap.set("v", "<leader>c=", ":Align =<cr>", { desc = "Align to =" })
vim.keymap.set("v", "<leader>ca", ":Align ", { desc = "Align" })
