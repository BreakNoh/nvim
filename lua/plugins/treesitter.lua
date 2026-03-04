return {
	"nvim-treesitter/nvim-treesitter",

	lazy = false,
	branch = "main",
	build = ":TSUpdate",
	-- opts = {
	-- 	ensure_installed = {
	-- 		"lua",
	-- 		"bash",
	-- 		"python",
	--
	-- 		"rust",
	-- 		"toml",
	--
	-- 		"css",
	-- 		"html",
	--
	-- 		"javascript",
	-- 		"typescript",
	-- 		"tsx",
	-- 		"svelte",
	--
	-- 		"markdown",
	-- 	},
	--
	-- 	highlight = {
	-- 		enable = true,
	-- 		additional_vim_regex_highlighting = false,
	-- 	},
	--
	-- 	indent = { enable = true },
	-- },
	config = function()
		local treesitter = require("nvim-treesitter")
		treesitter.install(vim.g.linguagens)
	end,
}
