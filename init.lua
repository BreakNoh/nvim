local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim";
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath
	});
end
vim.opt.rtp:prepend(lazypath);
require("plugins");


--Setup AutoComplete
local cmp = require("cmp");

cmp.setup({
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "buffer" },
		{ name = "path" },
	}),
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
	mapping = cmp.mapping.preset.insert({
		['<C-Down>'] = cmp.mapping.scroll_docs(-4),
		['<C-Up>'] = cmp.mapping.scroll_docs(4),
		['<Leader>'] = cmp.mapping.complete(),
		--['<A-S>'] = cmp.mapping.abort(),
		['<Tab>'] = cmp.mapping.confirm({ select = true }),
	}),
});

local capacidades = require("cmp_nvim_lsp").default_capabilities();

vim.lsp.config("*", {
	capabilities = capacidades;
})

vim.lsp.enable("lua-ls");
vim.lsp.enable("rust-analyzer");

--Config Sintaxe
vim.opt.filetype = 'on';
vim.opt.syntax = 'on';
vim.opt.termguicolors = true;

local no_celular = os.getenv("TERMUX_VERSION");
local identacao = no_celular and 2 or 4;

vim.opt.tabstop = identacao;
vim.opt.shiftwidth = identacao;
vim.opt.softtabstop = identacao;

vim.opt.number = true;
vim.opt.signcolumn = "yes";
vim.opt.updatetime = 700;

vim.diagnostic.config({
	severity_sort = true,

	float = {
		source = true,
		focusable = true,
		border = "rounded",
	},
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = '',
			[vim.diagnostic.severity.WARN] = '',
			[vim.diagnostic.severity.INFO] = '',
			[vim.diagnostic.severity.HINT] = '',
		}
	},
	virtual_lines = false,
	virtual_text = false
});

--Tema
vim.cmd([[colorscheme dracula]]);

require("atalhos");
require("macros");
