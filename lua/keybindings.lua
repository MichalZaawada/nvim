vim.g.mapleader = " "

local keymap = vim.keymap
local is_vscode = vim.g.vscode

-- increment, decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Ex
--keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- dont yank with x
keymap.set('n', 'x', '"_x')

-- moving lines in visual mode

keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- write
keymap.set({'n', 'v'}, '<leader>w', vim.cmd.w)

if not is_vscode then
	keymap.set({'n', 'v'}, '<C-j>', '<C-w>j')
	keymap.set({'n', 'v'}, '<C-k>', '<C-w>k')
	keymap.set({'n', 'v'}, '<C-h>', '<C-w>h')
	keymap.set({'n', 'v'}, '<C-l>', '<C-w>l')
end

