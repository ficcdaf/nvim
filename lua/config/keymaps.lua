-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

local dirmap = {
  up = "w0",
  down = "w$",
}

local function move_cursor_to(direction)
  vim.api.nvim_win_set_cursor(0, { vim.fn.line(dirmap[direction]), 0 })
end

-- TODO: finish this
-- local function scroll(direction)
--   -- current window for now; could extend later
--   local win_id = 0
--   -- in form {line, column}
--   local current_cursor = vim.api.nvim_win_get_cursor(win_id)
--
--   -- this is the height of the window in lines
--   local win_height = vim.api.nvim_win_get_height(win_id)
--
--   local new_top = vim.fn.line(dirmap[direction])
--
-- end

-- Bind arrows to hjkl to my colemak-dh motions work as expected
map({ "n", "x" }, "<Up>", "k", { desc = "Up", remap = true })
map({ "n", "x" }, "<Down>", "j", { desc = "Down", remap = true })
map({ "n", "x" }, "<Left>", "h", { desc = "Left", remap = true })
map({ "n", "x" }, "<Right>", "l", { desc = "Right", remap = true })
map({ "n", "x" }, "<PageDown>", function()
  move_cursor_to("down")
end, { desc = "Move cursor to bottom", remap = true })
map({ "n", "x" }, "<Pageup>", function()
  move_cursor_to("up")
end, { desc = "Move cursor to top", remap = true })
map({ "n", "t" }, "<C-Left>", "<C-H>", { desc = "Switch Window Left", remap = true })
map({ "n", "t" }, "<C-Right>", "<C-L>", { desc = "Switch Window Right", remap = true })
map({ "n", "t" }, "<C-Up>", "<C-K>", { remap = true })
map({ "n", "t" }, "<C-Down>", "<C-J>", { desc = "Switch Window Down", remap = true })
map({ "x" }, "<M-Left>", "<M-h>", { remap = true })
map({ "x" }, "<M-Right>", "<M-l>", { remap = true })
map({ "n", "x", "v" }, "<M-Up>", "<M-k>", { remap = true })
map({ "n", "x", "v" }, "<M-Down>", "<M-j>", { remap = true })
map({ "n" }, "<S-Left>", "H", { desc = "Left Buffer", remap = true })
map({ "n" }, "<S-Right>", "L", { desc = "Right Buffer", remap = true })
map({ "n" }, "<S-Down>", "5j", { remap = true })
map({ "n" }, "<S-Up>", "5k", { remap = true })
map({ "i" }, "<M-e>", "<Esc>", { desc = "Escape insert mode", remap = true })
-- <PageDown><PageUp>

-- Remap spelling suggestions
-- map({ "n" }, "z-", "z=", { desc = "Spelling Suggestions", remap = true })

-- Oil.nvim open parent directory
map("n", "-", "<CMD>Oil<CR>", { desc = "Open Oil" })

-- Neorg
map("n", "<localleader>pn", "<Plug>(neorg.presenter.next-page)", {})
map("n", "<localleader>pp", "<Plug>(neorg.presenter.previous-page)", {})
map("n", "<leader>uz", "<CMD>ZenMode<CR>", { desc = "Toggle Zen Mode" })
map("n", "<leader>ux", "<CMD>Twilight<CR>", { desc = "Toggle Twilight" })
