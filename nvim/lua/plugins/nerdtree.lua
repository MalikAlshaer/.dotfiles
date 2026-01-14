local map = vim.keymap.set

-- NerdTree
map('n', '<C-f>', ':NERDTreeFocus<CR>', silent)
-- map('n', '<C-n>', ':NERDTree<CR>', silent)
map('n', '<C-t>', ':NERDTreeToggle<CR>', silent)
vim.g.NERDTreeDirArrowExpandable = "+"
vim.g.NERDTreeDirArrowCollapsible = "~"
