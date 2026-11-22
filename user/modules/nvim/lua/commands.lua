local fn = require("functions")

vim.api.nvim_create_user_command(
  "Compile",
  function(opts) fn:compile(opts) end,
  {
    desc = "Execute command and show output on split terminal",
    nargs = "*",
    complete = "shellcmdline",
  })

  vim.api.nvim_create_user_command(
    "Align",
    function(opts) fn.align(opts) end,
    {
      desc = "Align instances of a given sign in each line to the same col value",
      range = true,
      nargs = 1,
    }
  )

  vim.api.nvim_create_user_command(
    "Split",
    function() fn:split() end,
    {
      desc = "Splits buffer to best position (vertical or horizontal) automatically"
    }
  )

  vim.api.nvim_create_user_command(
    "Terminal",
    function() fn:terminal() end,
    {
      desc = "Splits terminal to best position (vertical or horizontal) automatically"
    }
  )
