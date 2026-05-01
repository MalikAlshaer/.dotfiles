-- Options
vim.opt.encoding        = 'UTF-8'
vim.opt.number          = true
vim.opt.relativenumber  = true
vim.opt.mouse           = 'a'
vim.opt.smarttab        = true
vim.opt.shiftwidth      = 4
vim.opt.tabstop         = 4
vim.opt.expandtab       = true
vim.opt.softtabstop     = 4
vim.opt.autoindent      = true
vim.opt.smartindent     = true
vim.opt.clipboard       = 'unnamedplus'
vim.opt.completeopt:remove('preview')
vim.opt.wrap            = false
vim.opt.showmode        = false
-- vim.opt.cursorline      = true
vim.g.mapleader         = " "

vim.wo.foldmethod       = 'expr'
vim.wo.foldexpr         = 'v:lua.vim.treesitter.foldexpr()'
vim.opt.foldlevel       = 99
vim.opt.foldlevelstart  = 99
vim.opt.foldenable      = true

-- remove auto comment on new line in any filetype
-- vim.api.nvim_create_autocmd('FileType', {
--   pattern = '*',
--   callback = function()
--     -- equivalent to: setlocal formatoptions-=c formatoptions-=r formatoptions-=o
--     local fo = vim.opt_local.formatoptions
--     fo:remove({ 'c', 'r', 'o' })
--   end,
-- })
