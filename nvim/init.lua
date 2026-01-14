local vim = vim
local map = vim.keymap.set
local Plug = vim.fn['plug#']
-- #fcba03
vim.call('plug#begin')
Plug('kylechui/nvim-surround')              -- Surrounding ysw)
Plug('tpope/vim-commentary')                -- For Commenting gcc & gc
Plug('brenoprata10/nvim-highlight-colors')  -- Color Preview
Plug('rafi/awesome-vim-colorschemes')       -- Retro Scheme
Plug('preservim/nerdtree')                  -- NerdTree
Plug('vim-airline/vim-airline')             -- Status bar
Plug('vim-airline/vim-airline-themes')      -- Airline themes
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
Plug('miyakogi/conoline.vim')                   -- highlight the current line
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
require('plugins.nerdtree')
require('plugins.nvim-cmp')
-- require('plugins.nvim-treesitter')
require('plugins.tagbar')
require('plugins.telescope')
require('plugins.toggleterm')

---- unicode symbols
--vim.g.airline_left_sep = '▶'
--vim.g.airline_right_sep = '◀'
--vim.g.airline_symbols.linenr = '¶'
--vim.g.airline_symbols.branch = '⎇'
--vim.g.airline_symbols.paste = '∥'
--vim.g.airline_symbols.whitespace = 'Ξ'
-- black
---- powerline symbols
--vim.g.airline_left_sep = ''
--vim.g.airline_left_alt_sep = ''
--vim.g.airline_right_sep = ''
--vim.g.airline_right_alt_sep = ''
--vim.g.airline_symbols.branch = ''
--vim.g.airline_symbols.readonly = ''
--vim.g.airline_symbols.linenr = ''
