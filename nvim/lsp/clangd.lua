local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- -- Configure clangd
vim.lsp.config("clangd", {
    capabilities = capabilities,
    cmd = { 'clangd' },

    --    cmd = { "clangd" } --"--background-index" },  -- adjust flags as needed
    on_attach = function(client, bufnr)
        -- Optional: keybindings for LSP features
        local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
        local opts = { noremap=true, silent=true }

        buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
        buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
        buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    end,
})
