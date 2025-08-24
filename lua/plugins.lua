return require("lazy").setup({
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		branch = "master",
		build = ":TSUpdate",
		config = true,
		ops = {
			highlight = {
				enable = true,
			},
		},
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		---@module "ibl"
		---@type ibl.config
		opts = {},
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
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
		config = true,
	},
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",
		},
	},
	{
		"nvim-telescope/telescope.nvim",
		branch = "master",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{
		"stevearc/conform.nvim",
		config = true,
		opts = {
			formatters_by_ft = {
				markdown = { "prettier" },
				toml = { "prettier" },
				css = { "prettier" },
				javascript = { "prettier" },
				html = { "prettier" },
				lua = { "stylua" },
				rust = { "rustfmt" }
			},
		},
	},
	"dracula/vim",
})
