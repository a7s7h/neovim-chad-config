vim.g.ale_linter_aliases = {
  svelte = { "css", "javascript" },
}

vim.g.ale_linters = {
  svelte = { "stylelint", "eslint" },
}

-- vim.opt.colorcolumn = "79"
vim.api.nvim_command "set relativenumber"
vim.api.nvim_command "set nowrap"

-- additional filetypes
vim.filetype.add {
  extension = {
    templ = "templ",
  },
}
