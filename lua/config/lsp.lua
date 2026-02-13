local lsps = {
	"lua_ls",
	"pyright",
	"bash_ls",
	"rust_analyzer",
	"tombi",
	"emmet_ls",
	"ts_ls",
	"css_ls",
	"tinymist",
	"svelteserver",
	"denols",
}
-- local capacidades = require("cmp_nvim_lsp").default_capabilities()

for _, lsp in ipairs(lsps) do
	vim.lsp.enable(lsp)

	vim.lsp.config(lsp, {
		-- capabilities = capacidades,
	})
end
