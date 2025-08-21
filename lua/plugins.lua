return require("lazy").setup ({
	{
		'nvim-treesitter/nvim-treesitter',
		lazy = false,
		branch = 'main',
		build = ':TSUpdate',
	},
	{
		'windwp/nvim-autopairs',
		event = "InsertEnter",
		config = true,
		opts = {
			ensure_installed = {"lua", "markdown", "toml", "rust", "css", "html", "javascript"};
		}
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		---@module "ibl"
		---@type ibl.config
		opts = {},
	},
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
		config = true,
		opts = {},
	},
	{
		"lewis6991/gitsigns.nvim",
		opts = {
			numhl = true,
			signs = {
				add = { text = "│" },
				change = { text = "│" },
				delete = { text = "│" },
				topdelete = { text = "┐" },
				changedelete = { text = "│" },
			},
		},
	},
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = {
			"nvim-tree/nvim-web-devicons", -- Necessário para os ícones
		},
		config = true;
	},
	"dracula/vim",
})
