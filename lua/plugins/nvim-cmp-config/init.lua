-- 新增了 nvim-cmp 插件的配置
-- cmp-emoji 是 nvim-cmp 的 emoji 补全源
-- cmp-cmdline 是 nvim-cmp 的 cmdline 补全源
return {
  {
    "hrsh7th/nvim-cmp",
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
