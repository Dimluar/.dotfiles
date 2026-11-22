vim.pack.add({
  {
    src = "https://github.com/kdheepak/lazygit.nvim",
    name = "lazygit",
  },
  {
    src = "https://github.com/nvim-lua/plenary.nvim",
    name = "plenary",
  },
})

vim.keymap.set('n', '<Leader>go', '<cmd>LazyGit<cr>', { desc = 'Open LazyGit' })
