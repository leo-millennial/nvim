return {
	{
		'nvim-treesitter/nvim-treesitter',
		config = function()
			require('nvim-treesitter.configs').setup({
				ensure_installed = { "rust", "lua", "typescript", "javascript" },
				auto_install = true,
				highlight = {
					enable = true,
				}
			})
		end
	}
}
