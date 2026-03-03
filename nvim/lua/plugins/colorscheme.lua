return {
	-- {
	--  		"rafamadriz/neon",
	--  		lazy = false,
	--  		priority = 1000,
	-- 	config = function()
	-- 		vim.g.neon_style = "dark"
	-- 		vim.cmd.colorscheme("neon")
	-- 	end
	-- },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require('tokyonight').setup({
                style = "night",
                on_highlights = function(hl, colors)
                    hl.NormalFloat = {
                        bg = colors.bg_visual,
                        fg = colors.fg_dark,
                    }
                    hl.FloatBorder = {
                        bg = colors.bg_visual,
                    }
                end,
            })

            vim.cmd.colorscheme("tokyonight")
        end
    }
}
