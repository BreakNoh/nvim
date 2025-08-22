local caminho_lsp = vim.fn.stdpath("data") .. "/lsps/lua-ls/";

return {
	cmd = { caminho_lsp .. "bin/lua-language-server"},
	filetypes = { "lua" },
	root_markers = { { '.luarc.json', '.luarc.jsonc' }, '.git' },
	settings = {
		Lua = {
			workspace = {
				ignoreDir = { caminho_lsp },
				checkThirdParty = false,
				library = { vim.api.nvim_get_runtime_file("", true) },
			},
			diagnostics = {
				globals = { "vim" },
			},
			runtime = {
				version = 'LuaJIT',
			}
		}
	}
}
