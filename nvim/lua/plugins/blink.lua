return {{
 	'saghen/blink.cmp',
	version = '1.*',
	opts = {
		keymap = {
			preset = 'enter',
			['<Tab>'] = { 'accept', 'fallback' }
		},
		appearance = {
			nerd_font_variant = 'mono'
		},
		completion = { documentation = { auto_show = false } },
		signature = { enabled = true },
		sources = {
			default = { 'lsp', 'path', 'snippets', 'buffer' },
		},
		fuzzy = { implementation = "prefer_rust_with_warning" }
	},
	opts_extend = { "sources.default" }
}}
