return {{
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        vim.opt.cmdheight = 0
        require('lualine').setup {
            options = {
                -- theme = 'neon',
                always_show_tabline = true
            },
            sections = {
                lualine_a = {'mode'},
                lualine_b = {'branch', 'diff'},
                lualine_c = {},
                lualine_x = {},
                lualine_y = {'lsp_status', 'diagnostics'},
                lualine_z = {},
            },
            tabline = {
                lualine_a = {'windows'},
                lualine_b = {},
                lualine_c = {},
                lualine_x = {},
                lualine_y = {},
                lualine_z = {'tabs'},
            },
        }
    end
}}
