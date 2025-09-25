local function formatar()
	require("conform").format({ async = true })
end

-- Formatar ao salvar
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(_)
		formatar()
	end,
})

-- Formatar ao sair do modo insert
vim.api.nvim_create_autocmd("InsertLeave", {
	pattern = "*",
	callback = function()
		formatar()

		-- if vim.bo.modifiable and vim.bo.modified then
		-- 	vim.cmd("silent! write")
		-- end
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

-- Esconder janela de diagnosticos ao mudar de buffer
vim.api.nvim_create_autocmd("BufLeave", {
	pattern = "*",
	callback = function()
		local janelas = vim.api.nvim_list_wins()

		for _, jan in ipairs(janelas) do
			local config_janela = vim.api.nvim_win_get_config(jan)
			if config_janela.relative == "win" and config_janela.zindex == 50 then
				vim.api.nvim_win_close(jan, true)
			end
		end
	end,
})
