local caminho_lsp = vim.fn.stdpath("data") .. "/lsps/rust-analyzer";

return {
	cmd = { caminho_lsp },
	filetypes = { "rust" },
	root_markers = { "Cargo.toml" , '.git' },
	settings = {
		["rust-analyzer"] = {
			checkOnSave = true,
			check = {
				command = "clippy",
			}

		}
	}
}
