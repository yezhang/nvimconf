-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt
-- opt.relativenumber = false
opt.winbar = "%=%m %f %r"
-- markdown 文件的中文总有下划线，cjk 排除了 East Asia 字符检查
opt.spelllang = { "en", "cjk" }
