-- vim.keymap.set('n', '<S-l>', ':bnext<CR>')
-- vim.keymap.set('n', '<S-h>', ':bprevious<CR>')
local vim = vim
local map = vim.keymap.set
local Plug = vim.fn['plug#']
vim.call('plug#begin')
Plug('kylechui/nvim-surround')              -- Surrounding ysw)
Plug('tpope/vim-commentary')                -- For Commenting gcc & gc
Plug('brenoprata10/nvim-highlight-colors')  -- Color Preview
Plug('rafi/awesome-vim-colorschemes')       -- Retro Scheme
Plug('preservim/nerdtree')                  -- NerdTree
-- checkout lua line maybe
-- Plug('vim-airline/vim-airline')             -- Status bar
-- Plug('vim-airline/vim-airline-themes')      -- Airline themes
Plug('nvim-lualine/lualine.nvim')           -- better status line
Plug('ryanoasis/vim-devicons')              -- Developer Icons
Plug('preservim/tagbar')                    -- Tagbar for code navigation
Plug('hrsh7th/cmp-nvim-lsp')                -- language server protocol
Plug('neovim/nvim-lspconfig')               -- language server protocol config
Plug('hrsh7th/nvim-cmp')                    -- completion
Plug('hrsh7th/cmp-buffer')                  -- completion buffer
Plug('hrsh7th/cmp-path')                    -- completion path
Plug('hrsh7th/cmp-cmdline')                 -- completion command line
Plug('saadparwaiz1/cmp_luasnip')            -- integration between cmp and LuaSnip
Plug('L3MON4D3/LuaSnip')                    -- snippet engine
Plug('miyakogi/conoline.vim')               -- highlight the current line
Plug('kdheepak/lazygit.nvim')               -- neovim integration for lazygit
vim.cmd [[
Plug 'nvim-telescope/telescope.nvim'        " telescope
Plug 'nvim-lua/plenary.nvim'                " search files (telescope dependency)
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
]]
-- Plug 'voldikss/vim-floaterm'

vim.call('plug#end')

-- general config
require('config.keymaps')
require('config.options')
require('config.visuals')

-- plugin config
require('nerdtree.main')
require('nvim-cmp.main')
require('nvim-treesitter.main')
require('tagbar.main')
require('telescope.main')
require('toggleterm.main')
require('lualine.main')

-- vim.g.airline_powerline_fonts = 1

-- -- vim.g['airline#extensions#tabline#enabled'] = 1
-- -- vim.g['airline#extensions#tabline#buffer_nr_show'] = 1

-- -- Use fancy separators (requires Nerd Font)
-- vim.g.airline_left_sep = ''
-- vim.g.airline_left_alt_sep = ''
-- vim.g.airline_right_sep = ''
-- vim.g.airline_right_alt_sep = ''

-- -- Optional: enable branch, filetype, etc.
-- vim.g['airline#extensions#branch#enabled'] = 1
-- vim.g['airline#extensions#hunks#enabled'] = 1
-- vim.g['airline#extensions#hunks#non_zero_only'] = 1

-- -- -- Better unicode symbols
-- -- vim.g.airline_symbols = {}
-- -- vim.g.airline_symbols.branch = ''
-- -- vim.g.airline_symbols.readonly = ''
-- -- vim.g.airline_symbols.linenr = ''
-- -- vim.g.airline_symbols.maxlinenr = ''
-- -- vim.g.airline_symbols.dirty = '●'

-- -- vim.g.airline_powerline_fonts = 1

-- -- -- Initialize the symbols table first
-- -- vim.g.airline_symbols = {}
-- vim.g['airline_symbols.branch'] = ''
-- vim.g['airline_symbols.readonly'] = ''
-- vim.g['airline_symbols.linenr'] = ''
-- vim.g['airline_symbols.maxlinenr'] = ''
-- vim.g['airline_symbols.dirty'] = '●'

-- -- -- Unicode symbols
-- -- vim.g.airline_left_sep = '▶'
-- -- vim.g.airline_right_sep = '◀'
-- -- vim.g.airline_symbols.linenr = '¶'
-- -- vim.g.airline_symbols.branch = '⎇'
-- -- vim.g.airline_symbols.paste = '∥'
-- -- vim.g.airline_symbols.whitespace = 'Ξ'

-- -- -- Powerline symbols
-- -- vim.g.airline_left_sep = ''
-- -- vim.g.airline_left_alt_sep = ''
-- -- vim.g.airline_right_sep = ''
-- -- vim.g.airline_right_alt_sep = ''
-- -- vim.g.airline_symbols.branch = ''
-- -- vim.g.airline_symbols.readonly = ''
-- -- vim.g.airline_symbols.linenr = ''
