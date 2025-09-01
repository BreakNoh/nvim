return {
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
}
