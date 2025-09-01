return {
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
			rust = { "rustfmt" },
		},
	},
}
