--Setup Lazy.nvim
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
vim.opt.signcolumn = "no";

vim.diagnostic.config({
	severity_sort = true,
	signs = false,
	float = {
		source = true,
		focusable = true,
		border = "rounded",
	},
	virtual_text = {
		source = true,
		severity = vim.diagnostic.severity.ERROR,
		message = true,
	},
});


--Tema
vim.cmd([[colorscheme dracula]]);

--Identar ao Salvar
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

--Atalhos
---Abrir Explorador de Arquivo
vim.keymap.set("n", "<C-b>", "<cmd>NvimTreeToggle<CR>", { desc = "Alterna Explorador de Arquivos" });
vim.keymap.set("n", "<leader>b", "<cmd>NvimTreeToggle<CR>", { desc = "Alterna Explorador de Arquivos" });

-- Define o grupo de autocomandos para os atalhos do LSP
local lsp_group = vim.api.nvim_create_augroup("LspAttach_user", { clear = true })

-- Cria o autocomando para adicionar os atalhos após o anexo do LSP
vim.api.nvim_create_autocmd("LspAttach", {
	group = lsp_group,
	callback = function(args)
		-- Mapeia a tecla 'K' para exibir o tooltip com a documentação do hover
		vim.keymap.set("n", "K", vim.lsp.buf.hover, {}) --{ buffer = args.buf })
	end,
})

