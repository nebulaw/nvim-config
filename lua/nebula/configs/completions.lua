-- Completion

-- safe load
local status, cmp = pcall(require, 'cmp')

if (not status) then
  return
end

require('luasnip.loaders.from_vscode').lazy_load()

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    ['<C-B>'] = cmp.mapping.scroll_docs(-4),
    ['<C-F>'] = cmp.mapping.scroll_docs(4),
    ['<C-O>'] = cmp.mapping.complete(),
    ['<C-E>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = false }),
  }),
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  }, {
    { name = 'buffer' }
  }),
})


