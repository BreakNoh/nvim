--Setup Lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim";
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath
	});
end
vim.opt.rtp:prepend(lazypath);
require("plugins");

--Config Sintaxe
vim.opt.filetype = 'on';
vim.opt.syntax = 'on';
vim.opt.termguicolors = true;

no_celular = os.getenv("TERMUX_VERSION");
identacao = no_celular and 2 or 4;

vim.opt.tabstop = identacao;
vim.opt.shiftwidth = identacao;
vim.opt.softtabstop = identacao;

vim.opt.number = true;
vim.opt.signcolumn = "yes";

--Tema
vim.cmd([[colorscheme dracula]])

--Identar ao Salvar
vim.api.nvim_create_augroup("AutoIndentGroup", { clear = true });
vim.api.nvim_create_autocmd("BufWritePre", {
	group = "AutoIndentGroup",
	pattern = "*",
	callback = function()
		vim.cmd("normal! gg=G");
	end,
});
