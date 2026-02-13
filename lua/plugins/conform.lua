return {
	"stevearc/conform.nvim",
	config = true,
	opts = {

		formatters = {
			prettier = {
				prepend_args = { "--use-tabs", "--tab-width", "4" },
			},
		},

		format_on_save = function(bufnr)
			if vim.bo[bufnr].filetype == "svelte" then
				return { timeout_ms = 2000, lsp_fallback = false }
			end
			return { timeout_ms = 500, lsp_fallback = true }
		end,

		formatters_by_ft = {
			javascript = { "prettier" },
			typescript = { "prettier" },

			javascriptreact = { "prettier" },
			typescriptreact = { "prettier" },

			svelte = { "prettier" },

			html = { "prettier" },
			css = { "prettier" },

			markdown = { "prettier" },
			json = { "prettier" },
			jsonc = { "prettier" },

			lua = { "stylua" },
			python = { "ruff_format" },

			typst = { "prettypst" },

			rust = { "rustfmt" },
			toml = { "tombi" },
		},
	},
}
