return {
	"stevearc/conform.nvim",
	config = true,
	opts = {
		formatters = {
			prettier = {
				prepend_args = { "--use-tabs", "--tab-width", "4" },
			},
		},
		formatters_by_ft = {
			markdown = { "prettier" },

			javascript = { "prettier" },
			javascriptreact = { "prettier" },
			typescript = { "prettier" },
			typescriptreact = { "prettier" },
			html = { "prettier" },
			css = { "prettier" },
			json = { "prettier" },
			jsonc = { "prettier" },

			lua = { "stylua" },

			python = { "ruff_format" },

			rust = { "rustfmt" },
			toml = { "tombi" },
		},
	},
}
