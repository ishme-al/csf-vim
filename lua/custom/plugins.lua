local plugins = {
	{
		'nvim-treesitter/nvim-treesitter',
		opts = {
			ensure_installed = {'c', 'cpp', 'lua', 'make', 'bash', 'ruby', 'markdown'},
		},
	},
	{
		'neovim/nvim-lspconfig',
		 config = function()
			require 'plugins.configs.lspconfig'
			require 'custom.configs.lspconfig'
		 end,
	},
	{
	'williamboman/mason.nvim',
	opts = {
			ensure_installed = {
				'clangd',
				'lua-language-server'
			},
		},
	},
}

return plugins
