-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
keymap.set("i", "jk", "<Esc>")

-- Telescope live grep 的快捷键是 <leader>sg
-- 我们将 live grep args 的快捷键映射为类似的 <leader>sp
keymap.set(
  "n",
  "<leader>sp",
  ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>",
  { noremap = true, silent = true, desc = "Live Grep (Args)" }
)

keymap.set("n", "<C-p>", ":Legendary<CR>", { noremap = true, silent = true, desc = "Command Palette" })
