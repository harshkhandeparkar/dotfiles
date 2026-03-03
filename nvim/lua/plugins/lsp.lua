return {
	{
		'neovim/nvim-lspconfig',
        dependencies = {
            -- { "ms-jpq/coq_nvim", branch = "coq" },
            {
                "smjonas/inc-rename.nvim",
                opts = {
					preview_empty_name = true
				}
            }
        },
        init = function()
            -- vim.g.coq_settings = {
            --     auto_start = true,
            --     display = { pum = { fast_close = false } },
            --     keymap = { pre_select = true }
            -- }
            --
            -- vim.keymap.set(
            --     'i', '<Tab>',
            --     [[pumvisible() ? "\<CR>" : "\<Tab>"]],
            --     { expr = true, silent = true, desc = "Tab for selecting completion" }
            -- )
        end,
		config = function()
            vim.lsp.config('rust_analyzer', {
                settings = {
                    ['rust-analyzer'] = {
                        checkOnSave = {
                            enable = true,
                            command = 'clippy',
                        }
                    }
                }
            })

			vim.lsp.enable("rust_analyzer")
			vim.lsp.enable("ts_ls")
			vim.lsp.enable("lua_ls")
		end
	}
}
