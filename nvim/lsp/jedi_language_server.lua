local capabilities = require('cmp_nvim_lsp').default_capabilities()

vim.lsp.config("jedi_language_server", {
  capabilities = capabilities,
  cmd = { 'jedi-language-server' },
  filetypes = { 'python' },
})
