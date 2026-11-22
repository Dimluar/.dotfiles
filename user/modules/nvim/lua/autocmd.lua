-- Make background transparent
vim.api.nvim_create_autocmd("ColorScheme", {
  desc = "Turn on bg transparency",
  callback = function ()
    local groups = {
      'Normal',
      'NormalNC',
      'NormalFloat',
      'FloatBorder',
    }
    for _, group in ipairs(groups) do
      vim.api.nvim_set_hl(0, group, { bg = "NONE", ctermbg = "NONE" })
    end
  end
})

-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking text",
  callback = function ()
    vim.hl.on_yank()
  end
})

-- Scrolloff on EOF
vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI", "BufEnter" }, {
  desc = "Mantain scrolloff even on the end of a file",
  group = vim.api.nvim_create_augroup("ScrollOffEOF", {}),
  callback = function()
    local win_h = vim.api.nvim_win_get_height(0)
    local off = math.min(vim.o.scrolloff, math.floor(win_h / 2))
    local dist = vim.fn.line("$") - vim.fn.line(".")
    local rem = vim.fn.line("w$") - vim.fn.line("w0") + 1
    if dist < off and win_h - rem + dist < off then
      local view = vim.fn.winsaveview()
      view.topline = view.topline + off - (win_h - rem + dist)
      vim.fn.winrestview(view)
    end
  end,
})
