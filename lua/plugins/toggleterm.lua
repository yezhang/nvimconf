local Util = require("lazyvim.util")

return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = true,
  cmd = { "ToggleTerm" },
  opts = {
    open_mapping = [[<c-\>]],
  },
  keys = {
    { [[<C-\>]] },
    {
      "<leader>tf",
      function()
        local count = vim.v.count1
        require("toggleterm").toggle(count, 0, Util.root.get(), "float")
      end,
      desc = "ToggleTerm (float root_dir)",
    },
    {
      "<leader>tF",
      function()
        local count = vim.v.count1
        require("toggleterm").toggle(count, 0, Util.root.cwd(), "float")
      end,
      desc = "ToggleTerm (float cwd)",
    },
    {
      "<leader>tv",
      function()
        local count = vim.v.count1
        require("toggleterm").toggle(count, 0, Util.root.get(), "vertical")
      end,
      desc = "ToggleTerm (vertical/root dir)",
    },
    {
      "<leader>tV",
      function()
        local count = vim.v.count1
        require("toggleterm").toggle(count, 0, Util.root.cwd(), "vertical")
      end,
      desc = "ToggleTerm (vertical/cwd)",
    },
    {
      "<leader>th",
      function()
        local count = vim.v.count1
        require("toggleterm").toggle(count, 10, Util.root.get(), "horizontal")
      end,
      desc = "ToggleTerm (horizontal/root dir)",
    },
    {
      "<leader>tH",
      function()
        local count = vim.v.count1
        require("toggleterm").toggle(count, 10, Util.root.cwd(), "horizontal")
      end,
      desc = "ToggleTerm (horizontal/cwd)",
    },
  },
}
