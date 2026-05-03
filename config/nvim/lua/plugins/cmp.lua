return {
  "hrsh7th/nvim-cmp",
  dependencies = { "zbirenbaum/copilot-cmp" },
  config = function()
    local cmp = require("cmp")
    cmp.setup({
    mapping = {
      ['<CR>'] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.confirm({ select = true })
        else
          fallback()
        end
      end, { "i", "s" }),

      ['<Tab>'] = cmp.mapping.select_next_item(),
      ['<S-Tab>'] = cmp.mapping.select_prev_item(),

      ['<C-j>'] = function(fallback)
        if cmp.visible() then
          cmp.select_next_item()
          cmp.confirm({ select = true })
        else
          fallback()
        end
      end,
    },
    sources = cmp.config.sources({
      { name = "copilot" },
      { name = "nvim_lsp" },
      { name = "luasnip" },
      { name = "buffer" },
      { name = "path" },
    }),
    })
  end,
}
