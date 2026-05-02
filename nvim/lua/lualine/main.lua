local function get_nearest(severity)
  local line = vim.fn.line('.') - 1
  local diags = vim.diagnostic.get(0, { severity = severity })

  table.sort(diags, function(a, b)
    return math.abs(a.lnum - line) < math.abs(b.lnum - line)
  end)

  return diags[1]
end

local function warn_pos()
    local d = get_nearest(vim.diagnostic.severity.WARN)
    if not d then return "" end
    return string.format("%d:%d", d.lnum + 1, d.col + 1)
end

local function error_pos()
    local d = get_nearest(vim.diagnostic.severity.ERROR)
    if not d then return "" end
    return string.format("%d:%d", d.lnum + 1, d.col + 1)
end

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
                'diff',

                cond = function()
                    return vim.fn.mode() == 'n'
                end,

                colored = true,

                diff_color = {
                    added    = { fg = '#3f6f9e' },
                    modified = { fg = '#fA7232' },
                    removed  = { fg = '#BD3940' },
                },

                symbols = {
                    added    = '+',
                    modified = '⋅',
                    removed  = '-',
                },

            },
            {
                'branch',

                icon = '',
            },
        },
        lualine_c = { 'filename' },
        lualine_x = { 'encoding', 'fileformat', 'filetype' },
        lualine_y = { 'progress', { 'location' } },
        lualine_z = {
            {
                warn_pos,

                color = { fg = '#1B2B34', bg = '#ffaa00' },
            },
            {
                separator = { left = '' },
                error_pos,

                color = { fg = '#1B2B34', bg = '#c91a0e' },
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
            }
        },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {
            {
                'datetime',
                style = '%H:%M',
                color = { fg = '#1B2B34', bg = '#CDD3DE' },
            }
        },
    },

    winbar = {},
    inactive_winbar = {},
    extensions = {}
}
