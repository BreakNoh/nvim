return {
	"stevearc/conform.nvim",
	config = true,
	opts = {
		formatters_by_ft = {
			markdown = { "prettier" },
			toml = { "tombi" },
			css = { "prettier" },
			javascript = { "prettier" },
			html = { "prettier" },
			lua = { "stylua" },
			rust = { "rustfmt" },
			json = { "prettier" },
			jsonc = { "prettier" },
			gdscript = { "gdformat" },
		},
	},
}
