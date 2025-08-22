-- Identar ao Salvar
vim.api.nvim_create_augroup("AutoIndentGroup", { clear = true });
vim.api.nvim_create_autocmd("BufWritePre", {
	group = "AutoIndentGroup",
	pattern = "*",
	callback = function()
		local pos = vim.fn.getpos(".");
		vim.cmd("normal! gg=G");
		vim.fn.setpos(".", pos);
	end,
});

-- Formatar com rustfmt antes de salvar
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*.rs",
	callback = function(args)
		vim.lsp.buf.format({
			async = false,
			bufnr = args.buf,
		})
	end,
})

-- Salvar ao sair do modo Insert
vim.api.nvim_create_autocmd("InsertLeave", {
	pattern = "*",
	callback = function()
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
});

