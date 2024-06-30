-- Override the configuration of the plugins
-- This file is loaded after the plugins are loaded

return {
  -- Override the configuration of the `flash.nvim` plugin
  -- Enable the search mode
  {
    "folke/flash.nvim",
    opts = {
      modes = {
        search = {
          enabled = true,
        },
      },
    },
  },
}
