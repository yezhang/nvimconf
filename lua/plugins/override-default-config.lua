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
  -- 新增了 nvim-cmp 插件的配置，配置自动补全
  -- cmp-emoji 是 nvim-cmp 的 emoji 补全源
  -- cmp-cmdline 是 nvim-cmp 的 cmdline 补全源
  {
    "hrsh7th/nvim-cmp",
    event = { "InsertEnter", "CmdlineEnter" },
    dependencies = { "hrsh7th/cmp-emoji", "hrsh7th/cmp-cmdline" },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      -- Add emoji source
      table.insert(opts.sources, { name = "emoji" })

      local cmp = require("cmp")

      -- `/` cmdline setup.
      cmp.setup.cmdline("/", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = "buffer" },
        },
      })

      -- `:` cmdline setup.
      cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
          { name = "path" },
        }, {
          {
            name = "cmdline",
            option = {
              ignore_cmds = { "Man", "!" },
            },
          },
        }),
      })
    end,
  },
}
