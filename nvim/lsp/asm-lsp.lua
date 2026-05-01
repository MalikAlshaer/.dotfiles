local capabilities = require('cmp_nvim_lsp').default_capabilities()

vim.lsp.config("asm-lsp", {
  capabilities = capabilities,
  cmd = { "asm-lsp" },
  filetypes = { "asm", "s", "S" },
})
