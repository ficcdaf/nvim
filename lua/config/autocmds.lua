-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "markdown" },
  callback = function()
    vim.opt_local.breakindent = true
    vim.opt_local.wrap = true
    vim.opt_local.spell = true
    vim.api.nvim_buf_set_keymap(0, "i", "<M-n>", "__<Left>", { noremap = true, silent = true })
    vim.api.nvim_buf_set_keymap(0, "i", "<M-e>", "****<Left><Left>", { noremap = true, silent = true })
  end,
})
