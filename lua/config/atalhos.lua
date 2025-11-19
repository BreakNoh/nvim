-- Renomear
vim.keymap.set("n", "<F2>", ":IncRename ")

-- Ações de código
vim.keymap.set("n", "<Leader>ca", vim.lsp.buf.code_action, {})

-- Ir pra definição
vim.keymap.set("n", "<Leader>gd", vim.lsp.buf.definition, {})

-- Alternar mostrar explorador de arquivos
local nvim_tree = require("nvim-tree.api")
vim.keymap.set("n", "<C-b>", nvim_tree.tree.toggle, { desc = "Alterna Explorador de Arquivos" })

-- Compatibilidade com TMUX
vim.keymap.set({ "n", "i", "v" }, "<Find>", "<Home>")
vim.keymap.set({ "n", "i", "v" }, "<Select>", "<End>")

-- Abrir Telescope
local telescope = require("telescope.builtin")
vim.keymap.set("n", "<C-o>", telescope.find_files, {}) -- Procurar Arquivos
vim.keymap.set("n", "<A-o>", telescope.live_grep, {}) -- Procurar Texto
