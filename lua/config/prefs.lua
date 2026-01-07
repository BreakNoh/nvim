local identacao = vim.env.MOBILE and 2 or 4

-- Setup
vim.opt.filetype = "on"
vim.opt.syntax = "on"
vim.opt.termguicolors = true
vim.opt.updatetime = 1000
vim.opt.ttyfast = true

-- Tamanho do Tab
vim.opt.tabstop = identacao
vim.opt.shiftwidth = identacao
vim.opt.softtabstop = identacao

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldlevel = 4

-- Coluna Números
vim.opt.number = true
vim.opt.signcolumn = "yes"


-- Tema
vim.cmd([[colorscheme dracula]])
