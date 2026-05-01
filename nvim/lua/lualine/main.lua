require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'synth',
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
        disabled_filetypes = {
            statusline = {},
            winbar = {},
        },

        ignore_focus = {},
        always_divide_middle = true,
        always_show_tabline = true,
        globalstatus = false,

        refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
            refresh_time = 16, -- ~60fps
            events = {
                'WinEnter',
                'BufEnter',
                'BufWritePost',
                'SessionLoadPost',
                'FileChangedShellPost',
                'VimResized',
                'Filetype',
                'CursorMoved',
                'CursorMovedI',
                'ModeChanged',
            },
        }
    },

    sections = {
        lualine_a = {'mode'},
        lualine_b = {
            {
                'branch',

                icon = '',
            },
            {
                'diff',

                colored = true,

                diff_color = {
                    added    = { fg = '#4A80B5' },
                    modified = { fg = '#fA7232' },
                    removed  = { fg = '#BD3940' },
                },

                symbols = {
                    added    = '+',
                    modified = '⋅',
                    removed  = '-',
                },

            },
        },
        lualine_c = {'filename'},
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress', 'location'},
        lualine_z = {
            -- {
            --     function()
            --         local trailing_space = vim.fn.search([[\s\+$]], 'nw')
            --         return trailing_space ~= 0 and ''..trailing_space or ''
            --     end,
            --     icon = 'Ξ',
            --     color = {bg= '#fA7232', fg = '#1B2B34'}
            -- },
            -- {
            --     function()
            --         local space_indent = vim.fn.search([[\v^ +]], 'nw')
            --         local tab_indent = vim.fn.search([[\v^\t+]], 'nw')
            --         local mixed = (space_indent > 0 and tab_indent > 0)
            --         return mixed and 'mixed-indent '..math.max(space_indent,tab_indent) or ''
            --     end,
            --     icon = 'Ξ',
            --     color = {bg= '#fA7232', fg = '#1B2B34'}
            -- },
            {
                'diagnostics',
                colored = true,
                sources = { 'nvim_diagnostic' },
                diagnostics_color = {
                    error   = { bg = '#BD3940', fg = '#1B2B34' },
                    warn    = { bg = '#fA7232', fg = '#1B2B34' },
                    info    = { bg = '#4A80B5', fg = '#1B2B34' },
                    hint    = { bg = '#20BD9d', fg = '#1B2B34' },
                },

                symbols = {
                    error   = "" ,
                    warn    = "" ,
                    info    = "" ,
                    hint    = "" ,
                },

                separator = {left = ''},
            },
        },
    },

    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
    },

    tabline = {
        lualine_a = {
            {
                'tabs',

                show_filename_only = true,
                hide_filename_extension = false,

                mode = 2, -- 0=name, 1=relative path, 2=filename

                max_length = vim.o.columns * 2 / 3,

                filetype_names = {
                    TelescopePrompt = 'Telescope',
                    dashboard = 'Dashboard',
                },

                use_mode_colors = true,

                symbols = {
                    modified = ' ●',      -- unsaved
                    alternate_file = ' ',
                    directory = '',
                },

                tabs_color = {
                    active = {
                        fg = '#1B2B34',
                        bg = '#CDD3DE',
                        bold = true,
                    },
                    inactive = {
                        fg = '#CDD3DE',
                        bg = '#1B2B34',
                    },
                },

                separators = { left = '', right = ''},

                show_close_icon = true,

                -- diagnostics = 'nvim_lsp',
                -- diagnostics_indicator = function(count, level)
                --     local icon = level:match("error") and " "
                --     or level:match("warning") and " "
                --     or " "
                --     return icon .. count
                -- end,

            }
        },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {
            {
                'datetime',
                style = '%H:%M'
            }
        },
    },

    winbar = {},
    inactive_winbar = {},
    extensions = {}
}
