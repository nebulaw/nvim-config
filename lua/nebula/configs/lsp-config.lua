-- Mason

local m_status, mason = pcall(require, 'mason')
local ml_status, mason_lsp = pcall(require, 'mason-lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()

if (not m_status or not ml_status) then
  return
end

mason.setup()

mason_lsp.setup({
  ensure_installed = {
    'lua_ls',
    'ocamllsp',
    'html',
    'clangd',
    'bashls',
    'cssls',
    'pyright',
    'jdtls',
    'jsonls',
    'marksman',
    'sqls',
    'vtsls',
  },
})

require('lspconfig').sqls.setup {
--  capabilities = capabilities,
}
require('lspconfig').marksman.setup {
  capabilities = capabilities,
}
require('lspconfig').jsonls.setup {
  capabilities = capabilities,
}
require('lspconfig').vtsls.setup {
  capabilities = capabilities,
}
require('lspconfig').jdtls.setup {
  capabilities = capabilities,
}
require('lspconfig').pyright.setup {
  capabilities = capabilities,
}
require('lspconfig').cssls.setup {
  capabilities = capabilities,
}
require('lspconfig').bashls.setup {
  capabilities = capabilities,
}
require('lspconfig').clangd.setup {
  capabilities = capabilities,
}
require('lspconfig').html.setup {
  capabilities = capabilities,
}
require('lspconfig').lua_ls.setup {
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = {
          'vim',
          'top',
          'block',
          'use',
          'imap',
          'nmap',
          'telescope_buffer_dir'
        },
      },
      workspace = {
        library = {
          [vim.fn.expand "$VIMRUNTIME/lua"] = true,
          [vim.fn.stdpath "config" .. "/lua"] = true,
        },
      },
    },
  },
}
require('lspconfig').ocamllsp.setup {
  capabilities = capabilities,
}

