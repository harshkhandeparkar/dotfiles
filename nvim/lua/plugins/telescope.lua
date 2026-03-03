return {
	{
    		'nvim-telescope/telescope.nvim', version = '*',
    		dependencies = {
        		'nvim-lua/plenary.nvim',
        		{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    		},
		config = function()
			local ts = require('telescope.builtin')
			vim.keymap.set('n', '<leader>ff', ts.find_files, { desc = 'Telescope find files' })
			vim.keymap.set('n', '<C-p>', ts.git_files, { desc = 'Telescope search git files' })
			vim.keymap.set('n', '<leader>td', ts.diagnostics, { desc = 'Telescope show diagnostics' })
		end
	}
}
