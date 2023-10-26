vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require('nvim-tree').setup()

vim.keymap.set({"n", "v"}, "<leader>te", vim.cmd.NvimTreeToggle)
