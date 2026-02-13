return {
	"nvim-treesitter/nvim-treesitter",

	lazy = false,
	branch = "master",
	build = ":TSUpdate",

	init = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"lua",
				"bash",
				"python",

				"rust",
				"toml",

				"css",
				"html",

				"javascript",
				"typescript",
				"tsx",
				"svelte",

				"markdown",
			},

			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},

			indent = { enable = true },
		})
	end,
}
