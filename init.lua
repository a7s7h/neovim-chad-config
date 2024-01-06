if vim.fn.exists "g:neovide" == 1 then
  vim.api.nvim_set_var("neovide_refresh_rate", 75)

  vim.g.neovide_floating_blur_amount_x = 2.0
  vim.g.neovide_floating_blur_amount_y = 2.0

  vim.g.neovide_transparency = 0.8
  vim.g.neovide_cursor_vfx_mode = "torpedo"

  vim.o.guifont = "JetBrainsMonoNL Nerd Font:h18"
end

if vim.g.neovide then
  vim.g.neovide_input_use_logo = 1            -- enable use of the logo (cmd) key
  vim.keymap.set("n", "<D-s>", ":w<CR>")      -- Save
  vim.keymap.set("v", "<D-c>", '"+y')         -- Copy
  vim.keymap.set("n", "<D-v>", '"+P')         -- Paste normal mode
  vim.keymap.set("v", "<D-v>", '"+P')         -- Paste visual mode
  vim.keymap.set("c", "<D-v>", "<C-R>+")      -- Paste command mode
  vim.keymap.set("i", "<D-v>", '<ESC>l"+Pli') -- Paste insert mode
end

vim.g.ale_linter_aliases = {
  svelte = { "css", "javascript" },
}

vim.g.ale_linters = {
  svelte = { "stylelint", "eslint" },
}

-- vim.opt.colorcolumn = "79"
vim.api.nvim_command "set relativenumber"
vim.api.nvim_command "set nowrap"

vim.filetype.add({
  extension = {
    templ = "templ",
  }
})
