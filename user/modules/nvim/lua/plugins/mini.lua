vim.pack.add({
  {
    src = 'https://github.com/nvim-mini/mini.nvim',
    name = 'mini',
  },
})

-- Notifications
local mini_notify = require("mini.notify")
mini_notify.setup({
  content = {
    format = function(notif)
      return notif.msg
    end,
  },
})

-- File tree
local mini_files = require("mini.files")
mini_files.setup({
  mappings = {
    go_in = "<cr>",
    go_in_plus = "L",
    go_out = "-",
    go_out_plas = "H",
  }
})
vim.keymap.set("n", "-", mini_files.open)

-- Search
local mini_pick = require("mini.pick")
mini_pick.setup()
vim.keymap.set("n", "<leader>ff", mini_pick.builtin.files, { desc = "Find files" })
vim.keymap.set("n", "<leader>ft", function()
  mini_pick.builtin.grep({ pattern = vim.fn.expand("<cword>") })
end, { desc = "Find text" })
vim.keymap.set("n", "<leader>fh", mini_pick.builtin.help, { desc = "Find help" })

-- Cmd completion
local mini_cmdline = require("mini.cmdline")
mini_cmdline.setup({
  autocorrect = { enable = false },
})

-- Buffer completion
local mini_completion = require("mini.completion")
mini_completion.setup({
  lsp_completion = {
    auto_setup = true,
  },
})

-- Git support
local mini_diff = require("mini.diff")
mini_diff.setup({
  source = mini_diff.gen_source.git({ index = false }),
})
vim.keymap.set("n", "<leader>gn", function() mini_diff.goto_hunk("next") end, { desc = "Go to next hunk" })
vim.keymap.set("n", "<leader>gN", function() mini_diff.goto_hunk("prev") end, { desc = "Go to previous hunk" })

-- Auto-pairs
local mini_pairs = require("mini.pairs")
mini_pairs.setup()

-- Icons
local mini_icons = require("mini.icons")
mini_icons.setup()
mini_icons.mock_nvim_web_devicons()

-- Extras
local mini_extra = require("mini.extra")
mini_extra.setup()
vim.keymap.set("n", "<leader>fd", mini_extra.pickers.diagnostic, { desc = "Find diagnostic" })
vim.keymap.set("n", "<leader>fk", mini_extra.pickers.keymaps, { desc = "Find keymaps" })
