vim.pack.add({
  {
    src = "https://github.com/folke/which-key.nvim",
    name = "which-key",
  },
})

local which_key = require("which-key")
which_key.setup()

-- Key icons
which_key.add({
  { "<leader>s", icon = "󰆓"},
})

-- Key groups
which_key.add({
  { "<leader>f", group = "Find" },
  { "<leader>g", group = "Git" },
  { "<leader>c", group = "Command", icon = "", mode = { "n", "v" }},
})
