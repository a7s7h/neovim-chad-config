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

vim.api.nvim_create_augroup("ash_custom", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
  group = "ash_custom",
  pattern = "*",
  callback = function()
    vim.highlight.on_yank { timeout = 200 }
  end,
})
