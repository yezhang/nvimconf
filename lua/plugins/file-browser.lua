return {
  "nvim-telescope/telescope-file-browser.nvim",
  keys = {
    {
      "<leader>fB",
      ":Telescope file_browser path=%:p:h=%:p:h<CR>",
      desc = "Browse files",
    },
  },
  config = function()
    require("telescope").load_extension("file_browser")
  end,
}
