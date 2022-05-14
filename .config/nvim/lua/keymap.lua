local api = vim.api

api.nvim_set_keymap("", "<Leader>y", "\"+y", { noremap = true })
api.nvim_set_keymap("", "<Leader>p", "\"+p", { noremap = true })

-- api.nvim_set_keymap("n", "<C-n>",     ":NvimTreeToggle<CR>",   { noremap = true })
-- api.nvim_set_keymap("n", "<Leader>r", ":NvimTreeRefresh<CR>",  { noremap = true })
-- api.nvim_set_keymap("n", "<Leader>n", ":NvimTreeFindFile<CR>", { noremap = true })

api.nvim_set_keymap("n", "<Leader>ff", ":Telescope find_files<CR>", { noremap = true })
api.nvim_set_keymap("n", "<Leader>fg", ":Telescope live_grep<CR>",  { noremap = true })
api.nvim_set_keymap("n", "<Leader>fb", ":Telescope buffers<CR>",    { noremap = true })
api.nvim_set_keymap("n", "<Leader>fh", ":Telescope help_tags<CR>",  { noremap = true })
