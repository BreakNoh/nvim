local function formatar()
	require("conform").format({ async = false })
end

-- Formatar ao salvar
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(_)
		formatar()
	end,
})

-- Salvar ao sair do modo Insert
vim.api.nvim_create_autocmd("InsertLeave", {
	pattern = "*",
	callback = function()
		formatar()

		if vim.bo.modifiable and vim.bo.modified then
			vim.cmd("silent! write")
		end
	end,
})

-- Mostrar mensagem ao deixar cursor encima
vim.api.nvim_create_autocmd("CursorHold", {
	pattern = "*",
	callback = function()
		vim.diagnostic.open_float(nil, {
			focusable = false,
			border = "rounded",
			source = "always",
			prefix = " ",
		})
	end,
})
