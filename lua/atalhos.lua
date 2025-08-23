-- Alternar mostrar explorador de arquivos
vim.keymap.set("n", "<C-b>", "<cmd>NvimTreeToggle<CR>", { desc = "Alterna Explorador de Arquivos" });
vim.keymap.set("n", "<leader>b", "<cmd>NvimTreeToggle<CR>", { desc = "Alterna Explorador de Arquivos" });

local buffer_terminal = nil;
vim.keymap.set("n", "<C-t>", function ()
	if not buffer_terminal then
		vim.cmd("terminal");
		buffer_terminal = vim.api.nvim_get_current_buf();
		vim.cmd("startinsert");
	else
		vim.cmd("b" .. buffer_terminal);
		vim.cmd("startinsert");
	end
end, 
{});

vim.keymap.set("t", "<C-t>", "<cmd>b#<CR>", {});
