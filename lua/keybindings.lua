vim.g.mapleader = " "

local keymap = vim.keymap

-- increment, decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Ex
keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- moving lines in visual mode
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- coping to system register
keymap.set({"n", "v"}, "<leader>y", [["+y]])
keymap.set("n", "<leader>Y", [["+Y]])

-- save changes
keymap.set({"n", "v"}, "<leader>w", vim.cmd.w)
