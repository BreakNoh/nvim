local lsps = { "luals", "pyright", "bashls", "rustanalyzer", "tombi", "emmetls" }

for _, lsp in ipairs(lsps) do
	vim.lsp.enable(lsp)
end

local cmp = require("cmp")
local function janela_cmp()
	local base = cmp.config.window.bordered()
	base.max_width = 50
	base.max_height = 20
	return base
end

cmp.setup({
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "buffer" },
		{ name = "path" },
	}),
	window = {
		completion = janela_cmp(),
		documentation = janela_cmp(),
	},
	mapping = cmp.mapping.preset.insert({
		["<C-j>"] = cmp.mapping.select_next_item(),
		["<C-k>"] = cmp.mapping.select_prev_item(),
		["<C-]>"] = cmp.mapping.scroll_docs(4),
		["<C-[>"] = cmp.mapping.scroll_docs(-4),
		["<C-A-j>"] = cmp.mapping.complete(),
		["<C-A-k>"] = cmp.mapping.abort(),
		["<Tab>"] = cmp.mapping.confirm({ select = false }),
	}),
})

local capacidades = require("cmp_nvim_lsp").default_capabilities()

vim.lsp.config("*", {
	capabilities = capacidades,
})
