return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	branch = "master",
	build = ":TSUpdate",
	config = true,
	ops = {
		-- Linguagens que você quer ativar
		ensure_installed = {
			"lua",
			"bash",
			"rust",
			"toml",
			"css",
			"html",
			"javascript",
			"typescript",
			"tsx",
			"python",
			"markdown",
		},

		-- Ativa o highlight
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = false,
		},

		-- (opcional) melhora indentação baseada na árvore
		indent = { enable = true },
	},
}
