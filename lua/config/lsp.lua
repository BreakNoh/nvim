vim.lsp.enable("luals")
vim.lsp.enable("bashls")
vim.lsp.enable("rustanalyzer")
vim.lsp.enable("emmetls")

local cmp = require("cmp")

cmp.setup({
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "buffer" },
		{ name = "path" },
	}),
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
	mapping = cmp.mapping.preset.insert({
		["<C-Down>"] = cmp.mapping.scroll_docs(-4),
		["<C-Up>"] = cmp.mapping.scroll_docs(4),
		["<Leader>"] = cmp.mapping.complete(),
		["<C-Space>"] = cmp.mapping.abort(),
		["<Tab>"] = cmp.mapping.confirm({ select = true }),
	}),
})

local capacidades = require("cmp_nvim_lsp").default_capabilities()

vim.lsp.config("*", {
	capabilities = capacidades,
})
