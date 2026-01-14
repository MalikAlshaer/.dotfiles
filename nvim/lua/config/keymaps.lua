-- Keymaps
local map = vim.keymap.set
local opts = {noremap = true, silent = true }

-- fix pasting in visual mode: xnoremap <leader>p "_dP
map('x', '<leader>p', '"_dP', opts)

-- Remap navigation keys one key to the right
map('n', 'j', 'h', opts)
-- k stays default
map('n', 'l', 'j', opts)
map('n', ';', 'l', opts)

map('v', 'j', 'h', opts)
-- k stays default
map('v', 'l', 'j', opts)
map('v', ';', 'l', opts)

-- Window movement keys
map('n', '<C-w>j', '<C-w>h', opts)
-- k stays default
map('n', '<C-w>l', '<C-w>j', opts)
map('n', '<C-w>;', '<C-w>l', opts)

-- Shift with window movement
map('n', '<C-w>J', '<C-w>H', opts)
-- k stays default
map('n', '<C-w>L', '<C-w>J', opts)
map('n', '<C-w>:', '<C-w>L', opts)

-- Save / Quit
map('n', '<C-s>', ':w<CR>', opts)
map('i', '<C-s>', '<Esc>:w<CR>a', opts)
map('v', '<C-s>', '<Esc>:w<CR>', opts)

map('n', '<C-x>', ':q<CR>', opts)
map('i', '<C-x>', '<Esc>:q<CR>', opts)
map('v', '<C-x>', '<Esc>:q<CR>', opts)

-- Undo remap
map('n', 'U', '<C-r>', opts)
map('v', 'U', '<C-r>', opts)

-- Pane scaling
map('n', '<C-n>', ':vertical resize -5<CR>', opts)
map('n', '<C-m>', ':vertical resize +5<CR>', opts)
map('n', '<C-,>', ':horizontal resize -3<CR>', opts)
map('n', '<C-.>', ':horizontal resize +3<CR>', opts)

-- Enable and disable text wrapping
map('n', '<A-z>', ':set wrap<CR>', opts)
map('n', '<A-S-z>', ':set nowrap<CR>', opts)

-- Tab navigation
map('n', '<C-Tab>', 'gt', opts)
map('v', '<C-Tab>', 'gt', opts)
map('i', '<C-Tab>', 'gt', opts)

-- Remove search highlights
map('n', '<Esc>', ':nohl<CR><Esc>', opts)

-- Increase/decrease split size
map("n", "<A-j>", ":vertical resize -2<CR>", opts)  -- shrink width
map("n", "<A-;>", ":vertical resize +2<CR>", opts)  -- grow width
map("n", "<A-l>", ":resize +2<CR>", opts)           -- grow height
map("n", "<A-k>", ":resize -2<CR>", opts)           -- shrink height

-- control folding
map('n', "<leader-k>", ":foldopen", opts)
map('n', "<leader-l>", ":foldclose", opts)
