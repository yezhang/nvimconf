-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
keymap.set("i", "jk", "<Esc>")

keymap.set(
  "n",
  "<leader>fp",
  ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>",
  { noremap = true, silent = true, desc = "Live Grep (Args)" }
)

keymap.set("n", "<C-p>", ":Legendary<CR>", { noremap = true, silent = true, desc = "Command Palette" })
