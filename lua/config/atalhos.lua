-- Renomear
vim.keymap.set("n", "<F2>", vim.lsp.buf.rename, {})

-- Ir pra definicao
vim.keymap.set("n", "gD", vim.lsp.buf.definition, {})

-- Alternar mostrar explorador de arquivos
local nvim_tree = require("nvim-tree.api")
vim.keymap.set("n", "<C-b>", nvim_tree.tree.toggle, { desc = "Alterna Explorador de Arquivos" })

-- Abrir Telescope
local telescope = require("telescope.builtin")
vim.keymap.set("n", "<C-o>", telescope.find_files, {}) -- Procurar Arquivos
vim.keymap.set("n", "<A-o>", telescope.live_grep, {}) -- Procurar Texto
