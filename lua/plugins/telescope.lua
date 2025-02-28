return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
			dependencies = {
				'nvim-lua/plenary.nvim',
				'BurntSushi/ripgrep',
				'sharkdp/fd',
			},
			config = function()
				require('telescope').setup({
					defaults = {
						file_ignore_patterns = { "node_modules", ".git" },
						mappings = {
            i = { ["<C-u>"] = false, ["<C-d>"] = false }
          },
        }
				})
				local builtin = require('telescope.builtin')
					vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
					vim.keymap.set('n', '<leader>fw', builtin.live_grep, { desc = 'Telescope live grep' })
					vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
			end
}

