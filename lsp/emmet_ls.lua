---@class vim.lsp.Config
return {
	cmd = { "emmet-language-server", "--stdio" },
	filetypes = { "html", "css", "javascriptreact", "typescriptreact", "svelte" },
	root_markers = { "tsconfig.json", "package.json", ".git" },
}
